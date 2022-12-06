"""
Description: 
    This module aims to solve 0/1 knapsack using dynamic programming technique in a bottom-up manner.
    Basically, dynamic programming breaks the problem into smaller sub-problems, computes optimal
    sub-solutions, and stores the result in the memory to reuse them repeatedly. 
    
    In order to solve 0/1 knapsack problem, dynamic programming maximizes the value retrieves from 
    a subset of items. 
    
    A bottom-up approach solves sub-problems from a bottom state and stores sub-solutions in a table. 
    In other words, the algorithm operates from the top-left cell of the table, where rows represent
    items from 0 to n, and columns represent possible sum of weights from 0 to W. Note that n is the total 
    number of items, and W is knapsack capacity. This means the first row and the first columns are 
    filled with 0 as base case.

    The complexity of the algorithm is O((n+1)(W+1)). The space of the algorithm is also O((n+1)(W+1)) as 
    equal to the size of the table.

Author: Chadapohn CHAOSRIKUL

References: 
    1. The optimal substructure and recursive principle: the teacher's slide.
    2. The Algorithm: https://en.wikipedia.org/wiki/Knapsack_problem#0-1_knapsack_problem
    3. The illustration of the algorithm: https://www.youtube.com/watch?v=sVAB0p58tlg&t=1880s

Updates: 
    1. By Landry: 
        - Changed the timing stop, it also returns the latest calculated item. So, the recusivity part, 
        inside helper.py will begin to this item instead of begining at the end, to avoid tracing
        rows that are filled with 0. 
    2. By Landry: 
        - Formalized input and output.
"""

# Import Python Modules
import numpy as np
import datetime
import sys, os
from pathlib import Path

#  Set directory paths for external modules
if not str(Path(__file__).resolve().parent.parent) in sys.path :
    sys.path.insert(0, str(Path(__file__).resolve().parent.parent.parent.parent))
    sys.path.insert(0, str(Path(__file__).resolve().parent.parent.parent))

# Import external modules
# A module for tracing Dynamic Programming's solution
from helper import tracing_dynamic_programming_solution
# A module for retrieving 0/1 Knapsack instance
from classes import Set01KnapSack
# A module for timing
from external import compute_run_time

def bottom_up_tabularization(num_items: int, maximum_weight: int, weights: np.array, values: np.array, tabularization: np.array, given_time: int, end_time: int) -> tuple([np.array, int]):
    """
    Description:
        This method computes the optimal subsolutions and stores them in a table. Recall that rows represent
        items from 0 to n, and columns represent possible sum of weights from 0 to W. Also recall that the operation
        starts at the top-left cell.

    Args:
        num_items (int): the total number of input items.
        maximum_weight (int): knapsack capacity.
        weights (np.array): an array of item weights.
        values (np.array): an array of item values. 
        tabularization (np.array): a table stores sub-solutions. Initialized to 0.
        given_time (int): a given time in milliseconds to measure efficiency.
        end_time (int): a time when the algorithm stops.

    Returns:
        tabularization (np.array): the same meaning as mentioned above.
        item (int) or num_items (int): If it is item, means that the algorithm returns the latest calulated item 
                                       after the time has stopped. If it is num_items means that the algorithm returns 
                                       the total items that are computed, which is equal to the number of input items.

    Complexity: O((n+1)(W+1)). Recall that n is the total number of items, and W is knapsack capacity.
    """
    
    # The number of rows is equal to n+1
    for item in range(num_items+1): 
         # The number of columns is equal to W+1
        for sum_of_weights in range(maximum_weight+1): 
            """The base cases:
                - When there is no item.
                - When the knapsack capacity is exceeded.
            """
            if item == 0 or maximum_weight == 0: 
                tabularization[item][sum_of_weights] = 0

            # The item is included in the knapsack.
            elif weights[item-1] <= sum_of_weights:
                # The algorithm possibly takes the remaining value.
                value_excluding_the_new_weight = tabularization[item-1][sum_of_weights]
                
                """The algorithm also possibly takes the new value. The value retrieved is equal to
                the new value + the remaining value which the new weight is spent.  
                """
                value_including_the_new_weight = values[item-1] + tabularization[item-1, int(sum_of_weights-weights[item-1])]
                
                # Retrive the maximum gain between these two.
                tabularization[item][sum_of_weights] = max(value_excluding_the_new_weight, value_including_the_new_weight)
            
            # The item is not included in the knapsack.
            elif weights[item-1] > sum_of_weights: 
                # The algorithm takes the remaining value.
                tabularization[item][sum_of_weights] = tabularization[item-1][sum_of_weights]  
          
        # Timing module
        current_time = datetime.datetime.now()
        if given_time != 0:    
            if current_time >= end_time:
                """ The timing module waits until the entire row is filled, and returns the latest calculated item.
                So that to avoid tracing rows filled with 0.
                """
                return tabularization, item
          
    return tabularization, num_items


def bottom_up_approach(set01 : Set01KnapSack, given_time: int = 0) -> tuple([np.array, int, int, int]):
    """
    Description:
        This method executes the whole process of the algorithm. 
        Mainly, it triggers:
            - The execution of the bottom-up approach
            - The solution tracing function 
            - Derives the occupied weight
            - Derives the total value selected
    
    Args: 
        set01 (class): The knapsack instance
        given time (int): a given time in milliseconds to measure efficiency. 

    Returns: 
        item_vector (np.array): a vector of item where 0 means that the item is not included, 
                                whereas 1 means the item is included.
        num_items_choosen (int): the number of items taken by the algorithm.
        solution_value (int): the total value gained from the algorithm.
        occupied_weight (int): the total weight occupied by the algorithm.

    Total complexity: O((n+1)(W+1)+3n+1) 
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
    tabularization = np.zeros((num_items+1, maximum_weight+1))
    print("Finish Running Initialization")

    # Algorithm
    tabularization, item_calculated_at_stop_time = bottom_up_tabularization(num_items, maximum_weight, weights, values, tabularization, given_time, end_time)
    print("Finish Running Algorithm")
    item_vector = np.zeros((num_items))

    # Conclusion
    item_vector = tracing_dynamic_programming_solution(item_calculated_at_stop_time, maximum_weight, weights, tabularization, item_vector)
    num_items_choosen = sum(item_vector)
    occupied_weight = sum(weights[i] if item_vector[i]==1 else 0 for i in range(len(item_vector)))
    solution_value = sum(values[i] if item_vector[i]==1 else 0 for i in range(len(item_vector)))
    print("Finish Finding Conclusion")

    # Debugging
    print(f'Solution Value = {solution_value}')
    print(f'Number of Items Choosen = {num_items_choosen}')
    print(f'Occupied Weight = {occupied_weight}')
    print(f'Knapsack Capacity = {maximum_weight}')
    
    np.set_printoptions(threshold=10000)
    # print(item_vector)
    # print(tabularization)

    return item_vector, num_items_choosen, solution_value, occupied_weight

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

    # Apply the bottom-up approach
    item_vector, num_items_choosen, solution_value, occupied_weight = bottom_up_approach(knapsackInstance, given_time)

    # Create an output table
    text = f"Bottom-up approach, Dynamic Programming \t\t\t{num_items}\t\t \t\t\t\t{maximum_weight}\t \t\t\t\t{sum_values}\t\t \t\t\t\t{num_items_choosen}\t\t \t\t\t{occupied_weight}\t \t\t{solution_value}\t\t"
    knapsackInstance.writeOutput(text) 


