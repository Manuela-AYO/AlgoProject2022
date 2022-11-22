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
    - Time a function : https://dev.to/s9k96/calculating-run-time-of-a-function-using-python-decorators-148o

"""

# some important modules
import numpy as np
import pandas as pd
import os
from pathlib import Path
import sys

# external module imports
if not str(Path(__file__).resolve().parent.parent) in sys.path :
    sys.path.insert(0, str(Path(__file__).resolve().parent.parent.parent.parent))
    sys.path.insert(0, str(Path(__file__).resolve().parent.parent.parent))
 
from classes import Set01KnapSack
from external import compute_run_time


class BranchBoundKnapsack :
    
    def __init__(self, weights_tab : np.array, values_tab : np.array, sack_weight : int) -> None:
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
        
    # *********************** evaluation function on each node ***************************** #
    def evaluation_function(self, i : int) -> float:
        """_summary_
            The evaluation function computes on each node the lower bound,
            which is necessary to cut useless branches
            
            This function is actually the sum of two(2) functions :
            - The actual loss : that simply means that : for an object in the position i, 
                we decide either to take it(v[i]=1) or not(v[i]=0). If we don't take it the actual lost
                just summarizes all the values of the objects we took before and add
                the value of the object i with respect to the weight
                
            - The previsional loss : after a decision(take or not an object), we have consequences. If we take 
            an object, as it has a weight, we'll reduce the weight available(w) in the knapsack. So, the 
            previsional loss will just return the values I lose if I put the object with respect to the weight. 
            
            Complexity : O(nlogn) [sort over the decreasing values]
            
        Args:
            i (int): Index of the object we are studying
            weights_tab (np.array): array containing the weights of all the objects
            values_tab (np.array): array containing the values of all the objects
            v (np.array): vector of bits(0/1) representing the objects in the knapsack. 
                0 => object is not taken
                1 => object is taken
            w : maximum weight of the knapsack
        """
        
        # actual lost on the node
        g = 0
        
        # previsional lost over the sack after our decision
        h = 0
        
        # copy of the max weight
        w_left = self.sack_weight
        
        # compute the actual loss
        for l in range(0,i+1):
            g += (1-self.vector_items[l]) * self.values_tab[l]
            w_left -= self.vector_items[l] * self.weights_tab[l]
            if w_left < 0:
                g = pow(10,10)
                break
            
        if i != len(self.vector_items) - 1: 
            # weight before the decision on i
            w2 = w_left + i*self.weights_tab[i]
            
            # map values_tab and weights_tab
            map = zip(self.values_tab[i+1:], self.weights_tab[i+1:])
            
            # sort the map by decreasing values 
            tab = sorted(map, key = lambda x : x[0], reverse=True)
            
            # compute the previsional loss
            # this loop simply gives the lower bound of the maximum value we loose
            for item in tab : 
                # we only take the objects which can no longer be inserted in the sack after 
                # the insertion of item i
                if w2 - item[1] >= 0 and item[1] > w_left:
                    h += item[0]
                    w2 -= item[1]
                
        return g+h


    # *********************** branch and bound function *********************** # 
    @compute_run_time   
    def branch_bound(self) -> tuple([np.array, int, int, int]):
        """_summary_
            The branch and bound function performs the branch and bound algorithm by 
            going through most promising paths to find its best solution

        Args:
            weights_tab (np.array): Array containing the weight of each item
            values_tab (np.array): Array containing the value of each item
            max_weight (int): Weight of the bag

        Returns:
            np.array: the final vector of items with 0 if an item at position i isn't selected and 1 else
            int : number of items choses
            int : weight of those items
            int : value of those items
            
        Complexity : O(n) [number of the items]
        """
        # iterate on the vector
        for i in range(len(self.vector_items)):
            # what if we don't take the object
            self.vector_items[i] = 0
            ev1 = self.evaluation_function(i)
            # what if we take the object
            self.vector_items[i] = 1
            ev2 = self.evaluation_function(i)
            
            # choose of the least loss value
            if ev1 < ev2:
                self.vector_items[i] = 0
            else :
                self.vector_items[i] = 1
                self.nb_items_chosen += 1
                self.total_weight += self.weights_tab[i]
                self.total_value += self.values_tab[i]
        
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
    solution = obj.branch_bound()
    v, nb_items_chosen, total_weight, total_value = solution[0]
    time_taken = solution[1]
    
    # write the result in the output filec
    # text = f"Branch and bound \t\t\t{nb_items}\t\t \t\t\t\t{sack_weight}\t \t\t\t\t{items_value}\t\t \t\t\t\t{nb_items_chosen}\t\t \t\t\t{total_weight}\t \t\t{total_value}\t\t \t\t\t{time_taken}"
    # knapsack.writeOutput(text) 
    



# ******************************** To propose to Proton : signal
"""
import signal

def signal_handler(signum, frame):
    print("Time Ouuuuuut!!!!")
    raise Exception("Timed out!") 

signal.signal(signal.SIGALRM, signal_handler)
    signal.setitimer(signal.ITIMER_REAL,0.000070)
    
try:
        solution = branch_bound(weights_tab, values_tab, sack_weight)
        print("ok")
    except Exception:
        print("Timed out!")
"""
