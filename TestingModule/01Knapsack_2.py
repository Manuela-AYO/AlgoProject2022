'''
update : Landry Bailly, 25/11/2022
'''

# ------------------- IMPORT PART ------------ #

import sys, os, psutil
import pandas as pd
import numpy as np
import time
import threading

sys.path.append(os.path.join(os.path.dirname(__file__), '..'))
sys.path.append(os.path.join(os.path.dirname(__file__), '..', '01Knapsack'))
sys.path.append(os.path.join(os.path.dirname(__file__), '..', '01Knapsack', 'Algorithms'))
sys.path.append(os.path.join(os.path.dirname(__file__), '..', '01Knapsack', 'Algorithms', 'DynamicProgramming'))

from classes import Set01KnapSack
from external import compute_run_time

from BruteForce import brute_force
from BranchAndBound import branch_bound
from Greedy import ratio_sort_greedy, value_sort_greedy, weight_sort_greedy
from DynamicProgramming import top_down_approach, bottom_up_approach
from FullyPolynomial import fptas
from Randomized.randomized_algorithm import Knapsack_randomized_algorithm
from GeneticProgramming import genetic_programming01 as genetic_programming

# ------------------------ USEFUL FUNCTION ------------------- #

class CustomTimer():
    def __init__(self, interval):
        self.interval = interval
        self.finished = False

    def run(self):
        self.timer = threading.Timer(float(self.interval), self.finish)
        self.timer.start()

    def finish(self):
        self.finished = True
        return True

def get_num_active_processes():
    num_active_processes = len(psutil.pids())
    print(f'Number of active processes: {num_active_processes}')
    # with open(os.path.join(os.path.dirname(__file__), '..', '01Knapsack', 'Output', 'num_active_processes.txt'), 'w') as writer:
    #     writer.write(str(num_active_processes))

def execute_algo(knapSackObject,AlgoName,MTime="-",MIteration="-",SpecificParam="-"):
    # num_items_choosen = maximum_value = occupied_weight = running_time = -1

    print(f'Running {AlgoName}')

    algorithms = {
        'BruteForce': brute_force.bruteforce,
        'BranchAndBound': branch_bound.branch_bound,
        'RatioSortGreedy': ratio_sort_greedy.greedy_ratio_selection,
        'ValueSortGreedy': value_sort_greedy.greedy_value_selection,
        'WeightSortGreedy': weight_sort_greedy.greedy_weight_selection,
        'TopDownDynamicProgramming': top_down_approach.top_down_approach,
        'BottomUpDynamicProgramming': bottom_up_approach.bottom_up_approach,
        'FullyPolyNomial': fptas.fptas,
        'Randomized': Knapsack_randomized_algorithm,
        'GeneticProgramming': genetic_programming.genetic_programming
    }

    # Apply algorithm
    algo_function = algorithms[AlgoName]

    if AlgoName == 'BruteForce':
        maximum_value, bestAnswer = algo_function(knapsackInstance)

    if AlgoName == 'BranchAndBound':
        solution = algo_function(weights, values, knapsack_capacity)
        v, num_items_choosen, occupied_weight, maximum_value = solution[0]
        running_time = solution[1]

    if AlgoName == 'RatioSortGreedy':
        weights = weights.to_numpy()
        values = values.to_numpy()
        ratio = weights/values
        items_vector, num_items_choosen, maximum_value, occupied_weight = algo_function(weights, values, ratio, knapsack_capacity)
       
    if AlgoName == 'ValueSortGreedy':
        weights = weights.to_numpy()
        values = values.to_numpy()
        items_vector, num_items_choosen, maximum_value, occupied_weight = algo_function(weights, values, knapsack_capacity)
   
    if AlgoName == 'WeightSortGreedy':
        items_vector, num_items_choosen, maximum_value, occupied_weight = algo_function(weights, values, knapsack_capacity)

    elif AlgoName == 'TopDownDynamicProgramming' or algo_name == 'BottomUpDynamicProgramming':
        solution = algo_function(num_items, knapsack_capacity, weights, values)
        maximum_value, num_items_choosen, occupied_weight = solution[0]
        running_time = solution[1]

    elif AlgoName == 'FullyPolyNomial':
        solution = algo_function(weights, values, knapsack_capacity, parameter_values['epsilon'])
        v, num_items_choosen, occupied_weight, maximum_value = solution[0]
        running_time = solution[1]

    elif AlgoName == 'Randomized':
        knapsack_randomized_instance = algo_function(num_items, knapsack_capacity, weights, values, num_iterations, time_interval)
        v, num_items_choosen, occupied_weight, maximum_value = knapsack_randomized_instance.knapsack_randomized_algorithm()
    
    elif AlgoName == 'GeneticProgramming':
        init_pop = genetic_programming.initialize_pop(item_no=np.arange(1, num_items+1) , no_of_individuals=num_individuals)
        optimal_solu, num_items_choosen, maximum_value, occupied_weight = algo_function(
                no_of_generations=num_generations,
                population=init_pop,
                weights=weights,
                values=values,
                threshold=knapsack_capacity,
                no_items=num_items)


    return num_items_choosen, maximum_value, occupied_weight, running_time


