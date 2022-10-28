"""
1. With genetic programming, we first initialize the population
the population consists of individuals, here an individual is a possible solution
A chromosome is the string that contains info about the solution/individual
A gene is a character inside the chromosome/string gene = {0, 1} 
2.Then we select the most 'fit' individuals
3. We cross the fit individuals to produce more fit offspring
4. we mutate the offspring to create genetic variation
"""
"""
Now we are helping a theif rob a museum,
the shop has 10 items, we have a bag tht can carry 35kg
and we want to maximize the price of all the items we carry
"""
import numpy as np
import pandas as pd
import random as rd

KNAPSACK_THRESHOLD = 35
NO_OF_ITEMS = 10

item_number = np.arange(1, 11) # [ 1  2  3  4  5  6  7  8  9 10]
weight = np.random.randint(1, 15, size=NO_OF_ITEMS) # a list of weights from 1-14 10 times i.e for each item, generate a weight
value = np.random.randint(10, 750, size=NO_OF_ITEMS)

# TODO 1: initialize the population
solutions_per_population = 5 # individuals
pop_size = (solutions_per_population, item_number.shape[0]) # (5, 10)
initial_population = np.random.randint(2, size=pop_size)
# [[1 1 0 0 1 1 0 0 0 0]
#  [1 0 0 0 1 0 1 1 1 1]
#  [0 1 0 1 0 1 1 1 0 1]
#  [1 0 1 1 0 1 0 0 0 0]
#  [0 1 1 0 0 1 1 0 1 1]
#  [0 1 1 1 1 1 1 1 1 1]
#  [0 0 0 1 1 0 0 0 1 0]
#  [0 1 1 0 0 1 0 0 0 1]]
# initial_population = initial_population.astype(int)


# TODO 2: Fitness
individuals_fitnesses = []
for individual in initial_population:
    chromosome_weight = np.sum(individual * weight)
    if chromosome_weight <= KNAPSACK_THRESHOLD:
        fitness = np.sum(individual * value) # aka chromosome_value
    else:
        fitness = 0
    individuals_fitnesses.append(fitness) # [0, 0, 879, 1736, 1872, 1835, 978, 0]

print(individuals_fitnesses)

# TODO: Selection of fittest individuals
parents = []
no_of_parents = 2
for parent in range(no_of_parents):
    max_fitness_index = np.where(individuals_fitnesses == np.max(individuals_fitnesses)) # (array([4], dtype=int64),)
    parents.append(individuals_fitnesses[max_fitness_index])
    individuals_fitnesses[max_fitness_index] = -1 # so that is in a loop it will not be counted twice
print(max_fitness_index)
print(initial_population[max_fitness_index[0][0]])
# if the number of parents you want is more than one, 
# each time you select the fittest individual,
# you probably want to remove them from the list 
# (i.e remove max fittest from individual fitnesses) 
# so that the next iteration in the loop doesn't select the same individual

# TODO 3: Crossover
# for every 2 individuals, one offspring is created
# create a middle point that will be the crossover point
crossover_point = NO_OF_ITEMS / 2
#  create a crossover rate that is set to a high value
crossover_rate = 0.8

rand_factor = rd.random()
for i in range(solutions_per_population):
    parents[i] #parents[i + 1]
    # for every 2 individuals, a random number between 0 and 1 is generated.
    
    #  if the number is less than or equal to the crossover rate, individuals are mated.


