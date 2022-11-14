"""
    This module performs the creation of an instance of the knapsack problem.
    This one is set by the user who defines :
        * the distribution he/she wants to have for items 
            - 1 : uncorrelated data, means weights and profits are randomly created
            - 2 : weakly correlated data, means profits depend on weights + small noise
            - 3 : strongly correlated data, means profits totally depend on weights
            - 4 : inverse strongly correlated data, means weights depend on profits
            - 5 : almost strongly correlated data, means profits depend on data +/- noise
            - 6 : subset sum instance, means profits are equal to weights
            - 7 : uncorrelated data with similar weights, profits and data are randomly chose from another range
            - 8 : multiple strongly correlated data, means profits totally depend on weights + additional information
            - 9 : ceiling data, there profits are multiples of a given parameter
            - 10 : circle data, means profits form a circle
            - 11, 12, 13 : spanner data. These instances are constructed such that all items are multiples
                    of a quite small set of items—the so-called spanner set
                    
        * the possibility to define or not the capacity of the knapsack
        
        * the range of the items
        
    References : 
        For a better understanding of the instances, refer to the pdf below which is downloadable
        - Where-are-the-hard-knapsack-problems-_2005_Computers---Operations-Research.pdf
"""

import random
import math

# external module imports
if not str(Path(__file__).resolve().parent.parent) in sys.path :
    sys.path.insert(0, str(Path(__file__).resolve().parent.parent.parent))
 
from classes import Set01KnapSack

LOW_UNCOR = 100000
HIGH_UNCOR = 100100
HIGH_PROFIT = 1000
H = 100

# ******************* Generate instance of the knapsack problem ******************* #
def generate_instance(nb_items : int, range_items : int, distrib : int, span : Npne) -> None:
    """Generate an instance of the knapsack problem

    Args:
        nb_items (int): Total number of items we want
        range_items (int): Maximal range pf the coefficients
        distrib (int): The distribution
        span (list): info of the spanner
    """
    instances = []
    weak_coeff = range_items/10 # coefficient for weakly correlated data
    alm_str_coeff = range_items/500 # almost strongly correlated data
    total_weight = 0    # sum over the weights
    total_value = 0     # sum over the values
    
    for i in range(nb_items):
        w = random.randint(1,range_items)
        v = 0
        # generate the value according to the distribution
        if distrib == 1 or (distrib == 11 and i<span[0]):   # uncorrelated data
            v = random.randint(1,range_items)
        elif distrib == 2 or (distrib == 12 and i<span[0]):  # weakly correlated data
            v = random.randint(w-weak_coeff, w+weak_coeff)
            if v <= 0:
                v = 1
        elif distrib == 3 or (distrib == 13 and i<span[0]):  # strongly correlated data
            v = w + weak_coeff
        elif distrib == 4:  # inverse strongly correlated data
            v = random.randint(1,range_items)
            w = v + weak_coeff
        elif distrib == 5:  # almost strongly correlated data
            v = random.randint(w+weak_coeff-alm_str_coeff, w+weak_coeff+alm_str_coeff)
        elif distrib == 6:  # subset sum instance
            v = w
        elif distrib == 7:  # uncorrelated data with similar weights
            w = random.randint(LOW_UNCOR, HIGH_UNCOR)
            v = random.randint(1, HIGH_PROFIT)
        elif distrib == 8:  # multiple strongly correlated data
            if w/6 == 0:
                v = w + 3*range_items/10
            else :
                v = w + 2*range_items/10
        elif distrib == 9:  # value ceiling data
            v = 3*((w+2)/3)
        elif distrib == 10: # circle data
            v = 2*math.sqrt(4*range_items*range_items - math.pow((w-2*range_items),2))//3
        elif distrib == 11 or distrib == 12 or distrib == 13: # spanner data weakly correlated
            if i < span[0]:
                v = (2*v//m) + 1
                w = (2*w//m) + 1
            else :
                div = i // span[0]
                r = random.randint(1,span[1])
                v = r * instances[i-(div*span[0])][0]
                w = r * instances[i-(div*span[0])][1]
        
        total_weight += w
        total_value += v
        
        # append weight and values in instances list
        instances.append([v,w])
    
    # compute the capacity of the knapsack
    c =  total_weight * h/H+1
    
    # write in the input file
    # generate_name_file
    
    
                
                
generate_instance(2, 3, 1)