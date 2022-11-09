"""
    Description : This module is about the fully polynomial approximation time scheme.
        The fully polynomial approximation time scheme is an algorithm that takes as subroutine
    the dynamic programming. 
        In fact, we assume that the knapsack problem could be solved in an exponential time because
    the values are too large. 
        So, we reduce the values by a scaling factor such that error on the original value is less
    than ε. 
        The resulting solution will be an approximation over ε the optimal solution.
    
    References :
        - https://en.wikipedia.org/wiki/Knapsack_problem#Fully_polynomial_time_approximation_scheme
"""


# some important modules
import functools
from time import time
import numpy as np
import csv
import os
from datetime import datetime
from pathlib import Path
import sys

print(Path(__file__).resolve().parent.parent.parent)

# external module imports
if not str(Path(__file__).resolve().parent.parent) in sys.path:
	sys.path.insert(0, str(Path(__file__).resolve().parent.parent.parent))
 
from classes import Set01KnapSack


# ******************************** Compute the max value in the row i, column thres_weight *********************** #
def compute_max_value(values : np.array, i : int, thres_weight : int, values_tab : np.array, weights_tab : np.array):
    """_summary_
        This function recursively compute the necessary values in the array values. 
        Each cell(values[i,thres_weight]) in the values array represents the maximum 
        value that we can have from the 1...i items (with or without taking the item i) with respect to the threshold weight.
    Args:
        values (np.array): Array of list(optimal values, direction to the choice) for a serie 1...i with respect to a threshold weight
        i (int): Actual number of the item we want to compute the maximum value
        thres_weight (int): Weight left in the knapsack
        values_tab (np.array): Array containing the value of all the items
        weights_tab (np.array): Array containing the weight of all the items

    Returns:
        None
    """
    
    # case where we don't take any object or there is no more place in the sack
    if i==0 or thres_weight<=0:
        values[i,thres_weight][0] = 0
    
    else : 
        if values[i-1, thres_weight][0] == -1:
            compute_max_value(values, i-1, thres_weight, values_tab, weights_tab)
        
        # weight of the object is greater than the remaining place in the sack,
        # so we don't take the object and we evaluate the i-1 other objects
        # the value of the serie 1...i will then be the same as the value of the serie 1...i-1
        # that's the reason why the direction values[i,thres_weight][1] is up
        if weights_tab[i-1] > thres_weight:
            values[i,thres_weight][0] = values[i-1, thres_weight][0]
            values[i,thres_weight][1] = "up"
        else:
            # if the object can enter in the sack, do we take it or not ?
            
            if values[i-1, thres_weight-weights_tab[i-1]][0] == -1:
                compute_max_value(values, i-1, thres_weight-weights_tab[i-1], values_tab, weights_tab)
            
            # if we got a better value without taking the object, we don't take it and we're on the 
            # same case as "weights_tab[i-1] > thres_weight"
            if values[i-1, thres_weight][0] > values[i-1, thres_weight-weights_tab[i-1]][0] + values_tab[i-1] :
                values[i, thres_weight][0] = values[i-1, thres_weight][0]
                values[i,thres_weight][1] = "up"
             
            # otherwise, we take the object and the remaining objects are going to be evaluated with the remaining weight   
            else :
                 values[i, thres_weight][0] = values[i-1, thres_weight-weights_tab[i-1]][0] + values_tab[i-1]
                 values[i,thres_weight][1] = "left"       
                 

