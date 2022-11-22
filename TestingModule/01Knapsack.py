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

def execute_algo(algo_name, instance_values, parameter_values, time_interval, knapsackInstance):
    num_items_choosen = maximum_value = occupied_weight = running_time = -1

    print(f'Running {algo_name}')

    num_items = instance_values['num_items']
    knapsack_capacity = instance_values['knapsack_capacity']
    weights = instance_values['weights']
    values = instance_values['values']

    epsilon = parameter_values['epsilon']
    num_iterations = parameter_values['num_iterations']
    num_generations = parameter_values['num_generations']
    num_individuals = parameter_values['num_individuals']

    # Apply algorithm
    algo_function = algorithms[algo_name]

    if algo_name == 'BruteForce':
        maximum_value, bestAnswer = algo_function(knapsackInstance)

    if algo_name == 'BranchAndBound':
        solution = algo_function(weights, values, knapsack_capacity)
        v, num_items_choosen, occupied_weight, maximum_value = solution[0]
        running_time = solution[1]

    if algo_name == 'RatioSortGreedy':
        weights = weights.to_numpy()
        values = values.to_numpy()
        ratio = weights/values
        items_vector, num_items_choosen, maximum_value, occupied_weight = algo_function(weights, values, ratio, knapsack_capacity)
       
    if algo_name == 'ValueSortGreedy':
        weights = weights.to_numpy()
        values = values.to_numpy()
        items_vector, num_items_choosen, maximum_value, occupied_weight = algo_function(weights, values, knapsack_capacity)
   
    if algo_name == 'WeightSortGreedy':
        items_vector, num_items_choosen, maximum_value, occupied_weight = algo_function(weights, values, knapsack_capacity)

    elif algo_name == 'TopDownDynamicProgramming' or algo_name == 'BottomUpDynamicProgramming':
        solution = algo_function(num_items, knapsack_capacity, weights, values)
        maximum_value, num_items_choosen, occupied_weight = solution[0]
        running_time = solution[1]

    elif algo_name == 'FullyPolyNomial':
        solution = algo_function(weights, values, knapsack_capacity, parameter_values['epsilon'])
        v, num_items_choosen, occupied_weight, maximum_value = solution[0]
        running_time = solution[1]

    elif algo_name == 'Randomized':
        knapsack_randomized_instance = algo_function(num_items, knapsack_capacity, weights, values, num_iterations, time_interval)
        v, num_items_choosen, occupied_weight, maximum_value = knapsack_randomized_instance.knapsack_randomized_algorithm()
    
    elif algo_name == 'GeneticProgramming':
        init_pop = genetic_programming.initialize_pop(item_no=np.arange(1, num_items+1) , no_of_individuals=num_individuals)
        optimal_solu, num_items_choosen, maximum_value, occupied_weight = algo_function(
                no_of_generations=num_generations,
                population=init_pop,
                weights=weights,
                values=values,
                threshold=knapsack_capacity,
                no_items=num_items)


    return num_items_choosen, maximum_value, occupied_weight, running_time

def benchmark(instances, parameters, algorithms, time_interval) -> pd.DataFrame():
    solution_row = []
    knapsackInstance = Set01KnapSack()
    epsilon = knapsackInstance.getEpsilon(parameters['epsilon'])
    num_iterations = knapsackInstance.getNumIterations(parameters['num_iterations'])
    num_generations = knapsackInstance.getNumGenerations(parameters['num_generations'])
    num_individuals = knapsackInstance.getNumIndividuals(parameters['num_individuals'])
    parameter_values = {
        'epsilon': epsilon,
        'num_iterations': num_iterations,
        'num_generations': num_generations,
        'num_individuals': num_individuals
    }
    for index, instance in enumerate(instances):
        num_items, knapsack_capacity, sum_item_values, data = knapsackInstance.uploadFile(instance, 'csv')
        weights = data['W']
        values = data['V']
        print(f'####################Instance {index+1}####################')
        print(f'Number of Items: {num_items}')
        print(f'Maximum Capacity: {knapsack_capacity}')
        print(f'Sum of Item Values: {sum_item_values}\n')

        instance_values = {
            'num_items': num_items,
            'knapsack_capacity': knapsack_capacity,
            'sum_item_values': sum_item_values,
            'weights': weights,
            'values': values
        }

        for algo_name in algorithms:
            num_items_choosen, maximum_value, occupied_weight, running_time = execute_algo(algo_name, instance_values, parameter_values, time_interval, knapsackInstance)
            ratio = round(maximum_value/occupied_weight, 2)
            print(f'Ratio of Value and Weight: {ratio}')
            print(f'Occupied Weights: {occupied_weight}')
            print(f'Number of Items Choosen: {num_items_choosen}')
            print(f'Sum of Solution Values: {maximum_value}')
            print(f'Running Time (ms): {running_time}')
            print() 
        
            solution_row.append([algo_name, num_items, knapsack_capacity, sum_item_values, ratio, num_items_choosen, maximum_value, occupied_weight, running_time, instance])
            
    # solution_df = pd.DataFrame(solution_row, columns=['Algorithm', 'Num Items', 'Knapsack Capacity', 'Item Values' , 'Ratio v/w', 'Nums of Choosen Items', 'Total Choosen Values', 'Total Choosen Weights', 'Running Time', 'Input'])
    # timestr = time.strftime('%Y%m%d_%H%M%S')
    # solution_df.to_csv(os.path.join(os.path.dirname(__file__), '..', '01Knapsack', 'Output', f'01KnapsackBenchMarkResult_{timestr}.csv'), index=False)
    # return solution_df

if __name__ == '__main__':
    get_num_active_processes()

    instances = [
        '0_1_kp_REF_10_100_221016.csv', 
        # '0_1_kp_REF_50_300_221120.csv
    ]

    parameters = {
        'epsilon': os.path.join(os.path.dirname(__file__), '..', '01Knapsack', 'Input', '0_1_kp_epsilon1.txt'),
        'num_iterations': os.path.join(os.path.dirname(__file__), '..', '01Knapsack', 'Input', '0_1_kp_num_iterations.txt'),
        'num_generations': os.path.join(os.path.dirname(__file__), '..', '01Knapsack', 'Input', '0_1_kp_num_generations.txt'),
        'num_individuals': os.path.join(os.path.dirname(__file__), '..', '01Knapsack', 'Input', '0_1_kp_num_individuals.txt'),
    }

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

    time_interval = input("Time to execute the algorithm (0 for solution benchmarking): ")
    benchmark(instances, parameters, algorithms, time_interval)





