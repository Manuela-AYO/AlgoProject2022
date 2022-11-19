"""
Author: Chadapohn Chaosrikul
"""

# Import Python Modules
import numpy as np
import sys, os
from pathlib import Path

#  Set directory paths for external modules
if not str(Path(__file__).resolve().parent.parent) in sys.path :
    sys.path.insert(0, str(Path(__file__).resolve().parent.parent.parent.parent))
    sys.path.insert(0, str(Path(__file__).resolve().parent.parent.parent))

# Import external modules
# A module for tracing Dynamic Programming's solution
from helper import tracing_dynamic_programming_solution
# A module for retrieving 0/1 Knapsack instance
from classes import Set01KnapSack
# A module for timing
from external import compute_run_time

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
def top_down_approach(num_items: int, maximum_weight: int, weights: np.array, values: np.array) -> tuple:
    memoization = -1*np.ones((num_items+1, maximum_weight+1))
    maximum_value, memoization = top_down_memoization(num_items, maximum_weight, weights, values, memoization)
    subset_indices = tracing_dynamic_programming_solution(num_items, maximum_weight, weights, memoization)
    num_items_choosen = len(subset_indices)
    occupied_weight = sum(weights[i] for i in subset_indices)
    return maximum_value, num_items_choosen, occupied_weight, memoization

if __name__ == '__main__':
    # The prompt 
    input_type = input("Please input the extension of the file [type 'c' for .csv and 't' for .txt]: ")
    input_path = input('Please input the path of the test file [for instance, dir/test.csv]: ')

    # Manage the input path  
    path = input_path.split('/')
    path = os.path.join(*path)
    
    # Retrieve 0/1 Knapsack instance from a file
    knapsackInstance = Set01KnapSack()
    num_items, maximum_weight, sum_values, data = knapsackInstance.uploadFile(path, input_type)

    # Retrieve the arrays of weights and values
    weights = data['W'].to_numpy()
    values = data['V'].to_numpy()

    # Apply the top-down approach
    result = top_down_approach(num_items, maximum_weight, weights, values)

    # Retrieve output and benchmarking time
    maximum_value, num_items_choosen, occupied_weight, memoization = result[0]
    benchmarking_time = result[1]

    # Create an output table
    text = f"Top-down approach, Dynamic Programming \t\t\t{num_items}\t\t \t\t\t\t{maximum_weight}\t \t\t\t\t{sum_values}\t\t \t\t\t\t{num_items_choosen}\t\t \t\t\t{occupied_weight}\t \t\t{maximum_value}\t\t \t\t\t{benchmarking_time}"
    knapsackInstance.writeOutput(text) 
