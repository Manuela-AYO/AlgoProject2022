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
sys.path.append(os.path.join(os.path.dirname(__file__), '..', 'MultipleKnapsack'))
sys.path.append(os.path.join(os.path.dirname(__file__), '..', 'MultipleKnapsack', 'Algorithms'))
sys.path.append(os.path.join(os.path.dirname(__file__), '..', 'MultipleKnapsack', 'Algorithms', 'DynamicProgramming'))


from classes import set_multiple_knapsack

from BruteForce import brute_force
from Greedy import ratio_sort_and_converge#,ratio_sort_and_converge_2
from DynamicProgramming import bottom_up
from Randomized import randomized_multiple_knapsack_algorithm


# ------------------------ USEFUL FUNCTION ------------------- #

def execute_algo(knapSackObject,AlgoName,MTime="-",MIteration="-",SpecificParam=["-","-", "-"]):
    # ------- INIT -------- #
    algorithms = {
        'BruteForce': brute_force.bruteforce,
        'RatiosortAndConvergeGreedy':ratio_sort_and_converge.ratio_sort_and_converge,
        #'RatiosortAndConvergeGreedy2':ratio_sort_and_converge_2.ratio_sort_and_converge,
        #'BottomUpDynamicProgramming': bottom_up.bottom_up_approach,
        #'Randomized': randomized_multiple_knapsack_algorithm.randomized,

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
        # items_vector, num_items_choosen, maximum_value, occupied_weight = algo_function(knapSackObject,MIterationInt,MTimeInt,int(SpecificParamFloat[0]))
        print("not implement")
    elif AlgoName == 'AntColony': # --need iteration + 2 specific param ant,decay
        #items_vector, num_items_choosen, maximum_value, occupied_weight = algo_function(knapSackObject,MIterationInt,int(SpecificParamFloat[0]), SpecificParamFloat[1], SpecificParamFloat[2],MTimeInt)
        print("not implement")
    elif AlgoName == 'GeneticProgramming': # --this algo need a specific param and an init function. Should we do all this calcul in the genetic_prog file ? And we only keep here a main one that ask knapSackObject,MTimeInt,SpecificParam ?
        print("not implement")
        # init_pop = genetic_programming.initialize_pop(item_no=np.arange(1, knapSackObject.n+1) , no_of_individuals=int(SpecificParamFloat[0]))
        # items_vector, num_items_choosen, maximum_value, occupied_weight = algo_function(knapSackObject,int(SpecificParamFloat[0]),init_pop,MTimeInt)
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
    knapsackInstance = set_multiple_knapsack.SetMultipleKnapSack()
    knapsackInstance.uploadFile(InstanceName,TypeFile)

    print(knapsackInstance)

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
        outputCsv = outputCsv + str(o) + ";"

    file = open(os.path.join(os.path.dirname(__file__), '..', 'MultipleKnapsack', 'Output', CsvName), 'a')
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
    parser.add_argument("CsvName", type=str, help="csv file in output folder, for the answer")
    parser.add_argument("AlgoName", type=str, help="Name of the algo beetween BruteForce,BranchAndBound,RatioSortGreedy,ValueSortGreedy,WeightSortGreedy,RatiosortAndConvergeGreedy,BottomUpDynamicProgramming,Randomized,FullyPolyNomial,GeneticProgramming,AntColony")
    parser.add_argument("TypeFile", type=str, help="c for csv or t for text - type of the input file")
    parser.add_argument("InstanceName", type=str, help="input file, in input folder")
    parser.add_argument("MTheoricalValue", type=str, help="Max theorical value or -")
    parser.add_argument("MTime", type=str, help="Max time or - for no time condition")
    parser.add_argument("MIteration", type=str, help="Max iteration or -")
    parser.add_argument("--sp1", type=str, required=False, default="-", help="depend of the algo running")
    parser.add_argument("--sp2", type=str, required=False, default="-", help="depend of the algo running")
    parser.add_argument("--sp3", type=str, required=False, default="-", help="depend of the algo running")

    args = parser.parse_args()

    benchmarkFor01(args.CsvName,args.AlgoName,args.TypeFile,args.InstanceName,args.MTheoricalValue,args.MTime,args.MIteration,[args.sp1,args.sp2, args.sp3])

    # commande Exemple : 
    # python .\01Knapsack_2.py csv_file_name_in_output_folder Name_of_the_algo c_or_t input_file_name_in_input_folder theorical_max_value(- for nothing) max_time(- for nothing) max_iteration(- for nothing) --sp1 specific_param_1(optionnal) --sp2 specific_param_2(optionnal) --sp3 specific_param_3(optionnal)




