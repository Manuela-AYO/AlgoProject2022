"""
Description: This module is about the branch and bound algorithm of the knapsack problem.
    Knapsack problem is a maximization problem. We want to maximize values in our sack 
    with respect to a certain weight. 
    With this branch and bound algorithm, I'm going to turn it into a minimization problem.
    In other means, we want to minimize the lost of values when selecting items.
    
    With branch and bound, there are 2 things to consider : 
    1. The form of the solution : the solution is a vector v of bits such that for an object at
        the position i, v[i] = 0 if we don't take the object and 1 else
    2. The evaluation function : it's the bound that helps cut branches. There, our lower bound 
        is the minimum value that we lose after a decision(take or not an object)

Author: Christiane Manuela AYO NDAZO'O

"""

# some important modules
import numpy as np


# evaluation function on each node
def evaluation_function(i : int, v : np.array, weights_tab : np.array, values_tab : np.array, w : float):
    """_summary_
        The evaluation function computes a on each node the lower bound,
        which is necessary to cut useless branches
        
        This function is actually the sum of two(2) functions :
        - The actual loss : that simply means that : for an object in the position i, 
            we decide either to take it(v[i]=1) or not(v[i]=0). If we don't take it the actual lost
            just summarizes all the values of the objects we took before and add
            the value of the object i.
            
        - The previsional loss : after a decision(take or not an object), we have consequences. If we take 
        an object, as it has a weight, we'll reduce the weight available(w) in the knapsack. So, the 
        previsional loss will just sum up all the values of the objects that can no longer enter in the sack after 
        our decision. It's important to keep in mind that this loss is a lower bound
        
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
        if v[l] == 0:
            g += values_tab[l]
        else :
            w_left -= weights_tab[l]
        
    # ****************** Need to refind this previsional loss : not sure it's less than the optimal one **************
        
    # compute the previsional loss
    for l in range(i+1, len(v)):
        # lost bound
        if weights_tab[l] > w_left:
            h += values_tab[l]
            
    return g+h


# small test
w = np.array([2,3,2,10,3])
v = np.array([40,50,100,95,30])
vector = -1*np.ones(5)
vector[0] = 1
print(evaluation_function(0,vector,w,v,10))