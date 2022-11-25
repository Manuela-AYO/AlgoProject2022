"""
Author: Chadapohn Chaosrikul
"""

import numpy as np
    
def tracing_dynamic_programming_solution(item: int, sum_of_weights: int, weights: np.array, memoization: np.array, item_vector: np.array) -> np.array:
    if item == 0:
        return item_vector
    if memoization[item, sum_of_weights] > memoization[item-1, sum_of_weights]:
        item_vector[item-1] = 1
        tracing_dynamic_programming_solution(item-1, sum_of_weights-weights[item-1], weights, memoization, item_vector)
        return item_vector 
    else:
        tracing_dynamic_programming_solution(item-1, sum_of_weights, weights, memoization, item_vector)
        return item_vector