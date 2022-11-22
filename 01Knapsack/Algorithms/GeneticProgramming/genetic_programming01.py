"""
Description: 
            1. With genetic programming, we first initialize the population
                the population consists of individuals, here an individual is a possible solution
                A chromosome is the string that contains info about the solution/individual
                A gene is a character inside the chromosome/string gene = {0, 1} 
            2.Then we select the most 'fit' individuals
            3. We cross the fit individuals to produce more fit offspring
            4. we mutate the offspring to create genetic variation
Author: Gloria Isedu
Date: 30/10/2022
Input: ...
Output: optimal solution

References:
            1. https://medium.com/koderunners/genetic-algorithm-part-1-intuition-fde1b75bd3f9
            2. https://medium.com/koderunners/genetic-algorithm-part-2-implementation-69d77cf668bf
            3. https://medium.com/koderunners/genetic-algorithm-part-3-knapsack-problem-b59035ddd1d6
"""
import numpy as np
import random as rd
import os
from pathlib import Path
import sys

# external module imports
if not str(Path(__file__).resolve().parent.parent) in sys.path :
    sys.path.insert(0, str(Path(__file__).resolve().parent.parent.parent.parent))
    sys.path.insert(0, str(Path(__file__).resolve().parent.parent.parent))
 
from classes import Set01KnapSack


KNAPSACK_THRESHOLD = 25
NO_OF_ITEMS = 10
WEIGHT = np.random.randint(1, 15, size=NO_OF_ITEMS) # a list of weights from 1-14 10 times i.e for each item, generate a weight
VALUE = np.random.randint(10, 800, size=NO_OF_ITEMS)
ITEM_NUMBER = np.arange(1, 11) # [ 1  2  3  4  5  6  7  8  9 10]


def initialize_pop(item_no, no_of_individuals=5):
    # initialize the population
    solutions_per_population = no_of_individuals 
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
        individuals_fitnesses[max_fitness_index] = -1 # so that is in a loop it will not be counted twice # you probably want to remove them from the list 
                                                        # (i.e remove max fittest from individual fitnesses) 
                                                        # so that the next iteration in the loop doesn't select the same individual
    return parents


def crossover(no_of_items, parents):
    """
    crossing of the fit individuals. For every 2 individuals(now parents)(AKA possible knapsack solutions), one offspring is created
    """

    # create a middle point that will be the crossover point
    crossover_point = no_of_items // 2

    # create a crossover rate that is set to a high value
    crossover_rate = 0.8

    # for every 2 individuals, a random number between 0 and 1 is generated.
    rand_factor = rd.random()

    # 2 offsprings with different cross overs
    offsprings_1 = []
    offsprings_2 = []
    parents = np.array(parents)

    for i in range(len(parents)):
        #  if the rand number is less than or equal to the crossover rate, individuals are mated.
        if (rand_factor < crossover_rate) and ((i + 1) < parents.shape[0]):
            parent_1_part_1 = parents[i][0: crossover_point]
            parent_1_part_2 = parents[i][crossover_point:]
            parent_2_part_1 = parents[i + 1][0: crossover_point]
            parent_2_part_2 = parents[i + 1][crossover_point:]
        else:
            # mix the current one with the first parent
            parent_1_part_1 = parents[i][0: crossover_point]
            parent_1_part_2 = parents[i][crossover_point:]
            parent_2_part_1 = parents[0][0: crossover_point]
            parent_2_part_2 = parents[0][crossover_point:]
        new_offsprings_1 = np.concatenate((parent_1_part_1, parent_2_part_2))
        offsprings_1.append(new_offsprings_1)

        new_offsprings_2 = np.concatenate((parent_2_part_1, parent_1_part_2))
        offsprings_2.append(new_offsprings_2)
    return np.array(offsprings_1), np.array(offsprings_2)


