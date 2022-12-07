"""
    Description: This module is about the dynamic programming algorithm for the 0/1 multiple
    knapsack problem.
    0/1 multiple knapsack problem is the generalization of multiple knapsack problem.
    We want to maximize the values in the sacks with respect to the weight of each sack.
    
    So for each sack, we're performing bottom-up dynamic programming in the following way : 
        - we firstly take one sack
        - we apply dynamic programming to see the values that enter there
        - then, for the objects that have not been selected, we apply dynamic programming on the 
            other sack

    Author: Christiane Manuela AYO NDAZO'O

    References :
        - Idea : https://en.wikipedia.org/wiki/List_of_knapsack_problems
"""

import numpy as np
from datetime import datetime, timedelta

from classes import SetMultipleKnapSack

def bottom_up_approach(setMult : SetMultipleKnapSack, time_min : int = 0):
    return DPMultSack(setMult.nsack, setMult.data.W, setMult.data.V, setMult.wmax, time_min).bottom_multiple_knapsack()

# ************** Perform bottom-up dynamic approach on a sack ************
class DPMultSack:
    def __init__(self, number_sack : int, weights_tab : np.array, values_tab : np.array, list_sack_weight : list, time : int = 0) -> None:
        self.values_tab = values_tab
        self.weights_tab = weights_tab
        self.number_sack = number_sack
        self.nb_items_chosen = 0
        self.total_weight = 0
        self.total_value = 0 
        self.vector_items = np.zeros(len(weights_tab), dtype=int)
        self.sack_weights = np.zeros(number_sack, dtype=int)    # array of items weights

        for i in range(len(list_sack_weight)):
            self.sack_weights[i] = list_sack_weight[i]
    
        self.time = int(time)
    
    def bottom_up(self, index_sack : int, items_indexes : list) -> list:
        """Perform bottom-up dynamic programming

        Args:
            index_sack (int): index of the sack on which we perform dynamic programming
            items_indexes (list) : contain the indexes of the objects to study
            
        Returns: 
            (list) Return the list of indexes of the items that have not been selected
        """
        
        # create and initialize the array of optimal value for a set of items
        m = np.zeros((len(items_indexes)+1, self.sack_weights[index_sack]+1), dtype=int)
        
        # array to read the best solution : to read the solution, 0 = up, 1 = diagonal
        s = np.zeros((len(items_indexes)+1, self.sack_weights[index_sack]+1), dtype=int)
        
        # perform bottom-up dynamic programming
        for i in range(1, len(items_indexes) + 1) : 
            weight = self.weights_tab[items_indexes[i-1]]  # get the weight of the object we are studying
            value = self.values_tab[items_indexes[i-1]]   # get the value of the object we're studying
            for j in range(1,self.sack_weights[index_sack] + 1):
                # take or not the object
                if weight > j:
                    m[i,j] = m[i-1, j]
                else :
                    m[i,j] = max(m[i-1,j], value + m[i-1, j-weight])
                    if m[i-1,j] < value + m[i-1, j-weight]:
                        s[i,j] = 1
                        
        # build the vector of solution
        i = len(items_indexes)
        j = self.sack_weights[index_sack]
        list_taken = []
        while i != 0 and j != 0:
            if s[i,j] == 1:
                # get the index of the element in items_indexes array
                item = items_indexes[i-1]
                
                # update the value of the item in the vector of solution
                self.vector_items[item] = index_sack + 1
                
                # update the number of items chosen
                self.nb_items_chosen += 1
                
                # update the values and weights tab 
                self.total_value += self.values_tab[items_indexes[i-1]]
                self.total_weight += self.weights_tab[items_indexes[i-1]]
                
                # keep the item index on a list, that will help for returning the objects that 
                # have not been selected
                list_taken.append(items_indexes[i-1])
                
                # update the value of j
                j = j-self.weights_tab[items_indexes[i-1]]
            i = i-1
            
        list_remaining = [item for item in items_indexes if not(item in list_taken)]
    
        return list_remaining
                
    
    # **************** Perform multiple knapsack *******************
    def bottom_multiple_knapsack(self) -> tuple([np.array, int, int, int]):
        """Perform bottom-up approach on all the sacks
        
            Returns:
                tuple: the vector of items, the number of items chosen, total weight and total value
                
            Complexity : O(n²Wmax) with Wmax the highest knapsack capacity
        """
        
        untaken = [i for i in range(len(self.weights_tab))]
        
        # get the item into consideration
        if self.time != 0:
            start_time = datetime.now()
            iteration_time = timedelta(milliseconds=int(self.time))
            end_time = start_time + iteration_time
            
        # for each of the sack, perform bottom-up approach
        for i in range(self.number_sack) : 
            untaken = self.bottom_up(i, untaken)
            if len(untaken) == 0:
                break
            if self.time != 0:
                if datetime.now() >= end_time:
                    break
            
        return self.vector_items, self.nb_items_chosen, self.total_value, self.total_weight
            
        
    
    
if __name__ == '__main__':
    # Retrieve the arrays of weights and values
    weights = [23,31,29,44,53,38,63,85,89,82]
    values = [92,57,49,68,60,43,67,84,87,72]
    
    knap = DPMultSack(2, weights, values, 70, 0, 127)

    begin = datetime.now()
    # Apply the bottom-up approach
    untaken = knap.bottom_multiple_knapsack()
    end = datetime.now()
    
    print(f"Time taken = {end-begin}\n")
    
    print(f"Untaken : {untaken}\n")
    print(f"Solution = {knap.vector_items}")
    print(f"Items choosen : {knap.nb_items_chosen} Values : {knap.total_value} Weights : {knap.total_weight}\n")
