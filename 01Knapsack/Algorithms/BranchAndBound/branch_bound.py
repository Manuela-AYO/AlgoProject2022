"""
Description: This module is about the branch and bound algorithm of the knapsack problem.
    Knapsack problem is a maximization problem. We want to maximize values in our sack 
    with respect to a certain weight. 
    With this branch and bound algorithm, I'm going to turn it into a minimization problem.
    In other means, we want to minimize the lost of values when selecting items.
    
    With branch and bound, there are 2 things to consider : 
    1. The form of the solution : the solution is a vector v of bits such that for an object at
        the position i, v[i] = 0 if we don't take the object and 1 else
        e.g : if nb_ojects = 4, v = <?,?,?,?>
    2. The evaluation function : it's the bound that helps cut branches. There, our lower bound 
        is the minimum value that we lose after a decision(take or not an object)

Author: Christiane Manuela AYO NDAZO'O

References :
    - Algorithm : https://www.geeksforgeeks.org/0-1-knapsack-using-branch-and-bound/

"""

# some important modules
import numpy as np
import pandas as pd
import os
from pathlib import Path
import sys
from datetime import datetime, timedelta

# external module imports
if not str(Path(__file__).resolve().parent.parent) in sys.path :
    sys.path.insert(0, str(Path(__file__).resolve().parent.parent.parent.parent))
    sys.path.insert(0, str(Path(__file__).resolve().parent.parent.parent))
 
from classes import Set01KnapSack


class BranchBoundKnapsack :
    
    def __init__(self, weights_tab : np.array, values_tab : np.array, sack_weight : int, time : int  = 0) -> None:
        """Initialisation of the knapsack object

        Args:
            weights_tab (np.array): Array of weights of all the items
            values_tab (np.array): Array of values of all the items
            sack_weight (int): Maximum capacity of the knapsack
        """
        self.nb_items_chosen = 0
        self.total_weight = 0
        self.total_value = 0
        self.vector_items = np.zeros(len(weights_tab), dtype=int)
        self.sack_weight = sack_weight
        self.values_tab = values_tab
        self.weights_tab = weights_tab
        self.time = int(time)
        
    # *********************** evaluation function on each node ***************************** #
    def evaluation_function(self, i : int, remaining_weight : int) -> tuple([int,int]):
        """_summary_
            The evaluation function computes on each node the lower bound,
            which is necessary to cut useless branches
            
            This function is actually the sum of two(2) functions :
            - The actual loss : it's the total weight lost from the previous choices to the actual one
                
            - The previsional gain : after a decision(take or not an object), we have consequences. If we take 
            an object, what's the highest value we can have in the sack. And the same if we don't take it
            
            Complexity : O(nlogn) [sort by decreasing values]
            
        Args:
            i (int): Index of the object we are studying
            remaining_weight (int) : remaining place in the sack
            
        Returns :
            tuple(int, int) : (new weight after the decision, 1/0 if we take or not the object)
        """
        # upperbound gain if we take the object
        h = self.values_tab[i]
        
        # upperbound gain if we don't take the object
        g = 0
        
        # copy of the remaining weight
        w_left = remaining_weight
          
        # remaining weight if we take the object  
        w_left_with = w_left - self.weights_tab[i]
            
        if i != len(self.vector_items) - 1: 
            # map values_tab and weights_tab
            map = zip(self.values_tab[i+1:], self.weights_tab[i+1:])
            
            # sort the map by decreasing values 
            tab = sorted(map, key = lambda x : x[0], reverse=True)
            
            # compute the upperbounds
            for item in tab :  
                # what do we gain if we insert the object
                if item[1] <= w_left_with:
                    h += item[0]
                    w_left_with -= item[1]
                # what if we don't take the object
                if item[1] <= w_left:
                    g += item[0]
                    w_left -= item[1]
        
        if h >= g and w_left_with >= 0:
            self.nb_items_chosen += 1
            self.total_weight += self.weights_tab[i]
            self.total_value += self.values_tab[i]
            return remaining_weight-self.weights_tab[i], 1        
        return remaining_weight, 0


    # *********************** branch and bound function *********************** # 
    # @compute_run_time   
    def branch_bound(self) -> tuple([np.array, int, int, int]):
        """_summary_
            The branch and bound function performs the branch and bound algorithm by 
            going through most promising paths to find its best solution

        Returns:
            np.array: the final vector of items with 0 if an item at position i isn't selected and 1 else
            int : number of items chosen
            int : weight of those items
            int : value of those items
            
        Complexity : O(n²logn) [number of the items + sort for each value]
        """
        rm_weight = self.sack_weight
        # iterate on the vector
        
        if self.time != 0:
            start_time = datetime.now()
            iteration_time = timedelta(milliseconds=int(self.time))
            end_time = start_time + iteration_time
            
        for i in range(len(self.vector_items)):
            # what if we don't take the object
            rm_weight, self.vector_items[i] = self.evaluation_function(i, rm_weight)
            current_time = datetime.now()
            if self.time != 0 and current_time > end_time:
                break
           
        # final vector
        return self.vector_items, self.nb_items_chosen, self.total_weight, self.total_value
 

if __name__ == '__main__':
    # import Set01KnapSack object 
    knapsack = Set01KnapSack()
    
    type = input("Which type of file is it(t for text, c for csv) ? ")
    path = input("Path to the file[e.g : my_file.csv] : ")
    
    # read the csv file and collect the data
    nb_items, sack_weight, items_value, df = knapsack.uploadFile(path, type)
    
    # create the weights, values array and the vector
    weights_tab = np.array(df["W"])
    values_tab = np.array(df["V"])
    
    # apply the branch and bound algorithm
    obj = BranchBoundKnapsack(weights_tab, values_tab, sack_weight)
    
    v, nb_items_chosen, total_weight, total_value = obj.branch_bound()
    
    print(f"Nb total items = {nb_items}\n")
    print(f"TMax weight : {sack_weight}\n")
    print(f"Vector = {v}\n")
    print(f"Nb items = {nb_items_chosen}\n")
    print(f"Total weight = {total_weight}\n")
    print(f"Total value = {total_value}\n")
    
