"""
Description:
    This module traces the items taken by the optimal solution. The idea is to take the item that 
    provides the greater profilt. 

Author: Chadapohn Chaosrikul

Reference:
    1. Tracing the actual subset of items: https://en.wikipedia.org/wiki/Knapsack_problem#0-1_knapsack_problem

Update: 
    1. By Landry:
        - Increased the number of recursion allowed. Be careful ! It can be dangerous, according to stack overflow. I think i can create RAM issues. For the moment everything work well.
"""

import numpy as np
import sys

# increase number of possible recursivity call for 10,000 input data.
sys.setrecursionlimit(10000 + 1) 
    
def tracing_dynamic_programming_solution(item: int, sum_of_weights: int, weights: np.array, memoization: np.array, item_vector: np.array) -> np.array:
    """
    Description:
        This method tracing the items that are taken from the optimal solution. Given a sub-solution table,
        the method returns: the vector contains 0 and 1:
            - 0 indicates that the item is not included
            - 1 indicates that the item is included.

    Args:
        item (int): the current item that is considering.
        sum_of_weights (int): the current sum of weights.
        weights (np.array): the array of item weights.
        memoization (np.array) the array of item values.
        item_vector (np.array): the vector mentioned in the description of the method. Initialization to 0.

    Returns: 
        item_vector (np.array): the vector mentioned above.

    Complexity: O(n+1)

    """

    # The base case when reaching item 0
    if item == 0:
        return item_vector

    # When the value of the current item greater than the value of item above
    if memoization[item, int(sum_of_weights)] > memoization[item-1, int(sum_of_weights)]:
        # Take the current item as it provides the greater benefit
        item_vector[item-1] = 1

        # Trace the above item at the sum of weights that subtract the current item
        tracing_dynamic_programming_solution(item-1, sum_of_weights-weights[item-1], weights, memoization, item_vector)
        
        return item_vector 
    
    else:
        if (memoization[item, int(sum_of_weights)] < memoization[item-1, int(sum_of_weights)]):
            print("ERROR: Knapsack value decrease when reaching more items, dynamic programming table may has some issues.")
        
        # Trace the above item
        tracing_dynamic_programming_solution(item-1, sum_of_weights, weights, memoization, item_vector)
        
        return item_vector

    


 