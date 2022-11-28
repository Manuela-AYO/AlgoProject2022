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


    update Landry : just formalized input (with the function) and output (change the order)
"""


# some important modules
import numpy as np
import os
from datetime import datetime
from pathlib import Path
import sys
from datetime import datetime, timedelta


# external module imports
if not str(Path(__file__).resolve().parent.parent) in sys.path:
    sys.path.insert(0, str(Path(__file__).resolve().parent.parent.parent))
    sys.path.insert(0, str(Path(__file__).resolve().parent.parent.parent.parent))
 
from classes import Set01KnapSack


# ----FOR TESTING MODULE---- #
def fptas(set01 : Set01KnapSack, time_min=0):
    return Fptas(set01.data.W,set01.data.V,set01.wmax,time_min).fptas()
# -------------------------- #

class Fptas:
    def __init__(self, weights_tab : np.array, values_tab : np.array, sack_weight : int, time : int  = 0) -> None:
        """Initialisation of the knapsack object

        Args:
            weights_tab (np.array): Array of weights of all the items
            values_tab (np.array): Array of values of all the items
            sack_weight (int): Maximum capacity of the knapsack
        """
        self.epsilon = 0.001
        self.nb_items_chosen = 0
        self.total_weight = 0
        self.total_value = 0
        self.vector_items = np.zeros(len(weights_tab), dtype=int)
        self.sack_weight = sack_weight
        self.values_tab = values_tab
        self.weights_tab = weights_tab
        self.time = int(time)
        self.new_values_tab = None
        
        
    # ******************************** Compute the max value in the row i, column thres_weight *********************** #
    def compute_max_value(self, values : np.array, i : int, thres_weight : int, end_time : int = 0):
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
        current_time = datetime.now()
        if end_time != 0 and end_time <= current_time:
            return
        
        # case where we don't take any object or there is no more place in the sack
        if i==0 or thres_weight<=0:
            values[i,thres_weight][0] = 0
        
        else : 
            if values[i-1, thres_weight][0] == -1:
                self.compute_max_value(values, i-1, thres_weight, end_time)
            
            # weight of the object is greater than the remaining place in the sack,
            # so we don't take the object and we evaluate the i-1 other objects
            # the value of the serie 1...i will then be the same as the value of the serie 1...i-1
            # that's the reason why the direction values[i,thres_weight][1] is up
            if self.weights_tab[i-1] > thres_weight:
                values[i,thres_weight][0] = values[i-1, thres_weight][0]
                values[i,thres_weight][1] = "up"
            else:
                # if the object can enter in the sack, do we take it or not ?
                
                if values[i-1, thres_weight-self.weights_tab[i-1]][0] == -1:
                    self.compute_max_value(values, i-1, thres_weight-self.weights_tab[i-1], end_time)
                
                # if we got a better value without taking the object, we don't take it and we're on the 
                # same case as "weights_tab[i-1] > thres_weight"
                if values[i-1, thres_weight][0] > values[i-1, thres_weight-self.weights_tab[i-1]][0] + self.new_values_tab[i-1] :
                    values[i, thres_weight][0] = values[i-1, thres_weight][0]
                    values[i,thres_weight][1] = "up"
                
                # otherwise, we take the object and the remaining objects are going to be evaluated with the remaining weight   
                else :
                    values[i, thres_weight][0] = values[i-1, thres_weight-self.weights_tab[i-1]][0] + self.new_values_tab[i-1]
                    values[i,thres_weight][1] = "left"   
                    

    # ************************ Construct the vector of items in the bag ********************************* #
    def get_knap_items(self) ->  tuple([np.array, int, int, int]):
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
        
        nb_items = len(self.weights_tab)
        max_weight = self.sack_weight
        
        # vector of items
        vector_items = np.zeros(nb_items, dtype=int)
        
        # create an array containing the maximum value of the serie of item 1...i with a threshold weight thres_weight
        # this array is a list containing the max value for the serie and a direction which indicates the path to the
        # construction of the optimal value
        opt_values = [[0]*(self.sack_weight+1)]*(nb_items+1)
        opt_values = np.array(opt_values, dtype=list)
        
        for i in range(nb_items+1):
            for j in range(self.sack_weight+1):
                opt_values[i,j] = [-1, "o"]
        
        end_time = 0
        
        # call the compute_max_value function to fill the table
        if self.time != 0:
            start_time = datetime.now()
            iteration_time = timedelta(milliseconds=int(self.time))
            end_time = start_time + iteration_time

        self.compute_max_value(opt_values, nb_items, max_weight, end_time)
        
        nb_items_chosen = 0
        opt_val = opt_values[nb_items, max_weight][0]
        opt_weight = 0
        
        # construct the vector of sol
        while nb_items != 0 :
            if opt_values[nb_items, max_weight][1] == "left":
                vector_items[nb_items-1] = 1
                opt_weight += self.weights_tab[nb_items-1]
                max_weight -= self.weights_tab[nb_items-1]
                nb_items_chosen += 1
            else :
                vector_items[nb_items-1] = 0
            nb_items -= 1
                
        # return the values
        return vector_items, nb_items_chosen, opt_weight, opt_val
    

    # ************************** Fully polynomial time approximation scheme function ******************************* #  
    def fptas(self) -> tuple([np.array, int, int, int]):
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
            int : value of those items
            int : weight of those items
        """
        if self.epsilon<0 or self.epsilon>1:
            print("ε should be in the interval [0,1]")
            return 
        
        # get the maximum value in the values_tab
        max_value = max(self.values_tab)
        
        # scaling factor
        delta = self.epsilon*max_value/len(self.weights_tab)
        
        # scale the values
        values_tab_scale = self.values_tab/delta
        self.new_values_tab = np.array(values_tab_scale, dtype=int)
        
        # get the vector of items, nb_items_chosen, total_weight of the objects and total value of the objects
        v, nb_items_chosen, total_weight, total_value = self.get_knap_items()
        
        # NEW way to calculate total value --- Landry Update --- 
        total_value2 = 0
        for a in range(len(self.values_tab)):
            if v[a] == 1:
                total_value2 += self.values_tab[a]

        # return the solution
        # return v, nb_items_chosen, total_value*delta, total_weight
        return v, nb_items_chosen, total_value2, total_weight


