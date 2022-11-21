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
# WEIGHT = np.array([18, 15, 20])
VALUE = np.array([100, 280, 120])
WEIGHT = np.array([10, 40, 20])


def greedy_selection(weights, threshold):
    """
    chooses the final solution by selecting the lowest weights and checking if threshold is reached.
    Args:
        weights: an np array with the weights
        threshold: the max weight that the knapsack can take
    Returns:
        solution(where if item is added to knapsack, 
                its value at the same index in the solution array is 1 
                else, it is 0)
    """
    solution = np.zeros(weights.shape)
    temp_total = 0

    while temp_total <= threshold:
        # solution_price = temp_price
        lowest_weight_index = np.where(weights > 0, weights, np.inf).argmin()
        most_expensive_weight = weights[lowest_weight_index]
        weights[lowest_weight_index] = -1

        # set the most expensive ratio to 0 after youve selected it
        temp_total += most_expensive_weight
        # temp_price += values[highest_ratio_index]

        if temp_total <= threshold:
            solution[lowest_weight_index] = 1
    return solution
        

# print(greedy_selection(
#                     weights=WEIGHT, threshold=KNAPSACK_THRESHOLD))
                    