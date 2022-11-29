"""
Description: The class refers to the 0/1 knapsack problem solved with a greedy algorithim based on the highest weight.

Author: Gloria Isedu
update Landry : just formalized input and output
Date: 18/11/2022
Input: weights, values, knapsack size, 
Output: greediest solution bu ratio

References:
            1. https://www.youtube.com/watch?v=0tVeO4p0uKI
            2. https://www.tutorialspoint.com/design_and_analysis_of_algorithms/design_and_analysis_of_algorithms_01_knapsack.htm
"""
import numpy as np
import datetime as dt

import os
from pathlib import Path
import sys

# external module imports
if not str(Path(__file__).resolve().parent.parent) in sys.path :
    sys.path.insert(0, str(Path(__file__).resolve().parent.parent.parent.parent))
    sys.path.insert(0, str(Path(__file__).resolve().parent.parent.parent))
 
from classes import Set01KnapSack

KNAPSACK_THRESHOLD = 60
NO_OF_ITEMS = 3
VALUE = np.array([100, 280, 120])
WEIGHT = np.array([10, 40, 20])


def greedy_weight_selection(set01 : Set01KnapSack, maximum_time = 0):
    # ----- update for timing module -------- #
    weights = set01.data.W.to_numpy()
    values = set01.data.V.to_numpy()
    threshold = set01.wmax
    # ---------------------------

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
    temp_weight = weights.copy()

    start_time = dt.datetime.now()
    iteration_time = dt.timedelta(minutes=int(maximum_time))
    end_time = start_time + iteration_time

    while temp_total <= threshold:
        lowest_weight_index = np.where(temp_weight > 0, temp_weight, np.inf).argmin()
        most_expensive_weight = weights[lowest_weight_index]
        temp_weight[lowest_weight_index] = -1

        temp_total += most_expensive_weight

        if temp_total <= threshold:
            solution[lowest_weight_index] = 1

        current_time = dt.datetime.now()
        if (maximum_time != 0) and (current_time > end_time):
            break

    no_of_things_in_knapsack = sum(solution)
    total_value = sum(solution * values)
    total_weight = sum(solution * weights)
    return solution, no_of_things_in_knapsack, total_value, total_weight
  

if __name__ == '__main__':
    # import Set01KnapSack object 
    knapsack = Set01KnapSack()
    
    type = input("Which type of file is it(t for text, c for csv) ? ")
    path = input("Path to the file[e.g : file/my_file.csv] : ")
    time = int(input("How long should the file run (0 if you are not timing) : "))

    # normalize the path to the file
    path = path.split("/")
    path_file = os.path.join(*path)
    
    # read the csv file and collect the data
    no_of_items, sack_weight, items_value, df = knapsack.uploadFile(path_file, type)
    
    # create the weights, values array and the vector
    weights_tab = np.array(df["W"])
    values_tab = np.array(df["V"])
    
    # apply the greedy algorithm
    solution, total_value, total_weight, no_of_selected_items = greedy_weight_selection(
                    weights=weights_tab, values=values_tab, 
                    threshold=sack_weight,
                    maximum_time=time)
    
    # write the result in the output file
    text = f"Greedy by weight \t\t\t{no_of_items}\t\t \t\t\t\t{sack_weight}\t \t\t\t\t{items_value}\t\t \t\t\t\t{no_of_selected_items}\t\t \t\t\t{total_weight}\t \t\t{total_value}\t\t"
    knapsack.writeOutput(text) 