if __name__ == "__main__":
    # import Set01KnapSack object 
    knapsack = Set01KnapSack()
    
    print(sys.path)
    print()
    
    type = input("Which type of file is it(t for text, c for csv) ? ")
    path = input("Path to the file[e.g : file/my_file.csv] : ")

    # normalize the path to the file
    path = path.split("/")
    path_file = os.path.join(*path)
    
    # read the csv file and collect the data
    nb_items, sack_weight, items_value, df = knapsack.uploadFile(path_file, type)
    
    # path = input("Path to the ε file[e.g : file/my_file.csv] : ")
    
    # normalize the path to the ε file
    # path = path.split("/")
    # path_file = os.path.join(*path)
    
    # get the value of ε
    # epsilon = knapsack.getEpsilon(path_file)
    
    # create the weights, values array and the vector of values
    weights_tab = np.array(df["W"])
    values_tab = np.array(df["V"])
    epsilon = 0.001
    
    obj = Fptas(weights_tab, values_tab, sack_weight, 10)
    # apply the branch and bound algorithm
    # solution = fptas(weights_tab, values_tab, sack_weight, epsilon)
    # v, nb_items_chosen, total_weight, total_value = fptas(weights_tab, values_tab, sack_weight, epsilon) # solution[0]
    start = datetime.now()
    v, nb_items_chosen, total_weight, total_value = obj.fptas()
    time_taken = datetime.now() - start
    # time_taken = solution[1]
    print(f"Nb total items = {len(weights_tab)}\n")
    print(f"TMax weight : {sack_weight}\n")
    print(f"Vector = {v}\n")
    print(f"Nb items = {nb_items_chosen}\n")
    print(f"Total weight = {total_weight}\n")
    print(f"Total value = {total_value}\n")
    print(f"Time taken = {time_taken}")

