"""
Author: Chadapohn Chaosrikul
Update: Landry --> Change the timing stop, it also return the curent calculate item. The recusivity part, inside helper.py will begin to this item instead of begining at the end.
"""
# Import Python Modules
import numpy as np
import datetime
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

def bottom_up_tabularization(num_items: int, maximum_weight: int, weights: np.array, values: np.array, tabularization: np.array, given_time: int, end_time: int) -> tuple([np.array, int]):
    for item in range(num_items+1): 
        for sum_of_weights in range(maximum_weight+1): 
            if item == 0 or maximum_weight == 0: 
                tabularization[item][sum_of_weights] = 0
            elif weights[item-1] <= sum_of_weights:
                value_excluding_the_new_weight = tabularization[item-1][sum_of_weights]
                value_including_the_new_weight = values[item-1] + tabularization[item-1, int(sum_of_weights-weights[item-1])]
                tabularization[item][sum_of_weights] = max(value_excluding_the_new_weight, value_including_the_new_weight)
            elif weights[item-1] > sum_of_weights: 
                tabularization[item][sum_of_weights] = tabularization[item-1][sum_of_weights]  
          
        # Timing stop module
        current_time = datetime.datetime.now()
        # If there is a time limit given
        if given_time != 0:    
            if current_time >= end_time:
                return tabularization, item
          
    return tabularization, num_items


def bottom_up_approach(set01 : Set01KnapSack, given_time: int = 0) -> tuple:
    # ----- update for timing module -------- #
    weights = set01.data.W
    values = set01.data.V
    num_items = set01.n
    maximum_weight = set01.wmax
    # ---------------------------


    # Initialization
    start_time = datetime.datetime.now()
    delta = datetime.timedelta(minutes=given_time)
    end_time = start_time + delta
    tabularization = np.zeros((num_items+1, maximum_weight+1))
    print("Finish Running Initialization")
    # Algorithm
    tabularization, item_calculated_at_stop_time = bottom_up_tabularization(num_items, maximum_weight, weights, values, tabularization, given_time, end_time)
    print("Finish Running Algorithm")
    item_vector = np.zeros((num_items))
    # Conclusion
    item_vector = tracing_dynamic_programming_solution(item_calculated_at_stop_time, maximum_weight, weights, tabularization, item_vector)
    num_items_choosen = sum(item_vector)
    occupied_weight = sum(weights[i] if item_vector[i]==1 else 0 for i in range(len(item_vector)))
    solution_value = sum(values[i] if item_vector[i]==1 else 0 for i in range(len(item_vector)))
    print("Finish Finding Conclusion")
    print(f'Solution Value = {solution_value}')
    print(f'Number of Items Choosen: {num_items_choosen}')
    # current_time = datetime.datetime.now()
    # print('Extra running time after stop', current_time - end_time)
    return item_vector, num_items_choosen, solution_value, occupied_weight

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

    # Apply the bottom-up approach
    result = bottom_up_approach(num_items, maximum_weight, weights, values, given_time)

    # Retrieve output and benchmarking time
    item_vector, solution_value, occupied_weight, num_items_choosen = result[0]
    benchmarking_time = result[1]

    # Create an output table
    text = f"Bottom-up approach, Dynamic Programming \t\t\t{num_items}\t\t \t\t\t\t{maximum_weight}\t \t\t\t\t{sum_values}\t\t \t\t\t\t{num_items_choosen}\t\t \t\t\t{occupied_weight}\t \t\t{solution_value}\t\t \t\t\t{benchmarking_time}"
    knapsackInstance.writeOutput(text) 


