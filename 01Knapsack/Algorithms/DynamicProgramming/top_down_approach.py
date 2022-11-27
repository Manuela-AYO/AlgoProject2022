"""
Author: Chadapohn Chaosrikul
"""

# Import Python Modules
import numpy as np
import sys, os
from pathlib import Path
import datetime

# increase number of possible recursivity call for 10,000 input data.
sys.setrecursionlimit(10000 + 1) 

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

def top_down_memoization(item: int, sum_of_weights: int, weights: np.array, values: np.array, memoization: np.array, given_time: int, end_time: int) -> tuple([int, np.array]):    
    current_time = datetime.datetime.now()
    print(item, sum_of_weights, current_time, end_time)
    if given_time != 0:    
        if current_time >= end_time:
            print("Running time is out, but it will take extra time for returning the base case of this stop")
            return memoization[item, sum_of_weights], memoization, item

    if item == 0 or sum_of_weights <= 0:
        memoization[item, sum_of_weights] = 0
        return memoization[item, sum_of_weights], memoization, item
    
    if memoization[item-1, sum_of_weights] == -1:
        value, memoization, item_calculated_at_stop_time = top_down_memoization(item-1, sum_of_weights, weights, values, memoization, given_time, end_time)
        memoization[item-1, sum_of_weights] = value

    if weights[item-1] > sum_of_weights:
        memoization[item, sum_of_weights] = memoization[item-1, sum_of_weights]
    else:
        if memoization[item-1, sum_of_weights-weights[item-1]] == -1:
            value, memoization, item_calculated_at_stop_time = top_down_memoization(item-1, sum_of_weights-weights[item-1], weights, values, memoization, given_time, end_time)
            memoization[item-1, sum_of_weights-weights[item-1]] = value
        
        value_excluding_the_new_weight = memoization[item-1, sum_of_weights]
        value_including_the_new_weight = memoization[item-1, sum_of_weights-weights[item-1]] + values[item-1]
        memoization[item, sum_of_weights] = max(value_excluding_the_new_weight, value_including_the_new_weight)
    
    return memoization[item, sum_of_weights], memoization, item

@compute_run_time
def top_down_approach(num_items: int, maximum_weight: int, weights: np.array, values: np.array, given_time: int) -> tuple:
    start_time = datetime.datetime.now()
    delta = datetime.timedelta(minutes=given_time)
    end_time = start_time + delta
    memoization = -1*np.ones((num_items+1, maximum_weight+1))
    print("Finish Running Initialization")

    maximum_value, memoization, item_calculated_at_stop_time = top_down_memoization(num_items, maximum_weight, weights, values, memoization, given_time, end_time)
    print(f"Item calculated at stop time: {item_calculated_at_stop_time}")
    print("Finish Running Algorithm")

    item_vector = np.zeros((num_items))
    item_vector = tracing_dynamic_programming_solution(item_calculated_at_stop_time, maximum_weight, weights, memoization, item_vector)
    num_items_choosen = sum(item_vector)
    occupied_weight = sum(weights[i] if item_vector[i]==1 else 0 for i in range(len(item_vector)))
    solution_value = sum(values[i] if item_vector[i]==1 else 0 for i in range(len(item_vector)))
    print("Finish Finding Conclusion")
    print(f'Solution Value = {solution_value}')
    print(f'Number of Items Choosen: {num_items_choosen}')
    return item_vector, solution_value, occupied_weight, num_items_choosen

if __name__ == '__main__':
    # The prompt 
    input_type = input("Please input the extension of the file [type 'c' for .csv and 't' for .txt]: ")
    input_path = input('Please input the path of the test file [for instance, dir/test.csv]: ')
    given_time = input('What would be the given time in minute for the benchmarking of quality solution [type 0 if you want to benchmark running time]: ')

    given_time = int(given_time)

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
    result = top_down_approach(num_items, maximum_weight, weights, values, given_time)

    # Retrieve output and benchmarking time
    item_vector, solution_value, occupied_weight, num_items_choosen = result[0]
    benchmarking_time = result[1]

    # Create an output table
    text = f"Top-down approach, Dynamic Programming \t\t\t{num_items}\t\t \t\t\t\t{maximum_weight}\t \t\t\t\t{sum_values}\t\t \t\t\t\t{num_items_choosen}\t\t \t\t\t{occupied_weight}\t \t\t{solution_value}\t\t \t\t\t{benchmarking_time}"
    knapsackInstance.writeOutput(text) 
