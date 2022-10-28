"""
A Dynamic programming solution, bottom-up version, for 0/1 Knapsack problem.
"""

import numpy as np
import sys, os

sys.path.append(os.path.join(os.path.dirname(__file__),'..', '..', "Class"))

import Set01KnackSack as f

objectData = f.Set01KnackSack().uploadCsvFile("0_1_kp_REF_10_100_221016.csv")
# objectData.data()

# def generate_table():

values = np.array([1, 2, 10])
weights = np.array([3, 4, 7])
maximum_weight = 10
num_items = len(weights)
table = np.zeros((num_items + 1, maximum_weight + 1))
# print(num_items)
# print(table)

for i in range(num_items + 1): # The selection weight
    for j in range(maximum_weight + 1): # The new weight limit
        if i == 0 or maximum_weight == 0: # The base cases: there's no item to select or 
            table[i][j] = 0
        elif weights[i-1] <= j:
            print(weights[i-1], j)
            # print(weights[i-1], j)
            # excluding_the_new_weight = table[i-1][j]
            # including_the_new_weight = values[i-1] + table[(j - weights[i-1])]
            # print(weights[i-1], j - weights[i-1])
            # table[i][j] = np.argmax([excluding_the_new_weight, including_the_new_weight])
        # elif weights[i-1] > j: # The selection weight is greater than the new weight limit
            # Copy the value from the previous row above
            # table[i][j] = table[i-1][j]            

print(table)
# print(max(1, 2))
# print(np.argmax([1, 2]))
