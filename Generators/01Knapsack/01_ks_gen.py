'''
Description: This module is in charge of the 0/1 Knapsack problem generator
Author: Felipe Cortes Jaramillo
Date: 16/10/2022
Usage: python3 01_ks_gen.py --n_items [number of items to generate] --capacity_ks [maximum capacity of knapsack]
Output: csv. file in the directory output/
References: http://hjemmesider.diku.dk/~pisinger/codes.html, https://github.com/bjorne/knapsack/blob/master/hack/generate_input.py
'''

import csv
import random
import numpy as np
import argparse

def generate_optimal_partial_solution(capacity_ks, min_weigth=2, max_weigth=12, vpw_factor=5):
    partial_optimal_solution = []
    remaining_capacity = capacity_ks
    while remaining_capacity > 0:
        current_weight = random.randint(min(min_weigth, remaining_capacity), min(max_weigth, remaining_capacity))
        remaining_capacity -= current_weight
        current_value = random.randint(current_weight * vpw_factor, (current_weight * 2) * vpw_factor)
        partial_optimal_solution.append((current_weight, current_value))
    return partial_optimal_solution

def generate_random_items(n_items, max_vpw_ratio, min_val=1, max_val=10):
    current_items = []
    for i in range(0, n_items):
        current_value = random.randint(min_val, max_val)
        max_weight = int(max_vpw_ratio/current_value)
        current_weight = random.randint(min(1, max_weight), max_weight)
        current_items.append((current_weight, current_value))
    return current_items

def generate_knapsack_problem(n_items, capacity_ks):
    partial_optimal_solution = generate_optimal_partial_solution(capacity_ks)
    max_value_per_weight_ratio = np.sum(partial_optimal_solution[1]) / float(np.sum(partial_optimal_solution[0]))
    items = generate_random_items(n_items - len(partial_optimal_solution), max_value_per_weight_ratio)
    items += partial_optimal_solution
    random.shuffle(items)
    with open("./output/knapsack_instances.csv", "w", newline='') as csv_file:
        writer = csv.writer(csv_file, delimiter=',')
        writer.writerow([n_items, capacity_ks])
        for i in items:
            writer.writerow([i[0],i[1]])

if __name__ == "__main__":
    parser = argparse.ArgumentParser(description = "Module which generates the 0/1 Knapsack Problems")
    parser.add_argument('--n_items', metavar='n_items', type=int, help='Number of items to generate')
    parser.add_argument('--capacity_ks', metavar='capacity_ks', type=int, help='Maximum capacity of the Knapsack')
    args = parser.parse_args()
    generate_knapsack_problem(args.n_items, args.capacity_ks)
