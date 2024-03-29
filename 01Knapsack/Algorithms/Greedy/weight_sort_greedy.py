"""
Description: This script implements 0/1 knapsack problem solved with a greedy algorithim based on the lowest weight.
             The algorithm implemented here runs in O(n) time.

Author: Gloria Isedu
update Landry : just formalized input and output
Date: 18/11/2022
Input: weights, values, knapsack size
Output: greediest solution by weight

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
    iteration_time = dt.timedelta(milliseconds=int(maximum_time))
    end_time = start_time + iteration_time

    # while the temporary sum of the weights we have in the knapsack is
    #  lower than the knapsack size  
    while temp_total <= threshold:
        # get the lowest weight's index
        lowest_weight_index = np.where(temp_weight > 0, temp_weight, np.inf).argmin()
        
        # use the index to get the corresponding weight
        cheapest_weight = weights[lowest_weight_index]
        
        # set the value just added to -1 so it is not 
        # selected in next iteration
        temp_weight[lowest_weight_index] = -1

        temp_total += cheapest_weight

        if temp_total <= threshold:
            # if the total is still less than threshold after adding new weight,
            #  add it to the solution
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
                    knapsack,
                    maximum_time=time)
    
    # write the result in the output file
    text = f"Greedy by weight \t\t\t{no_of_items}\t\t \t\t\t\t{sack_weight}\t \t\t\t\t{items_value}\t\t \t\t\t\t{no_of_selected_items}\t\t \t\t\t{total_weight}\t \t\t{total_value}\t\t"
    knapsack.writeOutput(text) 
