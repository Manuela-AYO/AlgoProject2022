'''
update : Landry Bailly, 25/11/2022
'''

# ------------------- IMPORT PART ------------ #

# from asyncio.windows_events import NULL
# from email.policy import default
from pickle import NONE
import sys, os
import pandas as pd
import numpy as np
import argparse
from datetime import datetime, timedelta


sys.path.append(os.path.join(os.path.dirname(__file__), '..'))
sys.path.append(os.path.join(os.path.dirname(__file__), '..', '01Knapsack'))
sys.path.append(os.path.join(os.path.dirname(__file__), '..', '01Knapsack', 'Algorithms'))
sys.path.append(os.path.join(os.path.dirname(__file__), '..', '01Knapsack', 'Algorithms', 'DynamicProgramming'))


from classes import Set01KnapSack

from BruteForce import brute_force
from BranchAndBound import branch_bound
from Greedy import ratio_sort_greedy, value_sort_greedy, weight_sort_greedy, ratio_sort_and_converge, ratio_sort_and_converge_2
from DynamicProgramming import top_down_approach, bottom_up_approach
from FullyPolynomial import fptas
from Randomized import randomized_algorithm
from GeneticProgramming import genetic_programming01 as genetic_programming
from AntColony import ant_colony_algorithm

# ------------------------ USEFUL FUNCTION ------------------- #

def execute_algo(knapSackObject,AlgoName,MTime="-",MIteration="-",SpecificParam=["-","-", "-"]):
    # ------- INIT -------- #
    algorithms = {
        'BruteForce': brute_force.bruteforce,
        'BranchAndBound': branch_bound.branch_bound,
        'RatioSortGreedy': ratio_sort_greedy.greedy_ratio_selection,
        'ValueSortGreedy': value_sort_greedy.greedy_value_selection,
        'WeightSortGreedy': weight_sort_greedy.greedy_weight_selection,
        'RatiosortAndConvergeGreedy':ratio_sort_and_converge.ratio_sort_and_converge,
        'RatiosortAndConvergeGreedy2':ratio_sort_and_converge_2.ratio_sort_and_converge,
        'TopDownDynamicProgramming': top_down_approach.top_down_approach,
        'BottomUpDynamicProgramming': bottom_up_approach.bottom_up_approach,
        'Randomized': randomized_algorithm.randomized,
        'FullyPolyNomial': fptas.fptas,
        'GeneticProgramming': genetic_programming.genetic_programming,
        'AntColony':ant_colony_algorithm.ant_colony_algorithm
    }
    if MIteration=="-":
        MIterationInt = 0
    else:
        MIterationInt = int(MIteration)

    if MTime=="-":
        MTimeInt = 0
    else:
        MTimeInt = int(MTime)

    SpecificParamFloat = [0.0]*len(SpecificParam)
    for p in range(len(SpecificParam)):
        if SpecificParam[p]!="-":
            SpecificParamFloat[p] = float(SpecificParam[p])*1

    # ------- Execute Algo -------- #

    # calc start time
    start_time = datetime.now()

    # Apply algorithm
    algo_function = algorithms[AlgoName]


    if AlgoName == 'Randomized': # --this algo need iteration value and a specific param
        items_vector, num_items_choosen, maximum_value, occupied_weight = algo_function(knapSackObject,MIterationInt,MTimeInt,int(SpecificParamFloat[0]))
    elif AlgoName == 'AntColony': # --need iteration + 2 specific param ant,decay
        items_vector, num_items_choosen, maximum_value, occupied_weight = algo_function(knapSackObject,MIterationInt,int(SpecificParamFloat[0]), SpecificParamFloat[1], SpecificParamFloat[2],MTimeInt)
    elif AlgoName == 'GeneticProgramming': # --this algo need a specific param and an init function. Should we do all this calcul in the genetic_prog file ? And we only keep here a main one that ask knapSackObject,MTimeInt,SpecificParam ?
        init_pop = genetic_programming.initialize_pop(item_no=np.arange(1, knapSackObject.n+1) , no_of_individuals=int(SpecificParamFloat[0]))
        items_vector, num_items_choosen, maximum_value, occupied_weight = algo_function(knapSackObject,int(SpecificParamFloat[0]),init_pop,MTimeInt)
    else:
        items_vector, num_items_choosen, maximum_value, occupied_weight = algo_function(knapSackObject, MTimeInt)

    # calc end time
    end = datetime.now()
    realTime = end - start_time


    return items_vector, num_items_choosen, maximum_value, occupied_weight, realTime