# ************************ Construct the vector of items in the bag ********************************* #
def get_knap_items(nb_items : int, max_weight : int, weights_tab : np.array, values_tab : np.array) ->  tuple([np.array, int, int, int]):
    """_summary_
       This function constructs the vector of items in the knapsack.
       On a position i, the item i has the value 0 if it's not taken and 1 else

    Args:
        nb_items (int): Total number of items
        max_weight (int) : Weight of the knapsack
        weights_tab (np.array) : Array containing the weight of each item
        values_tab (np.array) : Array containing the value of each item
        
    Returns : 
        np.array: the final vector of items with 0 if an item at position i isn't selected and 1 else
        int : number of items chosen
        int : weight of those items
        int : value of those items
    """
    
    
    # vector of items
    vector_items = np.zeros(nb_items, dtype=int)
    
    # create an array containing the maximum value of the serie of item 1...i with a threshold weight thres_weight
    # this array is a list containing the max value for the serie and a direction which indicates the path to the
    # construction of the optimal value
    opt_values = [[0]*(max_weight+1)]*(nb_items+1)
    opt_values = np.array(opt_values, dtype=list)
    
    for i in range(nb_items+1):
        for j in range(max_weight+1):
            opt_values[i,j] = [-1, "o"]
    
    # call the compute_max_value function to fill the table
    compute_max_value(opt_values, nb_items, max_weight, values_tab, weights_tab)
    
    nb_items_chosen = 0
    opt_val = opt_values[nb_items, max_weight][0]
    opt_weight = 0
    
    # construct the vector of sol
    while nb_items != 0 :
        if opt_values[nb_items, max_weight][1] == "up":
            vector_items[nb_items-1] = 0
        elif opt_values[nb_items, max_weight][1] == "left":
            vector_items[nb_items-1] = 1
            opt_weight += weights_tab[nb_items-1]
            max_weight -= weights_tab[nb_items-1]
            nb_items_chosen += 1
        nb_items -= 1
            
    # return the values
    return vector_items, nb_items_chosen, opt_weight, opt_val
 

# ************************** Fully polynomial time approximation scheme function ******************************* #  
def fptas(weights_tab : np.array, values_tab : np.array, max_weight : int, epsilon : float) -> tuple([np.array, int, int, int]):
    """_summary_
        The fptas function performs the fully polynomial time approximation scheme algorithm by choosing
        most valuable items which total profit is (1-ε) the optimal solution

    Args:
        weights_tab (np.array): Array containing the weight of each item
        values_tab (np.array): Array containing the value of each item
        max_weight (int) : Weight of the bag
        epsilon (float) : the max error on the profit
        
    Returns:
        np.array: the final vector of items with 0 if an item at position i isn't selected and 1 else
        int : number of items chosen
        int : weight of those items
        int : value of those items
    """
    if epsilon<0 or epsilon>1:
        print("ε should be in the interval [0,1]")
        return 
    
    # get the maximum value in the values_tab
    max_value = max(values_tab)
    
    # scaling factor
    delta = epsilon*max_value/len(weights_tab)
    
    # scale the values
    values_tab_scale = np.copy(values_tab)
    values_tab_scale = int(values_tab_scale/delta)
    
    # get the vector of items, nb_items_chosen, total_weight of the objects and total value of the objects
    v, nb_items_chosen, total_weight, total_value = get_knap_items(len(weights_tab), max_weight, weights_tab, values_tab_scale)
    
    # return the solution
    return v, nb_items_chosen, total_weight, total_value


if __name__ == "__main__":
    # import Set01KnapSack object 
    knapsack = Set01KnapSack()
    
    type = input("Which type of file is it(t for text, c for csv) ? ")
    path = input("Path to the file[e.g : file/my_file.csv] : ")

    # normalize the path to the file
    path = path.split("/")
    path_file = os.path.join(*path)
    
    # read the csv file and collect the data
    nb_items, sack_weight, items_value, df = knapsack.uploadFile(path_file, type)
    
    # create the file for the values of epsilon
    
    # create the weights, values array and the vector of values
    weights_tab = np.array(df["W"])
    values_tab = np.array(df["V"])
    epsilon = 0.5
    
    # apply the branch and bound algorithm
    solution = fptas(weights_tab, values_tab, sack_weight, epsilon)
    v, nb_items_chosen, total_weight, total_value = solution[0]
    time_taken = solution[1]
    
    # write the result in the output filec
    text = f"FPTAS \t\t\t{nb_items}\t\t \t\t\t\t{sack_weight}\t \t\t\t\t{items_value}\t\t \t\t\t\t{nb_items_chosen}\t\t \t\t\t{total_weight}\t \t\t{total_value}\t\t \t\t\t{time_taken}"
    knapsack.write_output(text) 


tab_weight = np.array([23, 26, 20, 18, 32, 27, 29, 26, 30, 27])
tab_value = np.array([505, 352, 458, 220, 354, 414, 498, 545, 473, 543])
v, nb_items, opt_weight, opt_val =  get_knap_items(10, 67, tab_weight, tab_value)