'''
Description: The class refers to the multiple knapsack problem solved with a randomized implementation. The algorithm searches
a solution using a list representation of the elements and switching the booleans randomly until getting the final solution.
The selection is made based in which are the best opportunities to improve the current solution. When adding, which one increases
the value and when deleting, which does not reduce the value significantly.
Author: Felipe Cortes Jaramillo
Usage: python3 randomized_multiple_knapsack_algorithm.py [type] [path] [iterations] [time]
Args:
    type (string): File type between csv or txt.
    path (string): Name of the file containing the multiple knapsack problem
    iterations (int): Number of iterations which the algorithm will perform
    time (int): Time in Milliseconds of how the algorithms will perform.
References: http://www.sci.brooklyn.cuny.edu/~zhou/papers/repository/doc/tutorial/node6.html
            https://www.sciencedirect.com/science/article/pii/S0304397514007798
'''

# Import modules
import numpy as np
import random
import math
import datetime


def randomized(file, executions, time_min=0, selection_ratio=0.1):
    if (selection_ratio != 0): # if = 0, then don't add it the param, and it will take the default value
        return Multiple_Knapsack_randomized_algorithm(file,int(executions),int(time_min),float(selection_ratio)).multiple_knapsack_randomized_algorithm()
    else:
        return Multiple_Knapsack_randomized_algorithm(file,int(executions),int(time_min)).multiple_knapsack_randomized_algorithm()

