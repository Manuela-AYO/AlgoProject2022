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
    - Time a function : https://www.pythoncentral.io/time-a-python-function/

"""

# some important modules
import numpy as np
import pandas as pd
import csv
import os
import timeit

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
        
        Complexity : O(n) [in the order of len(v)]
        
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



# *********************** temporary function before solving module import and load Landry's function *********************** #
def read_csv(filename : str) -> tuple([int, float, float, np.array, np.array]) :
    nb_items = 0 # total number of items
    sack_weight = 0 # weight of the bag
    total_value = 0.0 # total value of items
    if not os.path.exists(file_name) :
        print("This file doesn't exit")
        return None
    
    else : 
        list_weights = []
        list_values = []
        with open(filename, "r") as f:
            lines = csv.reader(f)
            lineRead = 0
            for line in lines:
                if lineRead == 0 :
                    nb_items = int(line[0])
                    sack_weight = float(line[1])
                else :
                    list_values.append(float(line[0]))
                    total_value += float(line[0])
                    list_weights.append(float(line[1]))
                lineRead += 1
    return nb_items, sack_weight, total_value, np.array(list_values), np.array(list_weights)


# *********************** write on the results of the algorithm in the output file *********************** # 
# will be on class module when the import problem will be solved
def write_output(filename : str, output : str) -> str:
    output_root = filename.split(".")[0]
    output_root += ".txt"
    outputfile_path = os.path.join("o_one_knapsack", "Output", output_root)
    
    with open(outputfile_path, "a") as f : 
        # if it's an empty file, create the header
        if os.path.getsize(outputfile_path) == 0 :
            f.write("Algorithm\t \tTotal number of items\t Max weight\t Items value\t Nb items chosen\t Occupied weight\t Total value of items\n")
            f.write("______________________________________________________________________________________________________________________________\n")
        # update with the content of the output of the algorithm 
        f.write(f"\n{output}\n")
        
    print("Successfully completed")
      
        
if __name__ == '__main__':
    # read the file
    file_name = os.path.join("o_one_knapsack","Input","0_1_kp_REF_10_100_221016.csv")
    
    # branch and bound parameters
    nb_items, sack_weight, items_value, values_tab, weights_tab = read_csv(file_name)
    v = -1 * np.ones(nb_items, dtype=int) # vector solution
    
    # launch the branch and bound function
    v, nb_items_chosen, total_weight, total_value = branch_bound(v, weights_tab, values_tab, sack_weight)
    
    # write the result in the output file
    text = f"Branch and bound \t\t\t{nb_items}\t\t \t\t\t\t{sack_weight}\t\t\t \t{items_value}\t\t \t\t{nb_items_chosen}\t\t \t\t\t{total_weight}\t\t \t\t{total_value}"
    write_output("0_1_kp_REF_10_100_221016.csv", text) 
    
        
        
# form of the output file
# nb_total items max_weight nb_items_chosen total_weight_items total_value_items running_time