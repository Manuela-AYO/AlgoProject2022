'''
Description: The class refers to the 0/1 knapsack problem solved with the ant colony implementation. This algorithm searches a
solution based in the search of different workers (ants) that give a local solution and follows a common baseline which is called
the pheromone trait. Once some solutions are found, the pheromone changes in order to show the other workers some insights of the
best solutons possible. In each search and iteration, the best solution is recorded and when the method finish, the best global
solution found during the execution is returned.

Author: Felipe Cortes Jaramillo
update Landry : just formalized input and output

Usage: python3 ant_colony_algorithm.py [type] [path] [iterations] [n_ants] [decay_rate] [time_min]

Args:
    type (string): File type between csv or txt.
    path (string): Name of the file containing the knapsack 0/1 problem
    iterations (int): Number of iterations which the algorithm will perform
    n_ants (int): Number of ants that will be created during each iteration.
    decay_rate (float): Decay of the pheromone trait during execution
    time_min (int): Execution time in minutes. If this value is 0, the iterations will be taken into account.

References: https://repozytorium.biblos.pk.edu.pl/redo/resources/30706/file/suwFiles/SchiffK_AntColony.pdf
            https://github.com/armoner24/Knapsack-by-ACO
            https://www.mecs-press.org/ijisa/ijisa-v11-n2/IJISA-V11-N2-2.pdf
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


# ----FOR TESTING MODULE---- #
def ant_colony_algorithm(set01 : Set01KnapSack, executions, n_ants,decay=0.5, tolerance=0.01, time_min=0):
    if n_ants == 0:
        print("ERROR : n_ants must be superior to 0")
        return [0]*set01.n, 0, 0, 0

    if decay == 0.0:
        decay2 = 0.5
    else:
        decay2 = decay

    if tolerance == 0.0:
        tolerance2 = 0.01
    else:
        tolerance2 = tolerance

    return Knapsack_ant_colony_algorithm(set01.n,set01.wmax,set01.data.W,set01.data.V,int(executions),int(n_ants),decay2,tolerance2,time_min).knapsack_ant_colony_algorithm()
# -------------------------- #

class Knapsack_ant_colony_algorithm:

    def __init__(self, n, max_weigth, weight_list, value_list, n_iterations, n_ants, decay=0.5, tolerance=0.01,time_min=0):
        '''
        Summary: Constructor, set the important variables for the algorithm execution.

        Args:
            n (int): Number of elements in the knapsack.
            max_weight (int): Maximum weight for the knapsack.
            weight_list (list): List containing all the weights of the elements.
            value_list (list): List containing all the values of the elements.
            n_iterations (int): Number of iterations which the algorithm will perform.
            n_ants (int): Number of ants for each iteration execution.
            decay (float): Decay rate for the pheromone trait after each ant perform their task.
            tolerance (float): Tolerance Ratio to accept the convergence to the solution
            time_min (int): Time in milliseconds to execute the algorithm if there are no elements or the argument is 0, the executions will be taken into account.

        Complexity: O(1)
        '''
        self.n = n
        self.max_weight = max_weigth
        self.w = weight_list
        self.v = value_list
        self.n_ants = n_ants
        self.decay = decay
        self.n_iterations = n_iterations
        self.best_solution_w = 0
        self.best_solution_v = 0
        self.best_elements_number = 0
        self.temporal_n_profit = 0
        self.current_binary_representation = [0] * self.n
        self.best_binary_representation = [0] * self.n
        self.phero_t = [0] * self.n
        self.attr_move_u = [0] * self.n
        self.time_min = int(time_min)
        self.previous_anwser = 0
        self.tolerance = tolerance
        self.convergence = False

    def initiate_configurations(self):
        '''
        Summary: Function which initiates the pheromone trait and the attraction for each element in the knapsack.
        The first one is initatied by ones in each one of the elements, meanwhile, the attraction move will be first
        initialized by the ratio of the value over the weight of each element.

        Complexity: O(n)
        '''
        for i in range(0, self.n):
            self.phero_t[i] = 1
            self.attr_move_u[i] = self.v[i]/self.w[i]

    def check_viability_solution(self):
        '''
        Summary: Function which checks if the current solution is viable according to the maximum weight. Also, updates the best solution
        according to the modifications along the iterations. In case, we find that the current solution change little compared to the tolerance
        we stop the execution.
        
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
        if self.best_solution_v != 0 and (self.best_solution_v - acum_v)/self.best_solution_v <= self.tolerance :
            self.convergence = True
        if acum_v > self.best_solution_v:
                self.best_solution_w = acum_w
                self.best_solution_v = acum_v
                self.best_binary_representation = self.current_binary_representation.copy()
                self.best_elements_number = counter_elements

    def probability_ant_action(self, index, current_selection):
        '''
        Summary: Function which returns the probability of doing the next move with an specific element in the knapsack.
        The value in the pheromone trait and attraction for this element is averaged by the total number of elements already
        in the current solution.

        Args: index (int): Index of the current element which will be introduced in the knapsack.
              current_selection(list of int): Current seleciton of the ant in the knapsack

        Returns: (float): Ratio of the element among the pheromone trait and attraction move with all the elements in the current solution.
        
        Complexity: O(n)
        '''
        current_sum = 0 
        for i in range(0, self.n):
            if current_selection[i] == 1:
                current_sum += float(self.phero_t[i] * self.attr_move_u[i])
        return (self.phero_t[index] * self.attr_move_u[index])/current_sum

    def probability_ant_decision(self, probabilty_action):
        '''
        Summary: This function given the probabiliy of picking an element, decides randomly between taking the element or not.

        Args: probability_action (float): Probability of next action (picking a specific element in the knapsack).

        Returns: True: If the random generated is lower than the threshold of taking the action.
                 False: Otherwise.

        Complexity: O(1)
        '''
        random_desicion = random.uniform(0, 1)
        return random_desicion < probabilty_action

    def update_pheromones(self, current_v):
        '''
        Summary: This function updates the pheromone traits after an ant is done searching for a solution. Here the objects that were
        selected in the solution receive an additional quantity of pheromones. So, they can be selected in the next solution creation.
        In the other hand, the objects that were not selected, are reduced by a half, reducing their likeability.

        Args: current_v (int): Current profit of the ant.

        Complexity: O(n)
        '''
        for i in range(0, self.n):
            if self.current_binary_representation[i] == 1:
                self.phero_t[i] += 1/(1+(self.best_solution_v-current_v)/self.best_solution_v)
            else:
                self.phero_t[i] = self.phero_t[i] * self.decay

    def knapsack_ant_colony_algorithm_iteration(self):
        '''
        Summary: This function does one iteration of the ant colony algorithm. Each ant searches throught the knapsack which elements
        would be part of their solution given the pheromone trait and a random factor. If the element is selected succesfully, it is
        updated in the current solution. Otherwise, it is ignored. The solution made will respect the fact that the weight will not be
        passed. Finally, after each ant has iterated for all the knapsack or there is not more space left in the knapsack. The solution
        is checked to see if it is the best yet and the pheromones are updated for the next ant. 

        Complexity: O(m*n^2) where m is the total ants and n the knapsack size.
        '''
        for ant in range(self.n_ants):
            vc = self.max_weight
            current_profit = 0
            current_selection = self.current_binary_representation.copy()
            for knapsack_element_index in range(self.n):
                current_selection[knapsack_element_index] = 1
                total_propability_action = self.probability_ant_action(knapsack_element_index, current_selection)
                if self.probability_ant_decision(total_propability_action):
                    vc -= self.w[knapsack_element_index]
                    if vc >= 0:
                        current_profit += self.v[knapsack_element_index]
                    else:
                        current_selection[knapsack_element_index] = 0
                else:
                    current_selection[knapsack_element_index] = 0
            if current_profit > self.temporal_n_profit:
                self.temporal_n_profit = current_profit
                self.current_binary_representation = current_selection.copy()
            self.check_viability_solution()
        self.update_pheromones(current_profit)


    def knapsack_ant_colony_algorithm(self):
        '''
        Summary: Main fuction of the algorithm. If the parameter of time is 0, the number of iterations will be taken into account.
        Otherwise, the algorithm will run until the time indicated. For each iteration, a new set of ants will be created and they
        are going to find the solution for the knapsack until the time is reached or the number of iterations. In each iteration we
        check if the tolerance of the solution has been fullfilled. If it is the case, we stop the execution.

        Total Complexity: O(m*n^2) where m is the total ants and n the knapsack size.
        '''
        if self.time_min != 0:
            start_time = datetime.datetime.now()
            iteration_time = datetime.timedelta(milliseconds=int(self.time_min))
            end_time = start_time + iteration_time
            self.initiate_configurations()
            while True:
                current_time = datetime.datetime.now()
                if self.convergence:
                    break
                elif start_time <= current_time <= end_time:
                    self.knapsack_ant_colony_algorithm_iteration()
                elif current_time > end_time:
                    break
        else:
            current_iteration = 1
            self.initiate_configurations()
            while current_iteration < self.n_iterations:
                if self.convergence:
                    break
                self.knapsack_ant_colony_algorithm_iteration()
                current_iteration += 1
        return self.best_binary_representation, self.best_elements_number, self.best_solution_v, self.best_solution_w
    
# Static main model for execution
if __name__ == "__main__":
    knapsack_generator = Set01KnapSack()
    type = input("Which type of file is it(t for text, c for csv) ? ")
    path = input("Path to the file[e.g : my_file.csv] : ")
    n_ants = input("Number of ants for the execution : ")
    decay = input("Decay ratio for the pheromones (you can set this parameter to 0.5) : ")
    iterations = input("How many iterations to execute the algorithm : ")
    time = input("Time to execute the algorithm (0 if want execution by iterations) : ")
    tolerance = input("Tolerance in the error to stop the execution : ")
    nb_items, sack_weight, items_value, df = knapsack_generator.uploadFile(path, type)
    weights_initial = np.array(df["W"])
    values_initial = np.array(df["V"])
    kn_instance = Knapsack_ant_colony_algorithm(nb_items,sack_weight,weights_initial,values_initial,iterations,n_ants,decay,tolerance,time)
    v, nb_items_chosen, total_weight, total_value = kn_instance.knapsack_ant_colony_algorithm()
