"""
Author: Chadapohn Chaosrikul
Reference: https://www.geeksforgeeks.org/0-1-knapsack-problem-dp-10/
Updated by Landry: Formalized input and output
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

def top_down_memoization(i_: int, j_: int, weights: np.array, values: np.array, table: np.array, given_time: int, end_time: int) -> tuple([int, np.array]):    
    # ----- resolve type bug ---- #
    i = int(i_)
    j = int(j_)
    # --------------------------- #
    current_time = datetime.datetime.now()
    if given_time != 0:    
        if current_time >= end_time:
            print("Running time is out, but it will take extra time for returning the base case of this stop")
            return table[i, j], table, i
        
    if i == 0 or j == 0:
        table[i, j] = 0
        return table[i, j], table, i
    
    if table[i][j] != -1:
        return table[i, j], table, i

    if weights[i-1] <= j:
        value, table, item_calculated_at_stop_time = top_down_memoization(i-1, j-weights[i-1], weights, values, table, given_time, end_time)
        value_including_the_new_weight = values[i-1] + value
        value_excluding_the_new_weight, table, item_calculated_at_stop_time = top_down_memoization(i-1, j, weights, values, table, given_time, end_time)
        table[i, j] = max(value_including_the_new_weight, value_excluding_the_new_weight)
        return table[i, j], table, i
    
    elif weights[i-1] > j:
        value, table, item_calculated_at_stop_time = top_down_memoization(i-1, j, weights, values, table, given_time, end_time)
        table[i, j] = value
        return table[i, j], table, i

def top_down_approach(set01 : Set01KnapSack, given_time: int = 0) -> tuple:
    # ----- update for timing module -------- #
    weights = set01.data.W
    values = set01.data.V
    num_items = set01.n
    maximum_weight = set01.wmax
    # ---------------------------

    start_time = datetime.datetime.now()
    delta = datetime.timedelta(milliseconds=given_time)
    end_time = start_time + delta
    memoization = -1*np.ones((num_items+1, maximum_weight+1))
    print("Finish Running Initialization")

    maximum_value, memoization, item_calculated_at_stop_time = top_down_memoization(num_items, maximum_weight, weights, values, memoization, given_time, end_time)
    print(f"Maximum Value = {maximum_value}")
    print(f"Item calculated at stop time: {item_calculated_at_stop_time}")
    print("Finish Running Algorithm")

    item_vector = np.zeros((num_items))
    item_vector = tracing_dynamic_programming_solution(item_calculated_at_stop_time, maximum_weight, weights, memoization, item_vector)
    num_items_choosen = sum(item_vector)
    occupied_weight = sum(weights[i] if item_vector[i]==1 else 0 for i in range(len(item_vector)))
    print("Finish Finding Conclusion")
    print(f'Solution Value = {maximum_value}')
    print(f'Number of Items Choosen = {num_items_choosen}')
    print(f'Occupied Weight = {occupied_weight}')
    print(f'Knapsack Capacity = {maximum_weight}')
    # print(memoization)
    # print(item_vector)
    return item_vector, num_items_choosen, maximum_value, occupied_weight

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
    item_vector, num_items_choosen, solution_value, occupied_weight = top_down_approach(knapsackInstance, given_time)

    # Create an output table
    text = f"Top-down approach, Dynamic Programming \t\t\t{num_items}\t\t \t\t\t\t{maximum_weight}\t \t\t\t\t{sum_values}\t\t \t\t\t\t{num_items_choosen}\t\t \t\t\t{occupied_weight}\t \t\t{solution_value}\t\t"
    knapsackInstance.writeOutput(text) 
