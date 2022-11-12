"""
A Dynamic programming solution, bottom-up version, for 0/1 Knapsack problem.
Return sum of the values, sum of the weights
Author: Chadapohn CHAOSRIKUL
References:
1. Top-down memonization comes from the course slide.
2. Method for deriving the subset comes from https://en.wikipedia.org/wiki/Knapsack_problem.
"""
import numpy as np
import sys, os
sys.path.append(os.path.join(os.path.dirname(__file__),'..', '..', "Class"))
import Set01KnackSack as f

def bottom_up(values: np.array, weights: np.array, maximum_weight: int, num_items: int) -> tuple([int, np.array]):
    table = np.zeros((num_items + 1, maximum_weight + 1))
    for i in range(num_items + 1): # The weight of the current object
        for j in range(maximum_weight + 1): # The new weight limit
            if i == 0 or maximum_weight == 0: # The base cases:
                # Set the total value to 0
                table[i][j] = 0

            elif weights[i-1] <= j: # The weight of the current object <= the new weight limit
                # Case 1: The total value if we excluding the current object
                excluding_the_new_weight = table[i-1][j]
                
                # Case 2: The total value if we including the current object
                including_the_new_weight = values[i-1] + table[i-1, j-weights[i-1]]

                # Get the maximum total value between the cases above
                table[i][j] = max(excluding_the_new_weight, including_the_new_weight)
            
            elif weights[i-1] > j: # The weight of the current object > the new weight limit
                # Excluding the current object, get the total value from the previous row
                table[i][j] = table[i-1][j]            

    maximum_value = table[num_items][maximum_weight]
    return maximum_value, table

def solution(i: int, j: int, weights: np.array, table: np.array, item_indices_of_optimal_knapsack: list=[]) -> list:
    print(i, j)
    if i == 0:
        return item_indices_of_optimal_knapsack
    if table[i, j] > table[i-1, j]:
        item_indices_of_optimal_knapsack.append(i)
        solution(i-1, j-weights[i-1], weights, table, item_indices_of_optimal_knapsack)
        return item_indices_of_optimal_knapsack 
    else:
        solution(i-1, j, weights, table)
        return item_indices_of_optimal_knapsack

######################################################
##### Testing section for the bottom-up approach #####
######################################################

# The 0/1 Knapsack instaces from the excercise sheet
# values = np.array([10, 1, 2])
# weights = np.array([7, 3, 4])
# maximum_weight = 10
# num_items = len(weights)
# maximum_value, table = bottom_up(values, weights, maximum_weight, num_items)
# item_indices_of_optimal_knapsack = solution(num_items, maximum_weight, weights, table)
# print('#############################################')
# print(values)
# print(weights)
# print(maximum_value)
# print(maximum_weight)
# print(table)
# print(item_indices_of_optimal_knapsack)

values = np.array([6, 5, 9])
weights = np.array([10, 7, 6])
maximum_weight = 10
num_items = len(weights)
maximum_value, table = bottom_up(values, weights, maximum_weight, num_items)
item_indices_of_optimal_knapsack = solution(num_items, maximum_weight, weights, table)
print('#############################################')
print(values)
print(weights)
print(maximum_value)
print(maximum_weight)
print(table)
print(item_indices_of_optimal_knapsack)

# The 0/1 Knapsack instances from the generator: num_items= 10, the_maximum_weight=100
# objectData = f.Set01KnackSack().uploadCsvFile("0_1_kp_REF_10_100_221016.csv")
# values = objectData.data.V.to_numpy()
# weights = objectData.data.W.to_numpy()
# maximum_weight = objectData.wmax
# bottom_up(values, weights, maximum_weight)