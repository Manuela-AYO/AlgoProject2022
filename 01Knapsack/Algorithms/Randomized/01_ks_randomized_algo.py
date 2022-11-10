import numpy as np
import random

class Knapsack_randomized_algorithm:

    n = 0
    w = []
    v = []
    max_weight = 0
    best_solution_w = 0
    best_solution_v = 0
    current_solution = 0
    best_binary_representation = []
    current_binary_representation = []
    executions = 0

    def __init__(self, file, executions):
        self.n = 0
        self.w = []
        self.v = []
        self.max_weight = 0
        self.best_solution_w = 0
        self.best_solution_v = 0
        self.current_solution = 0
        self.executions = executions
        with open(file) as f:
            definition_problem = f.readline().split()
            self.n = int(definition_problem[0])
            self.max_weight = int(definition_problem[1])
            for line in f:
                current_value_weight = line.split()
                self.v.append(int(current_value_weight[0]))
                self.w.append(int(current_value_weight[1]))
    
    def initial_solution_generator(self):
        ratio = random.random()
        self.current_binary_representation = np.random.binomial(n=1, p=ratio, size=[self.n])

    def check_viability_weight(self):
        acum_w = 0
        acum_v = 0
        for i in range(0, self.n):
            if self.current_binary_representation[i] == 1:
                acum_w += self.w[i]
                acum_v += self.v[i]
        if acum_w > self.max_weight:
            return False
        else:
            if acum_v > self.best_solution_v:
                self.best_solution_w = acum_w
                self.best_solution_v = acum_v
                self.best_binary_representation = self.current_binary_representation
            return True

    def add_random_element(self):
        zero_indexes = []
        for i in range(0, self.n):
            if self.current_binary_representation[i] == 0:
                zero_indexes.append(i)
        index_to_change = random.choice(zero_indexes)
        self.current_binary_representation[index_to_change] = 1

    def delete_random_element(self):
        one_indexes = []
        for i in range(0, self.n):
            if self.current_binary_representation[i] == 1:
                one_indexes.append(i)
        index_to_change = random.choice(one_indexes)
        self.current_binary_representation[index_to_change] = 0

    def generate_random_solution(self):
        current_execution = 0
        self.initial_solution_generator()
        while current_execution < self.executions:
            current_execution += 1
            if self.check_viability_weight():
                self.add_random_element()
            else:
                self.delete_random_element()
        self.check_viability_weight()

if __name__ == "__main__":
    kn_instance = Knapsack_randomized_algorithm("data_test", 100)
    kn_instance.generate_random_solution()
    print("Constrains: Weight: {} and n: {}".format(kn_instance.max_weight, kn_instance.n))
    print(kn_instance.best_binary_representation)
    print("Best Weight: {}".format(kn_instance.best_solution_w))
    print("Best Value: {}".format(kn_instance.best_solution_v))
