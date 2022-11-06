"""
Description: This module is about the branch and bound algorithm of the knapsack problem.
    Knapsack problem is a maximization problem. We want to maximize values in our sack 
    with respect to a certain weight. 
    With this branch and bound algorithm, I'm going to turn it into a minimization problem.
    In other means, we want to minimize the lost of values when selecting items.
    
    With branch and bound, there are 2 things to consider : 
    1. The form of the solution : the solution is a vector v of bits such that for an object at
        the position i, v[i] = 0 if we don't take the object and 1 else
        e.g : if nb_ojects = 4, v = <?,?,?,?>
    2. The evaluation function : it's the bound that helps cut branches. There, our lower bound 
        is the minimum value that we lose after a decision(take or not an object)

Author: Christiane Manuela AYO NDAZO'O

References :
    - Algorithm : https://www.geeksforgeeks.org/0-1-knapsack-using-branch-and-bound/
    - Time a function : https://dev.to/s9k96/calculating-run-time-of-a-function-using-python-decorators-148o

"""

# some important modules
import functools
from time import time
import numpy as np
import pandas as pd
import csv
import os
from datetime import datetime
from pathlib import Path
import sys

# external module imports
if not str(Path(__file__).resolve().parent.parent) in sys.path:
	sys.path.insert(0, str(Path(__file__).resolve().parent.parent.parent))
 
from classes import Set01KnapSack

# *********************** wrapper to benchmark the running time of the branch and bound algorithm *********************** #
def compute_run_time(f) :
    @functools.wraps(f)
    def wrap(*args, **kwargs):
        start = datetime.now()
        x = f(*args, **kwargs)
        time_taken = datetime.now() - start
        return x, time_taken
    return wrap


# *********************** evaluation function on each node ***************************** #
def evaluation_function(i : int, v : np.array, weights_tab : np.array, values_tab : np.array, w : float) -> float:
    """_summary_
        The evaluation function computes on each node the lower bound,
        which is necessary to cut useless branches
        
        This function is actually the sum of two(2) functions :
        - The actual loss : that simply means that : for an object in the position i, 
            we decide either to take it(v[i]=1) or not(v[i]=0). If we don't take it the actual lost
            just summarizes all the values of the objects we took before and add
            the value of the object i with respect to the weight
            
        - The previsional loss : after a decision(take or not an object), we have consequences. If we take 
        an object, as it has a weight, we'll reduce the weight available(w) in the knapsack. So, the 
        previsional loss will just return the values I lose if I put the object with respect to the weight. 
        
        Complexity : O(nlogn) [sort over the decreasing values]
        
    Args:
        i (int): Index of the object we are studying
        weights_tab (np.array): array containing the weights of all the objects
        values_tab (np.array): array containing the values of all the objects
        v (np.array): vector of bits(0/1) representing the objects in the knapsack. 
            0 => object is not taken
            1 => object is taken
        w : maximum weight of the knapsack
    """
    
    # actual lost on the node
    g = 0
    
    # previsional lost over the sack after our decision
    h = 0
    
    # copy of the max weight
    w_left = w
    
    # compute the actual loss
    for l in range(0,i+1):
        g += (1-v[l]) * values_tab[l]
        w_left -= v[l] * weights_tab[l]
        if w_left < 0:
            g = pow(10,10)
            break
        
    if i != len(v) - 1: 
        # weight before the decision on i
        w2 = w_left + i*weights_tab[i]
        
        # map values_tab and weights_tab
        map = zip(values_tab[i+1:], weights_tab[i+1:])
        
        # sort the map by decreasing values 
        tab = sorted(map, key = lambda x : x[0], reverse=True)
        
        # compute the previsional loss
        # this loop simply gives the lower bound of the maximum value we loose
        for item in tab : 
            # we only take the objects which can no longer be inserted in the sack after 
            # the insertion of item i
            if w2 - item[1] >= 0 and item[1] > w_left:
                h += item[0]
                w2 -= item[1]
            
    return g+h


# *********************** branch and bound function *********************** # 
@compute_run_time   
def branch_bound(v : np.array, weights_tab : np.array, values_tab : np.array, max_weight : float) -> np.array:
    """_summary_
        The branch and bound function performs the branch and bound algorithm by 
        going through most promising paths to find its best solution

    Args:
        v (np.array) : Initialization -1 vector of size of the number of objects
        weights_tab (np.array): Array containing the weight of each item
        values_tab (np.array): Array containing the value of each item
        max_weight (float): Weight of the bag

    Returns:
        np.array: the final vector of items with 0 if an item at position i isn't selected and 1 else
        
    Complexity : O(n) [number of the items]
    """
    nb_items_chosen = 0
    total_weight = 0
    total_value = 0
    
    # iterate on the vector
    for i in range(len(v)):
        # what if we don't take the object
        v[i] = 0
        ev1 = evaluation_function(i,v,weights_tab, values_tab,max_weight)
        # what if we take the object
        v[i] = 1
        ev2 = evaluation_function(i,v,weights_tab,values_tab,max_weight)
        
        # choose of the least loss value
        if ev1 < ev2:
            v[i] = 0
        else :
            v[i] = 1
            nb_items_chosen += 1
            total_weight += weights_tab[i]
            total_value += values_tab[i]
    
    # final vector
    return v, nb_items_chosen, total_weight, total_value

  

if __name__ == '__main__':
    # import Set01KnapSack object 
    knapsack = Set01KnapSack()
    
    type = input("Which type of file is it(t for text, c for csv) ? ")
    path = input("Path to the file[e.g : file/my_file.csv] : ")

    # normalize the path to the file
    path = path.split("/")
    path_file = os.path.join(*path)
    
    # read the csv file and collect the data
    nb_items, sack_weight, items_value, df = knapsack.uploadFile(path_file, type)
    
    # create the weights, values array and the vector of values
    weights_tab = np.array(df["W"])
    values_tab = np.array(df["V"])
    v = -1 * np.ones(nb_items, dtype=int)
    
    # apply the branch and bound algorithm
    solution = branch_bound(v, weights_tab, values_tab, sack_weight)
    v, nb_items_chosen, total_weight, total_value = solution[0]
    time_taken = solution[1]
    
    # write the result in the output filec
    text = f"Branch and bound \t\t\t{nb_items}\t\t \t\t\t\t{sack_weight}\t \t\t\t\t{items_value}\t\t \t\t\t\t{nb_items_chosen}\t\t \t\t\t{total_weight}\t \t\t{total_value}\t\t \t\t\t{time_taken}"
    knapsack.write_output(text) 