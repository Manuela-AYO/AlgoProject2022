"""
1. With genetic programming, we first initialize the population
the population consists of individuals, here an individual is a possible solution
A chromosome is the string that contains info about the solution/individual
A gene is a character inside the chromosome/string gene = {0, 1} 
2.Then we select the most 'fit' individuals
3. We cross the fit individuals to produce more fit offspring
4. we mutate the offspring to create genetic variation

Reference:
1. https://medium.com/koderunners/genetic-algorithm-part-1-intuition-fde1b75bd3f9
2. https://medium.com/koderunners/genetic-algorithm-part-2-implementation-69d77cf668bf
3. https://medium.com/koderunners/genetic-algorithm-part-3-knapsack-problem-b59035ddd1d6
"""
"""
Now we are helping a theif rob a museum,
the shop has 10 items, we have a bag tht can carry 35kg
and we want to maximize the price of all the items we carry
"""
from tkinter import N
import numpy as np
import pandas as pd
import random as rd

KNAPSACK_THRESHOLD = 25
NO_OF_ITEMS = 10
WEIGHT = np.random.randint(1, 15, size=NO_OF_ITEMS) # a list of weights from 1-14 10 times i.e for each item, generate a weight
VALUE = np.random.randint(10, 800, size=NO_OF_ITEMS)
ITEM_NUMBER = np.arange(1, 11) # [ 1  2  3  4  5  6  7  8  9 10]


def initialize_pop(item_no, no_of_solu=5):
    # TODO 1: initialize the population
    solutions_per_population = no_of_solu # individuals
    pop_size = (solutions_per_population, item_no.shape[0]) # (5, 10)
    initial_population = np.random.randint(2, size=pop_size)
    # [[1 1 0 0 1 1 0 0 0 0]
    #  [1 0 0 0 1 0 1 1 1 1]
    #  [0 1 0 1 0 1 1 1 0 1]
    #  [1 0 1 1 0 1 0 0 0 0]
    #  [0 1 1 0 0 1 0 0 0 1]]
    return initial_population


def calc_fitness(population, weight: np.array, value: np.array, threshold):
    """
    Calculates the fitness of each individual in the population
    """
    individuals_fitnesses = []
    for individual in population:
        chromosome_weight = np.sum(individual * weight)
        if chromosome_weight <= threshold:
            fitness = np.sum(individual * value) # aka chromosome_value
        else:
            fitness = 0
        individuals_fitnesses.append(fitness) # [0, 0, 879, 1736, 1872, 1835, 978, 0]

    return individuals_fitnesses


def select_fittest(individuals_fitnesses, population, no_of_parents=3):
    """
    Select the fittest individuals from population (by tournament selection)
    """
    parents = []
    for parent in range(no_of_parents):
        max_fitness_index = np.where(individuals_fitnesses == np.max(individuals_fitnesses)) # (array([4], dtype=int64),)
        max_fitness_index = max_fitness_index[0][0]
        parents.append(population[max_fitness_index])
        individuals_fitnesses[max_fitness_index] = -1 # so that is in a loop it will not be counted twice
    return parents

    # if the number of parents you want is more than one, 
    # each time you select the fittest individual,
    # you probably want to remove them from the list 
    # (i.e remove max fittest from individual fitnesses) 
    # so that the next iteration in the loop doesn't select the same individual


def crossover(no_of_items, parents):
    # TODO 3: Crossover
    # for every 2 individuals(now parents), one offspring is created

    # create a middle point that will be the crossover point
    crossover_point = no_of_items // 2

    # create a crossover rate that is set to a high value
    crossover_rate = 0.8

    # for every 2 individuals, a random number between 0 and 1 is generated.
    rand_factor = rd.random()

    offsprings = []
    parents = np.array(parents)
    print(parents)
    for i in range(len(parents)):
        #  if the rand number is less than or equal to the crossover rate, individuals are mated.
        if (rand_factor < crossover_rate) and ((i + 1) < parents.shape[0]):
            part_1 = parents[i][0: crossover_point]
            part_2 = parents[i + 1][crossover_point:]
            offspring = np.concatenate((part_1, part_2))

        else:
            # take the current one and add it to the offspring
            offspring = parents[i]
        offsprings.append(offspring)
    return np.array(offsprings)


def mutation(offsprings):
    mutation_rate = 0.4
    for i in range(len(offsprings)):
        random_val = rd.random()
        mutants = offsprings
        if random_val > mutation_rate:
            continue
        # make a random val btw 0 an 9 for the index of a gene in an individual
        random_index = np.random.randint(offsprings.shape[1])
        if mutants[i][random_index] == 0:
            mutants[i][random_index] = 1
        else:
            mutants[i][random_index] = 0
        return mutants
    
    
def operation(no_of_generations, population, weights, values, threshold, no_items):
    fitness_history = []
    # num_parents = int(pop_size[0]/2)
    for i in range(no_of_generations):
        fitness = calc_fitness(population=population, weight=weights, value=values, threshold=threshold)
        fitness_history.append(fitness)
        # TODO: check how to choose no of parents
        fit_parents = select_fittest(individuals_fitnesses=fitness, population=population, no_of_parents=3)
        offsprings = crossover(no_of_items=no_items, parents=fit_parents)
        mutants = mutation(offsprings=offsprings)

        # mix the mutants with the parents to make a new population
        population[0: len(fit_parents)] = fit_parents
        population[len(fit_parents):] = mutants
    pass

 

init_pop = initialize_pop(item_no=ITEM_NUMBER, no_of_solu=5)
fitness_of_pop = calc_fitness(population=init_pop, weight=WEIGHT, value=VALUE, threshold=KNAPSACK_THRESHOLD)
fit_parents = select_fittest(individuals_fitnesses=fitness_of_pop, population=init_pop, no_of_parents=3)
offsprings = crossover(no_of_items=NO_OF_ITEMS, parents=fit_parents)
mutants = mutation(offsprings=offsprings)
operation(no_of_generations=2,
            population=init_pop,
            weights=WEIGHT,
            values=VALUE,
            threshold=KNAPSACK_THRESHOLD,
            no_items=NO_OF_ITEMS)
print(mutants)