# ------------------------ BENCHMARK -------------------------- #
def setEpsilon():
    # epsilon = knapsackInstance.getEpsilon(parameters['epsilon'])
    print("finish")

def benchmarkFor01(CsvName,AlgoName,InstanceName,MTheoricalValue="-",MTime="-",MIteration="-",SpecificParam="-"): # return string "well done, with the result", it write the result on a csv file inside OutputFolder inside 01Knapsack folder
    # ---- OUTPUT INIT --- #
    output = ["-"]*11 # do same as a dataFrame ? Two column, one for value, the other for information
    IndexOut = {algoName:0,instanceName:1,nbItem:2,mWeight:3,mTheoricalValue:4,mTime:5,mIteration:6,realTime:7,realValue:8,realWeight:9,realNbItem:10,specificParam:11}
    
    # -------TESTING MODULE ------ #
    knapsackInstance = Set01KnapSack()
    knapsackInstance.uploadData(InstanceName,'c')

    weights = knapsackInstance.data['W']
    values = knapsackInstance.data['V']
    num_items = knapsackInstance.n
    knapsack_capacity = knapsackInstance.wmax
    print("--------Curent TEST (algo : ",AlgoName," Instance : ",InstanceName)
    print(f'Number of Items: {num_items}')
    print(f'Maximum Capacity: {knapsack_capacity}')
    # print(f'Sum of Item Values: {sum_item_values}\n')

    instance_values = {
        'num_items': num_items,
        'knapsack_capacity': knapsack_capacity,
        'sum_item_values': sum_item_values,
        'weights': weights,
        'values': values
    }

    num_items_choosen, maximum_value, occupied_weight, running_time = execute_algo(algo_name, instance_values, parameter_values, time_interval, knapsackInstance)
    ratio = round(maximum_value/occupied_weight, 2)
    print(f'Ratio of Value and Weight: {ratio}')
    print(f'Occupied Weights: {occupied_weight}')
    print(f'Number of Items Choosen: {num_items_choosen}')
    print(f'Sum of Solution Values: {maximum_value}')
    print(f'Running Time (ms): {running_time}')
    print() 
    
    output = [algo_name, num_items, knapsack_capacity, sum_item_values, ratio, num_items_choosen, maximum_value, occupied_weight, running_time, instance]
    # ----- ADD OUTPUT TOO CSV ----- #
    # solution_df = pd.DataFrame(solution_row, columns=['Algorithm', 'Num Items', 'Knapsack Capacity', 'Item Values' , 'Ratio v/w', 'Nums of Choosen Items', 'Total Choosen Values', 'Total Choosen Weights', 'Running Time', 'Input'])
    # timestr = time.strftime('%Y%m%d_%H%M%S')
    
    output.to_csv(os.path.join(os.path.dirname(__file__), '..', '01Knapsack', 'Output', CsvName), index=False) # check to add line without deleting the beginning
    return output

if __name__ == '__main__':
    get_num_active_processes()

    instances = [
        '0_1_kp_REF_10_100_221016.csv', 
        # '0_1_kp_REF_50_300_221120.csv
    ]

    parameters = {
        'epsilon': os.path.join(os.path.dirname(__file__), '..', '01Knapsack', 'Input', '0_1_kp_epsilon1.txt'), # don't need
        'num_iterations': os.path.join(os.path.dirname(__file__), '..', '01Knapsack', 'Input', '0_1_kp_num_iterations.txt'),
        'num_generations': os.path.join(os.path.dirname(__file__), '..', '01Knapsack', 'Input', '0_1_kp_num_generations.txt'),
        'num_individuals': os.path.join(os.path.dirname(__file__), '..', '01Knapsack', 'Input', '0_1_kp_num_individuals.txt'),
    }

    time_interval = input("Time to execute the algorithm (0 for solution benchmarking): ")
    benchmark(instances, parameters, algorithms, time_interval)





