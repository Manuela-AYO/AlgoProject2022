"""
    This module performs the creation of an instance of the knapsack problem.
    This one is set by the user who defines :
        * the number of items 
        
        * the maximum capacity of the sack
        
        * the range of the items
        
        * the distribution he/she wants to have for items 
            - 1 : uncorrelated data, means weights and profits are randomly created
            - 2 : weakly correlated data, means profits depend on weights + small noise
            - 3 : strongly correlated data, means profits totally depend on weights
        
    References : 
        For a better understanding of the instances, refer to the pdf below which is downloadable
        - Where-are-the-hard-knapsack-problems-_2005_Computers---Operations-Research.pdf
"""

import random
from pathlib import Path
import sys
import os
import csv
import argparse

# external module imports
if not str(Path(__file__).resolve().parent.parent) in sys.path :
    sys.path.insert(0, str(Path(__file__).resolve().parent.parent))
 
from classes import Set01KnapSack


# ******************* Generate instance of the knapsack problem ******************* #
def generate_instance(nb_items : int, weight : int, range_items : int, distrib : int) -> None:
    """Generate an instance of the knapsack problem

    Args:
        nb_items (int): Total number of items we want
        weight (int): Maximum capacity of the sack
        range_items (int): Maximal range of the coefficients
        distrib (int): The distribution
    """
    instances = []
    weak_coeff = range_items/10 # coefficient for weakly correlated data
    total_weight = 0    # sum over the weights
    temp = ""
    
    if distrib == 1 :
        temp += "un"    # for uncorrelated
    elif distrib == 2 : 
        temp += "wc"    # for weakly correlated
    else :
        temp += "sc"    # for strongly correlated
        
    for i in range(nb_items):
        w = random.randint(1,range_items)
        v = 0
        # generate the value according to the distribution
        if distrib == 1 :   # uncorrelated data
            v = random.randint(1,range_items)
        elif distrib == 2 :  # weakly correlated data
            v = random.randint(w-weak_coeff, w+weak_coeff)
        elif distrib == 3 :  # strongly correlated data
            v = w + weak_coeff
        
        total_weight += w
        
        # append weight and values in instances list
        instances.append([int(v),w])
     
    # get the number of files in the directory "Input"   
    dir_path = os.path.join(os.path.dirname(__file__), "..", "Input")
    num_instance = len([entry for entry in os.listdir(dir_path) if os.path.isfile(os.path.join(dir_path, entry))])
        
    # generate the name of the file : 0_1_knap_nb_items_max_weight_num_instance.csv
    file = os.path.join(os.path.dirname(__file__), "..", "Input", f"01_knap_{temp}_{str(nb_items)}_{str(weight)}_{str(num_instance)}.csv")
    
    # write in the input file
    with open(file, "w") as f :
        writer = csv.writer(f, delimiter=",")
        writer.writerow([nb_items, weight])
        for item in instances:
            writer.writerow([item[0], item[1]])
    
    

# control the entries of the command line
def control_entries(nb_items : int, coef : int, weight : int) -> int:
    """Control the entries of the command line

    Args:
        nb_items (int): Number of items 
        range (int): Coefficients of the items
        weight (int, optional): Weight of the knapsack. Defaults to 0.

    Returns:
        int: code which is 0 if the entries are ok and -1 else
    """
    num = 0
    if nb_items <= 1 :
        print("\tValueError : The number of items should be strictly greater than 1\n")
        num = -1
    if coef <= 1 : 
        print("\tValueError : The range of the items should be strictly greater than 1\n")
        num = -1
    if coef > (weight-weight//4) :
        print("\tValueError : The range of the coefficients should be at most a half of the actual weight\n")
        num = -1
    return num

                            
if __name__ == "__main__":
    # generate the arguments in the command line
    parser = argparse.ArgumentParser(description=
                                     "Generate an instance of the 0-1 knapsack problem\n\t The arguments are in the order : nb_items, weight, range, distrib")
    parser.add_argument("nb_items", type=int, help="Number of items. Must be strictly greater than 1[>1]")
    parser.add_argument("weight", type=int, help="Maximum capacity of the knapsack")
    parser.add_argument("coef", type=int, help="Range of the coefficients for weights and values[>1]")
    parser.add_argument("distrib", type=int, choices=range(1,4), 
                        help="Distribution to use to generate the weights and values")
    args = parser.parse_args()
    
    # control the entries and send to the generator
    nb_items = args.nb_items
    coef = args.coef
    distrib = args.distrib
    weight = args.weight
    
    if control_entries(nb_items, coef, weight) != -1:
        generate_instance(nb_items, weight, coef, distrib)
