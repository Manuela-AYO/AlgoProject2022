'''
Description: The class refers to the 0/1 knapsack problem solved with a randomized implementation. The algorithm searches
a solution using a binary representation of the elements and switching the booleans randomly until getting the final solution.
The selection is made based in which are the best opportunities to improve the current solution. When adding, which one increases
the value and when deleting, which does not reduce the value significantly.

Author: Felipe Cortes Jaramillo

Usage: python3 01_ks_randomized_algo.py [type] [path] [iterations]

Args:
    type (string): File type between csv or txt.
    path (string): Name of the file containing the knapsack 0/1 problem
    iterations (int): Number of iterations which the algorithm will perform

References: http://www.sci.brooklyn.cuny.edu/~zhou/papers/repository/doc/tutorial/node6.html

'''

# Import modules
import numpy as np
import random
import datetime
import sys
from pathlib import Path

# External module imports
if not str(Path(__file__).resolve().parent.parent) in sys.path :
    sys.path.insert(0, str(Path(__file__).resolve().parent.parent.parent.parent))
    sys.path.insert(0, str(Path(__file__).resolve().parent.parent.parent))

# Other elements
from classes import Set01KnapSack
from external import compute_run_time

class Knapsack_randomized_algorithm:

    n = 0
    w = []
    v = []
    selection_count = 0
    max_weight = 0
    best_solution_w = 0
    best_solution_v = 0
    best_binary_representation = []
    current_binary_representation = []
    executions = 0
    time_min = 0
    best_elements_number = 0

    def __init__(self, n, max_weigth, weight_list, value_list, executions, time_min=0, selection_ratio=0.1):
        '''
        Summary: Constructor, set the important variables for the algorithm execution.
        
        Args:
            n (int): Number of elements in the knapsack.
            max_weight (int): Maximum weight for the knapsack.
            weight_list (list): List containing all the weights of the elements.
            value_list (list): List containing all the values of the elements.
            executions (int): Number of iterations which the algorithm will perform.
            time_min (int): Time in minutes to execute the algorithm if there are no elements or the argument is 0, the executions will be taken into account.
            selection_ration (float): Porcentage of the elements which are going to be taking into account for the elite group.

        Complexity: O(1)
        '''
        self.n = n
        self.w = weight_list
        self.v = value_list
        self.max_weight = max_weigth
        self.best_solution_w = 0
        self.best_solution_v = 0
        self.executions = executions
        self.time_min = int(time_min)
        self.best_elements_number = 0
        self.selection_count = int(round(self.n * selection_ratio))
    
    def initial_solution_generator(self):
        '''
        Summary: Function which creates a first solution, picking randomly a representation of binaries in the total amount of elements.
        This solution is not optimal and even can not be possible to solve the knapsack problem at first.

        Complexity: O(n)
        '''
        ratio = random.random()
        self.current_binary_representation = np.random.binomial(n=1, p=ratio, size=[self.n])

    def check_viability_weight(self):
        '''
        Summary: Function which checks if the current solution is viable according to the maximum weight. Also, updates the best solution
        according to the modifications along the iterations.

        Returns:
            True: When the curent solution is valid. In other words, it is lower than the bound of the maximum weight.
            False: Otherwise.

        Complexity: O(n)
        '''
        acum_w = 0
        acum_v = 0
        counter_elements = 0
        for i in range(0, self.n):
            if self.current_binary_representation[i] == 1:
                acum_w += self.w[i]
                acum_v += self.v[i]
                counter_elements += 1
        if acum_w > self.max_weight:
            return False
        else:
            if acum_v > self.best_solution_v:
                self.best_solution_w = acum_w
                self.best_solution_v = acum_v
                self.best_binary_representation = self.current_binary_representation.copy()
                self.best_elements_number = counter_elements
            return True

    def add_random_element(self):
        '''
        Summary: Function which adds a new element in the current solution. First, it finds which elements are not included in the
        current solution. Then, the values of those elements is sorted and we create an small group of possible elements to add, based
        on the selection count parameter. We pick the best possible group, which are the elements of greater value. Finally, we select randomly one of the best possible options and add it into the group,
        flipping the value of the binary representation of 0 to 1 for this particular element.

        Complexity: O(n*log(n))
        '''
        zero_indexes = {}
        zero_elites = []
        for i in range(0, self.n):
            if self.current_binary_representation[i] == 0:
                zero_indexes[i] = self.v[i]
        if zero_indexes:
            zero_indexes_bvalue = dict(sorted(zero_indexes.items(), key=lambda item: item[1], reverse=True))
            zero_elites = list(zero_indexes_bvalue.keys())[0:self.selection_count]
            index_to_change = random.choice(zero_elites)
            self.current_binary_representation[index_to_change] = 1

    def delete_random_element(self):
        '''
        Summary: Function which deletes an element in the current solution. First, it finds which elements are included in the
        current solution. Then, the values of those elements is sorted and we create an small group of possible elements to delete, based
        on the selection count parameter. We pick the best possible group, which are the elements of smaller value. Finally, we 
        select randomly one of the best possible options to delete, flipping the value of the binary representation of 1 to 0 for this particular element.

        Complexity: O(n*log(n))
        '''
        one_indexes = {}
        one_elites = []
        for i in range(0, self.n):
            if self.current_binary_representation[i] == 1:
                one_indexes[i] = self.v[i]
        if one_indexes:
            one_indexes_bvalue = dict(sorted(one_indexes.items(), key=lambda item: item[1], reverse=False))
            one_elites = list(one_indexes_bvalue.keys())[0:self.selection_count]
            index_to_change = random.choice(one_elites)
            self.current_binary_representation[index_to_change] = 0

    def knapsack_randomized_algorithm(self):
        '''
        Summary: Function which orchestrate the main algorithm. Basically, iterating for each execution a new modification in the current
        solution, to see if this one is better than the previous solution. Also, there are two ways to execute the module.
        If there is a time different to zero, te algorithm will run over the time indicated. However, if the value is 0, it will take
        the number of executions.

        Return:
            list: The best binary list containing which elements are taken (with 1) and which are not included (with 0).
            int: The total amount of elements in the best solution.
            int: The total weight of the best solution.
            int: The total value of the best soluion.

        Total Complexity: O(n*log(n))
        '''
        current_execution = 0
        self.initial_solution_generator()
        if self.time_min != 0:
            start_time = datetime.datetime.now()
            iteration_time = datetime.timedelta(minutes=int(self.time_min))
            end_time = start_time + iteration_time
            while True:
                current_time = datetime.datetime.now()
                if start_time <= current_time <= end_time:
                    if self.check_viability_weight():
                        self.add_random_element()
                    else:
                        self.delete_random_element()
                elif current_time > end_time:
                    self.check_viability_weight()
                    break
        else:
            while current_execution < self.executions:
                current_execution += 1
                if self.check_viability_weight():
                    self.add_random_element()
                else:
                    self.delete_random_element()
            self.check_viability_weight()
        return self.best_binary_representation, self.best_elements_number, self.best_solution_w, self.best_solution_v

# Static main model for execution
if __name__ == "__main__":
    knapsack_generator = Set01KnapSack()
    type = input("Which type of file is it(t for text, c for csv) ? ")
    path = input("Path to the file[e.g : my_file.csv] : ")
    iterations = input("How many iterations to execute the algorithm : ")
    time = input("Time to execute the algorithm (0 if want execution by iterations) : ")
    nb_items, sack_weight, items_value, df = knapsack_generator.uploadFile(path, type)
    weights_initial = np.array(df["W"])
    values_initial = np.array(df["V"])
    knapsack_randomized_instance = Knapsack_randomized_algorithm(nb_items, sack_weight, weights_initial, values_initial, iterations, time)
    v, nb_items_chosen, total_weight, total_value = knapsack_randomized_instance.knapsack_randomized_algorithm()
