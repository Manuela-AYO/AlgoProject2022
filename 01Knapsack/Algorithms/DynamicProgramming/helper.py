"""
Author: Chadapohn Chaosrikul
"""

import numpy as np
    
def tracing_dynamic_programming_solution(item: int, sum_of_weights: int, weights: np.array, memoization: np.array, subset_indices: list) -> list:
    if item == 0:
        return subset_indices
    if memoization[item, sum_of_weights] > memoization[item-1, sum_of_weights]:
        subset_indices.append(item-1)
        tracing_dynamic_programming_solution(item-1, sum_of_weights-weights[item-1], weights, memoization, subset_indices)
        return subset_indices 
    else:
        tracing_dynamic_programming_solution(item-1, sum_of_weights, weights, memoization, subset_indices)
        return subset_indices