def mutation(offsprings):
    """
    mutates the fit individuals so that there is variation in the population.
    """
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
    
    
def genetic_programming(no_of_generations, population, weights, values, threshold, no_items):
    """
    combines all the functions.

    Returns:
        the best genetic solution
    """
    fitness_history = []
    genetic_solution = []
   
    no_parents = int(len(population)/2)
    for i in range(no_of_generations - 1):
        fitness = calc_fitness(population=population, weight=weights, value=values, threshold=threshold)
        fitness_history.append(fitness)
        fit_parents = select_fittest(individuals_fitnesses=fitness, population=population, no_of_parents=no_parents)
        offsprings_1, offsprings_2 = crossover(no_of_items=no_items, parents=fit_parents)
        mutants_1 = mutation(offsprings=offsprings_1)
        mutants_2 = mutation(offsprings=offsprings_2)

        # mix the mutants with the offspring to make a new population
        population[0: len(offsprings_1)] = offsprings_1
        
        # if there are no mutants(since mutantation rate is random), makeprovision for the population 
        # to have all another set of mutants instaed

        try:
            if not np.any(mutants_1):
                population[:,len(offsprings_1):len(mutants_1)] = mutants_1.shape[0]
                population[len(offsprings_1):len(mutants_1):, ] = mutants_1.shape[1]
            elif not np.any(mutants_2):
                    population[:,len(offsprings_1):len(mutants_2)] = mutants_2.shape[0]
                    population[len(offsprings_1):len(mutants_2):, ] = mutants_2.shape[1]
        
        except AttributeError:
            print("No mutants so mutants_1 has no shape as it's a numpy array")
            population[:,len(offsprings_1):len(offsprings_2)] = offsprings_2.shape[0]
            population[len(offsprings_1):len(offsprings_2):, ] = offsprings_2.shape[1]

        except TypeError:
            print("there are no mutantss, so mutants has no length")
            population[:,len(offsprings_1):len(offsprings_2)] = offsprings_2.shape[0]
            population[len(offsprings_1):len(offsprings_2):, ] = offsprings_2.shape[1]
       
    final_gen_fitness = calc_fitness(population=population, weight=weights, value=values, threshold=threshold)
    if np.max(final_gen_fitness) == 0:
        print("After mutation, there was no fit solution so the optimal solution will not solve our problem")
    max_fitness_index = np.where(final_gen_fitness == np.max(final_gen_fitness)) # (array([4], dtype=int64),)

    # print(max_fitness_index[0])
    # print(max_fitness_index[0][0])
    genetic_solution = (population[max_fitness_index[0][0]])
    final_solu = np.array(genetic_solution)
    no_of_selected_genes = sum(final_solu) #no of items selected to be in knapsack
    optimal_value = sum(final_solu * values)
    optimal_weight = sum(final_solu * weights)

    return final_solu, no_of_selected_genes, optimal_value, optimal_weight


if __name__ == '__main__':
    knapsack = Set01KnapSack()

    type = input("Which type of file is it(t for text, c for csv) ? ")
    path = input("Path to the file[e.g : file/my_file.csv] : ")

    # normalize the path to the file
    path = path.split("/")
    path_file = os.path.join(*path)
    
    # read the csv file and collect the data
    no_of_items, item_weights, items_value, df = knapsack.uploadFile(path_file, type)
    
    # create the weights, values array and the vector
    weights_tab = np.array(df["W"])
    values_tab = np.array(df["V"])

    init_pop = initialize_pop(item_no=ITEM_NUMBER, no_of_individuals=5)

    # apply the genetic programming algorithm
    optimal_solu, no_of_items_selected, \
    total_value, total_weight = genetic_programming(
                no_of_generations=2,
                population=init_pop,
                weights=WEIGHT,
                values=VALUE,
                threshold=KNAPSACK_THRESHOLD,
                no_items=NO_OF_ITEMS)
    # write the result in the output filec
    text = f"Genetic programming \t\t\t{no_of_items}\t\t \t\t\t\t{item_weights}\t \t\t\t\t{items_value}\t\t \t\t\t\t{no_of_items_selected}\t\t \t\t\t{total_weight}\t \t\t{total_value}\t\t"
    knapsack.writeOutput(text) 
