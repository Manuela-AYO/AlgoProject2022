import sys, os, psutil
import pandas as pd
import time

sys.path.append(os.path.join(os.path.dirname(__file__), '..'))
sys.path.append(os.path.join(os.path.dirname(__file__), '..', '01Knapsack'))
sys.path.append(os.path.join(os.path.dirname(__file__), '..', '01Knapsack', 'Algorithms'))
sys.path.append(os.path.join(os.path.dirname(__file__), '..', '01Knapsack', 'Algorithms', 'DynamicProgramming'))

from classes import Set01KnapSack
from external import compute_run_time

# from BruteForce import test
from BranchAndBound import branch_bound
# from Greedy import test, test2
from DynamicProgramming import top_down_approach, bottom_up_approach
from FullyPolynomial import fptas
# from Randomized import Knapsack_randomized_algorithm
# from GeneticProgramming import main


def benchmarking(algorithms: dict, instances: list) -> pd.DataFrame():
    solution_row = []

    knapsackInstance = Set01KnapSack()

    path = input("Path to the ε file[e.g : file/my_file.csv] : ")
    path = path.split("/")
    path_file = os.path.join(*path)
    epsilon = knapsackInstance.getEpsilon(path_file)

    for index, instance in enumerate(instances):
        num_items, knapsack_capacity, sum_item_values, data = knapsackInstance.uploadFile(instance, 'csv')
        weights = data['W']
        values = data['V']
        print(f'####################Instance {index+1}####################')
        print(f'Number of Items: {num_items}')
        print(f'Maximum Capacity: {knapsack_capacity}')
        print(f'Sum of Item Values: {sum_item_values}\n')

        for algo_name in algorithms:
            
            print(f'Running {algo_name}')

            # Apply algorithm
            algo_function = algorithms[algo_name]

            if algo_name == 'BranchAndBound':
                solution = algo_function(weights, values, knapsack_capacity)
                v, num_items_choosen, occupied_weight, maximum_value = solution[0]
                running_time = solution[1]

            elif algo_name == 'TopDownDynamicProgramming' or algo_name == 'BottomUpDynamicProgramming':
                solution = algo_function(num_items, knapsack_capacity, weights, values)
                maximum_value, num_items_choosen, occupied_weight = solution[0]
                running_time = solution[1]

            if algo_name == 'FullyPolyNomial':
                solution = algo_function(weights, values, knapsack_capacity, epsilon)
                v, num_items_choosen, occupied_weight, maximum_value = solution[0]
                running_time = solution[1]

            # if algo_name == 'Randomized':
            #     iterations = 100
            #     knapsack_randomized_instance = algo_function(num_items, knapsack_capacity, weights, values, iterations)
            #     v, num_items_choosen, occupied_weight, maximum_value = knapsack_randomized_instance.knapsack_randomized_algorithm()

            ratio = round(maximum_value/occupied_weight, 2)
            print(f'Ratio of Value and Weight: {ratio}')
            print(f'Occupied Weights: {occupied_weight}')
            print(f'Number of Items Choosen: {num_items_choosen}')
            print(f'Sum of Solution Values: {maximum_value}')
            print(f'Running Time (ms): {running_time}')
            print()

            solution_row.append([algo_name, num_items, knapsack_capacity, sum_item_values , ratio, num_items_choosen, maximum_value, occupied_weight, running_time, instance])
            
    solution_df = pd.DataFrame(solution_row, columns=['Algorithm', 'Num Items', 'Knapsack Capacity', 'Item Values' , 'Ratio v/w', 'Nums of Choosen Items', 'Total Choosen Values', 'Total Choosen Weights', 'Running Time', 'Input'])
    timestr = time.strftime('%Y%m%d_%H%M%S')
    solution_df.to_csv(f'01KnapsackBenchMarkResult_{timestr}.csv', index=False)
    return solution_df

if __name__ == '__main__':
    num_active_processes = len(psutil.pids())
    print(f'Number of active processes: {num_active_processes}')
    with open('num_active_processes.txt', 'w') as f:
        f.write(str(num_active_processes))

    algorithms = {
        "BranchAndBound": branch_bound.branch_bound,
        "TopDownDynamicProgramming": top_down_approach.top_down_approach,
        "BottomUpDynamicProgramming": bottom_up_approach.bottom_up_approach,
        "FullyPolyNomial": fptas.fptas,
        # "Randomized": Knapsack_randomized_algorithm()
    }

    instances = [
        '0_1_kp_REF_10_100_221016.csv', 
        '0_1_kp_REF_50_300_221120.csv'
    ]
    
    benchmarking(algorithms, instances)







