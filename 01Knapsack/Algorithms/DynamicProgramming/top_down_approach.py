"""
Description:
     This module aims to solve 0/1 knapsack using dynamic programming technique in a top-down manner.
     This algorithm has the same optimal substructure and recursive principle as the bottom-up version.
     The different is that the algorithm starts computing at the top most state. Moreover, the computation
     of the algorithm is done in recursive fashion.

     Instead of re-computing the same sub-problem, the algorithm checks if there is a sub-solution stored 
     in the memory. If so, the sub-solution is reused. 

     Also, the sub-solutions are stored in a table. Rows and columns represent items and possible sum of weights
     as in the bottom-up table. But this time, the cell values are fill with -1, to track the reuse of sub-solutions.

     In the reference algorithm, if the algorithm reaches the base conditions, it returns 0, and does not alter
     the cell value from -1 to 0. Meanwhile, in the module, the cell value is altered to 0. This is because
     there is the situation that the cell value of the first item equal to 0, and the value of the above cell is 
     equal to -1. In general case, the algorithm supposed to take the first item as 0 > -1. But the first item
     should not be taken, as its value is equal to 0, means that it does not provide the profit. 

     The algorithm complexity is O((n+1)(W+1)), where n is the number of items, and W is the knapsack capacity.
     The space of the algorithm is O((n+1)(W+1)) + O(n+1), which is the size of the table plus the recursion
     stack.

Author: Chadapohn Chaosrikul

Reference: 
    1. Algorithm: Method 3 in https://www.geeksforgeeks.org/0-1-knapsack-problem-dp-10/

Updates
    1. By Landry: 
        - Formalized input and output
"""

# Import Python Modules
import numpy as np
import sys, os
from pathlib import Path
import datetime

# increase number of possible recursivity call for 10,000 input data.
sys.setrecursionlimit(10000 + 1) 

#  Set directory paths for external modules
if not str(Path(__file__).resolve().parent.parent) in sys.path :
    sys.path.insert(0, str(Path(__file__).resolve().parent.parent.parent.parent))
    sys.path.insert(0, str(Path(__file__).resolve().parent.parent.parent))

# Import external modules
# A module for tracing Dynamic Programming's solution
from helper import tracing_dynamic_programming_solution
# A module for retrieving 0/1 Knapsack instance
from classes import Set01KnapSack

def top_down_memoization(i_: int, j_: int, weights: np.array, values: np.array, table: np.array, given_time: int, end_time: int) -> tuple([int, np.array, int]):    
    """
    Description: 
        This method computes the optimal subsolutions and stores them in a table from the top to the bottom states.
        The operations are done is the recursive manner.

    Args:
        i_ (int): the current item.
        j_ (int): the current sum of weights.
        weights (np.array): an array of item weights.
        values (np.array): an array of item values. 
        table (np.array): a table stores sub-solutions. Initialized to -1.
        given_time (int): a given time in milliseconds to measure efficiency.
        end_time (int): a time when the algorithm stops.

    Returns:
        table[i, j] (int): the maximum value retrieved from a subset of item.
        table (np.array): a table stores sub-solutions.
        i (int): the current item.

    Complexity
    """
    
    # To prevent the type error
    i = int(i_)
    j = int(j_)

    # Timing module
    current_time = datetime.datetime.now()
    if given_time != 0:    
        if current_time >= end_time:
            print("Running time is out, but it will take extra time for reaching the base case of this stop")
            # When the time stops, the algorithm takes extra time to reach the base case, given the stopped state.
            return table[i, j], table, i
        
    """ The base conditions:
        - If there is no item
        - If the maxmimum capacity is exceeded.
        When the algorithm reaches the base case, 0 is stored in the cell value. As mentioned above,
        it is just to avoid taken the first item in case it provides no benefit.
    """
    if i == 0 or j == 0:
        table[i, j] = 0
        return table[i, j], table, i
    
    # If the sub-solution is already computed, reuse it
    if table[i][j] != -1:
        return table[i, j], table, i

    # If the item is included
    if weights[i-1] <= j:
        # The algorithm also may takes the new value
        value, table, item_calculated_at_stop_time = top_down_memoization(i-1, j-weights[i-1], weights, values, table, given_time, end_time)
        value_including_the_new_weight = values[i-1] + value

         # The algorithm may take the remaining value.
        value_excluding_the_new_weight, table, item_calculated_at_stop_time = top_down_memoization(i-1, j, weights, values, table, given_time, end_time)
        
        # Retrive the maximum gained
        table[i, j] = max(value_including_the_new_weight, value_excluding_the_new_weight)
        
        return table[i, j], table, i
    
    # If the item is not included
    elif weights[i-1] > j:
        # The algorithm takes the remaining value.
        value, table, item_calculated_at_stop_time = top_down_memoization(i-1, j, weights, values, table, given_time, end_time)
        table[i, j] = value
        return table[i, j], table, i

