import sys, os

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

# rd_instance = Knapsack_randomized_algorithm()
# print(rd_instance())
# print(main.operation())

if __name__ == '__main__':
    algorithms = {
        "TopDownDynamicProgramming": top_down_approach.top_down_approach,
        "BottomUpDynamicProgramming": bottom_up_approach.bottom_up_approach
    }