class Multiple_Knapsack_randomized_algorithm:

    def __init__(self, file, executions, selection_ratio=0.3, time_min=0):
        '''
        Summary: Constructor, set the important variables for the algorithm execution.
        
        Args:
            n (int): Number of elements in the knapsack.
            max_weight (int): Maximum weight for the knapsack.
            weight_list (list): List containing all the weights of the elements.
            value_list (list): List containing all the values of the elements.
            executions (int): Number of iterations which the algorithm will perform.
            time_min (int): Time in milliseconds to execute the algorithm if there are no elements or the argument is 0, the executions will be taken into account.
            selection_ratio (float): Percentage of the elements which are going to be taking into account for the elite group. This value should be greater than 0
        Complexity: O(1)
        '''
        self.n_elements = 0
        self.n_sacks = 0
        self.w = []
        self.v = []
        self.max_weights = []
        self.best_solution_w = 0
        self.best_solution_v = 0
        self.executions = executions
        self.best_binary_representation = []
        self.best_element_number = 0
        self.current_binary_representation = []
        self.previous_value = 0
        self.restart_flag = False
        self.time_min = int(time_min)
        with open(file) as f:
            definition_problem = f.readline().split()
            self.n_sacks = int(definition_problem[0])
            self.n_elements = int(definition_problem[1])
            strings_max_weights = f.readline().split()
            self.max_weights = list(map(int, strings_max_weights))
            for line in f:
                current_value_weight = line.split()
                self.v.append(int(current_value_weight[0]))
                self.w.append(int(current_value_weight[1]))
        self.control_sacks = [0] * self.n_sacks 
        self.selection_count = int(math.ceil(self.n_elements * selection_ratio))
        
    
    def initial_solution_generator(self):
        '''
        Summary: Function which creates a first solution, picking randomly a representation of n in the total amount of elements. Where 1 is the element located in the
        sack 1. This solution is not optimal and even can not be possible to solve the knapsack problem at first.
        Complexity: O(n)
        '''
        self.current_binary_representation = []
        for i in range(self.n_elements):
            current_random_assignation = random.randint(0,self.n_sacks)
            self.current_binary_representation.append(current_random_assignation)

    def check_viability_weight(self):
        '''
        Summary: Function which checks if the current solution is viable according to the maximum weight. Also, updates the best solution
        according to the modifications along the iterations. Also, if the solution does not vary a lot, it will be flagged a restart of initial point.

        Complexity: O(n) where n is the elements of the sack.
        '''
        sacks_status = {}
        current_total_value = 0
        current_total_weight = 0
        current_elements = 0
        nvalid_sol = False
        for j in range(1,self.n_sacks+1):
            current_sack_value = str(j)+'v'
            current_sack_weight = str(j)+'w'
            sacks_status[current_sack_value] = 0
            sacks_status[current_sack_weight] = 0

        for i in range(0, self.n_elements):
            if self.current_binary_representation[i] != 0:
                current_sack = self.current_binary_representation[i]
                current_sack_value = str(current_sack)+'v'
                current_sack_weight = str(current_sack)+'w'
                sacks_status[current_sack_value] = sacks_status[current_sack_value] + self.v[i]
                sacks_status[current_sack_weight] = sacks_status[current_sack_weight] + self.w[i]
                current_total_value += self.v[i]
                current_total_weight += self.w[i]
                current_elements += 1

        if current_total_value == self.previous_value:
            self.restart_flag = True
        else:
            self.previous_value = current_total_value

        for l in range(1,self.n_sacks+1):
            current_sack_weight = str(l)+'w'
            if sacks_status[current_sack_weight] <= self.max_weights[l-1]:
                self.control_sacks[l-1] = 0
            else:
                nvalid_sol = True
                self.control_sacks[l-1] = 1
        if not nvalid_sol:
            if current_total_value > self.best_solution_v:
                self.best_solution_v = current_total_value
                self.best_solution_w = current_total_weight
                self.best_binary_representation = self.current_binary_representation.copy()
                self.best_element_number = current_elements

    def add_random_element(self):
        '''
        Summary: Function which adds a new element in the current solution. First, it finds which elements are not included in the
        current solution. Then, the values of those elements is sorted and we create an small group of possible elements to add, based
        on the selection count parameter. We pick the best possible group, which are the elements of greater value. Finally, we select randomly one of the best possible options and add it into the group,
        flipping the value of the binary representation of 0 to the sack that can handle this new element without exceeding it's maximum weight.

        Complexity: O(s*n*log(n)) where s is the number of sacks and n the number of elements.
        '''
        for i in range(1,self.n_sacks+1): 
            if self.control_sacks[i-1] == 0:
                not_this_sack_indexes = {}
                not_this_sack_elites = []
                for j in range(0, self.n_elements):
                    if self.current_binary_representation[j] == 0: # It can take from the availables or from the other sack
                        not_this_sack_indexes[j] = self.v[j]
                if not_this_sack_indexes:
                    not_this_sack_indexes_bvalue = dict(sorted(not_this_sack_indexes.items(), key=lambda item: item[1], reverse=True))
                    not_this_sack_elites = list(not_this_sack_indexes_bvalue.keys())[0:self.selection_count]
                    index_to_change = random.choice(not_this_sack_elites)
                    self.current_binary_representation[index_to_change] = i

    def delete_random_element(self):
        '''
        Summary: Function which deletes an element in the current solution. First, it finds which elements are included in the
        current solution. Then, the values of those elements is sorted and we create an small group of possible elements to delete, based
        on the selection count parameter. We pick the best possible group, which are the elements of smaller value. Finally, we 
        select randomly one of the best possible options to delete, flipping the value of the binary representation to 0 for this particular element.
        
        Complexity: O(s*n*log(n)) where s is the number of sacks and n the number of elements.
        '''
        for i in range(1,self.n_sacks+1):
            if self.control_sacks[i-1] == 1:
                this_sack_indexes = {}
                this_sack_elites = []
                for j in range(0, self.n_elements):
                    if self.current_binary_representation[j] == i:
                        this_sack_indexes[j] = self.v[j]
                if this_sack_indexes:
                    this_sack_indexes_bvalue = dict(sorted(this_sack_indexes.items(), key=lambda item: item[1], reverse=False))
                    this_sack_elites = list(this_sack_indexes_bvalue.keys())[0:self.selection_count]
                    index_to_change = random.choice(this_sack_elites)
                    self.current_binary_representation[index_to_change] = 0

    def multiple_knapsack_randomized_algorithm(self):
        '''
        Summary: Function which orchestrate the main algorithm. Basically, iterating for each execution a new modification in the current
        solution, to see if this one is better than the previous solution. Also, there are two ways to execute the module.
        If there is a time different to zero, te algorithm will run over the time indicated. However, if the value is 0, it will take
        the number of executions. It is possible when the executions are finished that the random algorithm did not get a valid solution
        There, no solution is returned.
        Return:
            list: The best binary list containing which elements are taken (with n according to the sack that cointains the elements) and which are not included (with 0).
            int: The total amount of elements in the best solution.
            int: The total weight of the best solution.
            int: The total value of the best soluion.

        Total Complexity: O(s*n*log(n)) where s is the number of sacks and n the number of elements.
        '''
        current_execution = 0
        self.initial_solution_generator()
        if self.time_min != 0:
            start_time = datetime.datetime.now()
            iteration_time = datetime.timedelta(milliseconds=int(self.time_min))
            end_time = start_time + iteration_time
            while True:
                current_time = datetime.datetime.now()
                if start_time <= current_time <= end_time:
                    if self.restart_flag:
                        self.initial_solution_generator()
                        self.restart_flag = False
                    else:
                        self.check_viability_weight()
                        self.delete_random_element()
                        self.check_viability_weight()
                        self.add_random_element()
                elif current_time > end_time:
                    self.check_viability_weight()
                    break
        else:
            while current_execution < self.executions:
                if self.restart_flag:
                    self.initial_solution_generator()
                    self.restart_flag = False
                self.check_viability_weight()
                self.delete_random_element()
                self.check_viability_weight()
                self.add_random_element()
                current_execution += 1
            self.check_viability_weight()
        if len(self.best_binary_representation):
            return self.best_binary_representation, self.best_element_number, self.best_solution_v, self.best_solution_w
        else:
            return [0]*self.n_elements, 0, 0, 0

# Static main model for execution
if __name__ == "__main__":
    mult_kn_instance = Multiple_Knapsack_randomized_algorithm("Path of data", 100, 0.3)
    mult_kn_instance.multiple_knapsack_randomized_algorithm()
    print("Constrains: Weights: {} n_sacks: {} and n_elements: {}".format(mult_kn_instance.max_weights,mult_kn_instance.n_sacks , mult_kn_instance.n_elements))
    print(mult_kn_instance.best_binary_representation)
    print("Best Weight: {}".format(mult_kn_instance.best_solution_w))
    print("Best Value: {}".format(mult_kn_instance.best_solution_v))
