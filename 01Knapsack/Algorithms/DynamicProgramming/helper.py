"""
Author: Chadapohn Chaosrikul
Update: Landry --> Increased the number of recursion allowed. Be careful ! It can be dangerous, according to stack overflow. I think i can create RAM issues. For the moment everything work well
"""

import numpy as np
import sys

# increase number of possible recursivity call for 10,000 input data.
sys.setrecursionlimit(10000 + 1) 
    
def tracing_dynamic_programming_solution(item: int, sum_of_weights: int, weights: np.array, memoization: np.array, item_vector: np.array) -> np.array:
    if item == 0:
        return item_vector
    if memoization[item, int(sum_of_weights)] > memoization[item-1, int(sum_of_weights)]:
        item_vector[item-1] = 1
        tracing_dynamic_programming_solution(item-1, sum_of_weights-weights[item-1], weights, memoization, item_vector)
        return item_vector 
    else:
        if (memoization[item, int(sum_of_weights)] < memoization[item-1, int(sum_of_weights)]):
            print("ERROR: Knapsack value decrease when reaching more items, dynamic programming table may has some issues.")
        tracing_dynamic_programming_solution(item-1, sum_of_weights, weights, memoization, item_vector)
        return item_vector


 