"""
Author: Chadapohn CHAOSRIKUL
"""

# Import Python Modules
import numpy as np
import sys, os

# Set directory paths for external modules
current_dir = os.path.dirname(__file__)
helper_dir = os.path.join(current_dir,'..', '..', 'classes')
root_dir = os.path.join(current_dir,'..', '..', '..')
sys.path.append(helper_dir)
sys.path.append(root_dir)
print(sys.path)

# Import external modules
from classes import Set01KnapSack
from external import compute_run_time

def tracing_dynamic_programming_solution(item: int, sum_of_weights: int, weights: np.array, memoization: np.array, subset_indices: list=[]) -> list:
    if item == 0:
        return subset_indices
    if memoization[item, sum_of_weights] > memoization[item-1, sum_of_weights]:
        subset_indices.append(item-1)
        tracing_dynamic_programming_solution(item-1, sum_of_weights-weights[item-1], weights, memoization, subset_indices)
        return subset_indices 
    else:
        tracing_dynamic_programming_solution(item-1, sum_of_weights, weights, memoization, subset_indices)
        return subset_indices

def top_down_memoization(item: int, sum_of_weights: int, weights: np.array, values: np.array, memoization: np.array) -> tuple([int, np.array]):
    if item == 0 or sum_of_weights <= 0:
        memoization[item, sum_of_weights] = 0
        return memoization[item, sum_of_weights], memoization
    
    if memoization[item-1, sum_of_weights] == -1:
        value, memoization = top_down_memoization(item-1, sum_of_weights, weights, values, memoization)
        memoization[item-1, sum_of_weights] = value

    if weights[item-1] > sum_of_weights:
        memoization[item, sum_of_weights] = memoization[item-1, sum_of_weights]
    else:
        if memoization[item-1, sum_of_weights-weights[item-1]] == -1:
            value, memoization = top_down_memoization(item-1, sum_of_weights-weights[item-1], weights, values, memoization)
            memoization[item-1, sum_of_weights-weights[item-1]] = value
        
        value_excluding_the_new_weight = memoization[item-1, sum_of_weights]
        value_including_the_new_weight = memoization[item-1, sum_of_weights-weights[item-1]] + values[item-1]
        memoization[item, sum_of_weights] = max(value_excluding_the_new_weight, value_including_the_new_weight)
    return memoization[item, sum_of_weights], memoization

@compute_run_time
def top_down_approach(maximum_weight: int, weights: np.array, values: np.array) -> tuple:
    num_items = len(weights)
    memoization = -1*np.ones((num_items+1, maximum_weight+1))
    maximum_value, memoization = top_down_memoization(num_items, maximum_weight, weights, values, memoization)
    subset_indices = tracing_dynamic_programming_solution(num_items, maximum_weight, weights, memoization)
    occupied_weight = sum(weights[i] for i in subset_indices)
    return maximum_value, occupied_weight, subset_indices, memoization

def bottom_up_tabularization(num_items: int, maximum_weight: int, weights: np.array, values: np.array, tabularization: np.array) -> tuple([int, np.array]):
    for item in range(num_items+1): 
        for sum_of_weights in range(maximum_weight+1): 
            if item == 0 or maximum_weight == 0: 
                tabularization[item][sum_of_weights] = 0
            elif weights[item-1] <= sum_of_weights:
                value_excluding_the_new_weight = tabularization[item-1][sum_of_weights]
                value_including_the_new_weight = values[item-1] + tabularization[item-1, sum_of_weights-weights[item-1]]
                tabularization[item][sum_of_weights] = max(value_excluding_the_new_weight, value_including_the_new_weight)
            elif weights[item-1] > sum_of_weights: 
                tabularization[item][sum_of_weights] = tabularization[item-1][sum_of_weights]            
    maximum_value = tabularization[num_items][maximum_weight]
    return maximum_value, tabularization

@compute_run_time
def bottom_up_approach(maximum_weight: int, weights: np.array, values: np.array) -> tuple:
    num_items = len(weights)
    tabularization = np.zeros((num_items+1, maximum_weight+1))
    maximum_value, tabularization = bottom_up_tabularization(num_items, maximum_weight, weights, values, tabularization)
    subset_indices = tracing_dynamic_programming_solution(num_items, maximum_weight, weights, tabularization)
    occupied_weight = sum(weights[i] for i in subset_indices)
    return maximum_value, occupied_weight, subset_indices, tabularization

if __name__ == '__main__':
    csv_file = "0_1_kp_REF_10_100_221016.csv"
    knapsackInstance = Set01KnapSack()
    knapsackInstance.uploadFile(csv_file)
    # maximum_weight = knapsackInstance.wmax
    # weights = knapsackInstance.data.W.to_numpy()
    # values = knapsackInstance.data.V.to_numpy()

    # print(maximum_weight)
    # print(weights)
    # print(values)

    # values = np.array([1, 2, 10])
    # weights = np.array([3, 4, 7])
    # maximum_weight = 10
    # result = bottom_up_approach(maximum_weight, weights, values)
    # maximum_value, occupied_weight, subset_indices, memoization = result[0]
    # benchmark_time = result[1]
    # print(subset_indices)