def top_down_approach(set01 : Set01KnapSack, given_time: int = 0) -> tuple([np.array, int, int, int]):
    """
    Description:
        This method executes the whole process of the algorithm. 
        Mainly, it triggers:
            - The execution of the top-down approach
            - The solution tracing function 
            - Derives the occupied weight
    
    Args: 
        set01 (class): The knapsack instance
        given time (int): a given time in milliseconds to measure efficiency. 

    Returns: 
        item_vector (np.array): a vector of item where 0 means that the item is not included, 
                                whereas 1 means the item is included.
        num_items_choosen (int): the number of items taken by the algorithm.
        solution_value (int): the total value gained from the algorithm.
        occupied_weight (int): the total weight occupied by the algorithm.

    Total complexity: O((n+1)(W+1)+2n+1) 
    """

    # Update for timing module
    weights = set01.data.W
    values = set01.data.V
    num_items = set01.n
    maximum_weight = set01.wmax

    # Initialization 
    start_time = datetime.datetime.now()
    delta = datetime.timedelta(milliseconds=given_time)
    end_time = start_time + delta
    memoization = -1*np.ones((num_items+1, maximum_weight+1))
    print("Finish Running Initialization")

    # Algorithm
    maximum_value, memoization, item_calculated_at_stop_time = top_down_memoization(num_items, maximum_weight, weights, values, memoization, given_time, end_time)
    print(f"Maximum Value = {maximum_value}")
    print(f"Item calculated at stop time: {item_calculated_at_stop_time}")
    print("Finish Running Algorithm")

     # Conclusion
    item_vector = np.zeros((num_items))
    item_vector = tracing_dynamic_programming_solution(item_calculated_at_stop_time, maximum_weight, weights, memoization, item_vector)
    num_items_choosen = sum(item_vector)
    occupied_weight = sum(weights[i] if item_vector[i]==1 else 0 for i in range(len(item_vector)))
    
    # Debugging
    print("Finish Finding Conclusion")
    print(f'Solution Value = {maximum_value}')
    print(f'Number of Items Choosen = {num_items_choosen}')
    print(f'Occupied Weight = {occupied_weight}')
    print(f'Knapsack Capacity = {maximum_weight}')
    
    return item_vector, num_items_choosen, maximum_value, occupied_weight

if __name__ == '__main__':
    # The prompt 
    input_type = input("Please input the extension of the file [type 'c' for .csv and 't' for .txt]: ")
    input_path = input('Please input the path of the test file [for instance, dir/test.csv]: ')
    given_time = input('What would be the given time in minute for the benchmarking of quality solution [type 0 if you want to benchmark running time]: ')

    given_time = int(given_time)

    # Manage the input path  
    path = input_path.split('/')
    path = os.path.join(*path)
    
    # Retrieve 0/1 Knapsack instance from a file
    knapsackInstance = Set01KnapSack()
    num_items, maximum_weight, sum_values, data = knapsackInstance.uploadFile(path, input_type)

    # Retrieve the arrays of weights and values
    weights = data['W'].to_numpy()
    values = data['V'].to_numpy()

    # Apply the top-down approach
    item_vector, num_items_choosen, solution_value, occupied_weight = top_down_approach(knapsackInstance, given_time)

    # Create an output table
    text = f"Top-down approach, Dynamic Programming \t\t\t{num_items}\t\t \t\t\t\t{maximum_weight}\t \t\t\t\t{sum_values}\t\t \t\t\t\t{num_items_choosen}\t\t \t\t\t{occupied_weight}\t \t\t{solution_value}\t\t"
    knapsackInstance.writeOutput(text) 
