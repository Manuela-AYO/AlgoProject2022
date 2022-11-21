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
RATIO = VALUE / WEIGHT


def greedy_selection(weights, values, ratio, threshold):
    """
    chooses the final solution by selecting the highest value and checking if threshold is reached.
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
    temp_total = 0


    while temp_total <= threshold:
        highest_value_index = np.where(values == np.max(values))
        most_expensive_weight = weights[highest_value_index]
        values[highest_value_index] = -1

        temp_total += most_expensive_weight

        if temp_total <= threshold:
            solution[highest_value_index] = 1
    return solution
        

if __name__ == '__main__':
    # import Set01KnapSack object 
    knapsack = Set01KnapSack()
    
    type = input("Which type of file is it(t for text, c for csv) ? ")
    path = input("Path to the file[e.g : file/my_file.csv] : ")

    # normalize the path to the file
    path = path.split("/")
    path_file = os.path.join(*path)
    
    # read the csv file and collect the data
    no_of_items, sack_threshold, items_value, df = knapsack.uploadFile(path_file, type)
    
    # create the weights, values array and the vector
    weights_tab = np.array(df["W"])
    values_tab = np.array(df["V"])
    
    # apply the branch and bound algorithm
    solution = branch_bound(weights_tab, values_tab, sack_weight)
    v, nb_items_chosen, total_weight, total_value = solution[0]
    time_taken = solution[1]
    
    # write the result in the output filec
    text = f"Branch and bound \t\t\t{nb_items}\t\t \t\t\t\t{sack_weight}\t \t\t\t\t{items_value}\t\t \t\t\t\t{nb_items_chosen}\t\t \t\t\t{total_weight}\t \t\t{total_value}\t\t \t\t\t{time_taken}"
    knapsack.writeOutput(text) 
print(greedy_selection(
                    weights=WEIGHT, values=VALUE, 
                    ratio=RATIO, threshold=KNAPSACK_THRESHOLD))
