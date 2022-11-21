"""
Description: 
            1. 
            2.
Author: Gloria Isedu
Date: 18/11/2022
Input: ...
Output: greediest solution

References:
            1. https://www.youtube.com/watch?v=0tVeO4p0uKI
            2. https://www.tutorialspoint.com/design_and_analysis_of_algorithms/design_and_analysis_of_algorithms_01_knapsack.htm
"""
import numpy as np

KNAPSACK_THRESHOLD = 60
NO_OF_ITEMS = 3
VALUE = np.array([100, 280, 120])
WEIGHT = np.array([10, 40, 20])
RATIO = VALUE / WEIGHT


def greedy_selection(weights: np.array, ratio, threshold):
    """
    chooses the final solution by selecting the highest ratio and checking if threshold is reached.
    Args:
        weights: an np array with the weights
        ratio: weights/values
        threshold: the max weight that the knapsack can take
    Returns:
        solution(where if item is added to knapsack, 
                its value at the same index in the solution array is 1 
                else, it is 0)
    """
    # make versions to sort by weight and sort by value
    solution = np.zeros(weights.shape)
    solution_weight = 0
    temp_total = 0

    while temp_total <= threshold:
        solution_weight = temp_total
        highest_ratio_index = np.where(ratio == np.max(ratio))
        most_expensive_weight = weights[highest_ratio_index]
        ratio[highest_ratio_index] = -1

        temp_total += most_expensive_weight

        if temp_total <= threshold:
            solution[highest_ratio_index] = 1
    return solution
        

print(greedy_selection(
                    weights=WEIGHT, ratio=RATIO, 
                    threshold=KNAPSACK_THRESHOLD))
                    