# ------------------------ BENCHMARK -------------------------- #
def setEpsilon(): # for cross validation
    # epsilon = knapsackInstance.getEpsilon(parameters['epsilon'])
    print("finish")

def benchmarkFor01(CsvName,AlgoName,TypeFile,InstanceName,MTheoricalValue="-",MTime="-",MIteration="-",SpecificParam=["-","-", "-"]): 
        # this will take the instance inside Input Folder and the output inside Output folder
    # ---- OUTPUT INIT --- #
    output = ["-"]*11 # do same as a dataFrame ? Two column, one for value, the other for information
    IndexOut = ["algoName","instanceName","nbItem","mWeight","mTheoricalValue","mTime","mIteration","realTime","realValue","realWeight","realNbItem","specificParam"]
    
    # -------TESTING MODULE ------ #
    knapsackInstance = Set01KnapSack()
    knapsackInstance.uploadFile(InstanceName,TypeFile)

    print("############################# Execute ALGO ",AlgoName,"#############################")

    items_vector, num_items_choosen, maximum_value, occupied_weight, realTime = execute_algo(knapsackInstance, AlgoName, MTime, MIteration, SpecificParam)

    if MTime != "-":
        MTimeFormat = timedelta(minutes=int(MTime))
    else:
        MTimeFormat = MTime

    output = [AlgoName, InstanceName, knapsackInstance.n, knapsackInstance.wmax, MTheoricalValue, MTimeFormat, MIteration, realTime, maximum_value, occupied_weight, num_items_choosen, SpecificParam[0], SpecificParam[1]]
    
    # ----- Print answer -------- #
    print("############################# Answer #############################")
    for i in range(len(knapsackInstance.data.V)):
        if (items_vector[i] == 1):
            print("Object : ",i," V = ",knapsackInstance.data.V[i]," W = ",knapsackInstance.data.W[i])
    print("Max Value = ",maximum_value," / ",MTheoricalValue)
    print("Max Weight = ",occupied_weight," / ",knapsackInstance.wmax)

    # ----- ADD OUTPUT TOO CSV ----- #
    outputCsv = ""
    for o in output:
        outputCsv = outputCsv + str(o) + ","

    file = open(os.path.join(os.path.dirname(__file__), '..', '01Knapsack', 'Output', CsvName), 'a')
    file.write(outputCsv)  
    file.write('\n')

    return output, IndexOut

if __name__ == '__main__':
    # test = Set01KnapSack()
    # test.uploadFile("Landrytest.csv","c")
    # print(test)
    # print(ant_colony_algorithm.ant_colony_algorithm(test, 4, 3, 0.4))
    # # print(weight_sort_greedy.greedy_weight_selection(test))

    # generate the arguments in the command line
    parser = argparse.ArgumentParser(description=
                                     "Param for testing")
    parser.add_argument("CsvName", type=str)
    parser.add_argument("AlgoName", type=str)
    parser.add_argument("TypeFile", type=str)
    parser.add_argument("InstanceName", type=str)
    parser.add_argument("MTheoricalValue", type=str)
    parser.add_argument("MTime", type=str)
    parser.add_argument("MIteration", type=str)
    parser.add_argument("--sp1", type=str, required=False, default="-")
    parser.add_argument("--sp2", type=str, required=False, default="-")
    parser.add_argument("--sp3", type=str, required=False, default="-")

    args = parser.parse_args()

    benchmarkFor01(args.CsvName,args.AlgoName,args.TypeFile,args.InstanceName,args.MTheoricalValue,args.MTime,args.MIteration,[args.sp1,args.sp2, args.sp3])





