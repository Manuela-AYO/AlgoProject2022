#!/bin/bash

# Artificial data
python3 ./01Knapsack.py 01_knap_sc_100_200_24_running_time.csv BruteForce c artificial/01_knap_sc_100_200_24.csv - - - 
python3 ./01Knapsack.py 01_knap_sc_100_200_24_running_time.csv BranchAndBound c artificial/01_knap_sc_100_200_24.csv - - - 
python3 ./01Knapsack.py 01_knap_sc_100_200_24_running_time.csv RatioSortGreedy c artificial/01_knap_sc_100_200_24.csv - - - 
python3 ./01Knapsack.py 01_knap_sc_100_200_24_running_time.csv ValueSortGreedy c artificial/01_knap_sc_100_200_24.csv - - - 
python3 ./01Knapsack.py 01_knap_sc_100_200_24_running_time.csv WeightSortGreedy c artificial/01_knap_sc_100_200_24.csv - - - 
python3 ./01Knapsack.py 01_knap_sc_100_200_24_running_time.csv RatiosortAndConvergeGreedy c artificial/01_knap_sc_100_200_24.csv - - - 
python3 ./01Knapsack.py 01_knap_sc_100_200_24_running_time.csv TopDownDynamicProgramming c artificial/01_knap_sc_100_200_24.csv - - - 
python3 ./01Knapsack.py 01_knap_sc_100_200_24_running_time.csv BottomUpDynamicProgramming c artificial/01_knap_sc_100_200_24.csv - - - 
python3 ./01Knapsack.py 01_knap_sc_100_200_24_running_time.csv FullyPolyNomial c artificial/01_knap_sc_100_200_24.csv - - - 
python3 ./01Knapsack.py 01_knap_sc_100_200_24_running_time.csv GeneticProgramming c artificial/01_knap_sc_100_200_24.csv - - - --sp1 50
python3 ./01Knapsack.py 01_knap_sc_100_200_24_running_time.csv AntColony c artificial/01_knap_sc_100_200_24.csv - - 50 --sp1 50 --sp2 0.5 
python3 ./01Knapsack.py 01_knap_sc_100_200_24_running_time.csv Randomized c artificial/01_knap_sc_100_200_24.csv - - 50 --sp1 0.1 

python3 ./01Knapsack.py 01_knap_sc_20_100_12_running_time.csv BruteForce c artificial/01_knap_sc_20_100_12.csv - - - 
python3 ./01Knapsack.py 01_knap_sc_20_100_12_running_time.csv BranchAndBound c artificial/01_knap_sc_20_100_12.csv - - - 
python3 ./01Knapsack.py 01_knap_sc_20_100_12_running_time.csv RatioSortGreedy c artificial/01_knap_sc_20_100_12.csv - - - 
python3 ./01Knapsack.py 01_knap_sc_20_100_12_running_time.csv ValueSortGreedy c artificial/01_knap_sc_20_100_12.csv - - - 
python3 ./01Knapsack.py 01_knap_sc_20_100_12_running_time.csv WeightSortGreedy c artificial/01_knap_sc_20_100_12.csv - - - 
python3 ./01Knapsack.py 01_knap_sc_20_100_12_running_time.csv RatiosortAndConvergeGreedy c artificial/01_knap_sc_20_100_12.csv - - - 
python3 ./01Knapsack.py 01_knap_sc_20_100_12_running_time.csv TopDownDynamicProgramming c artificial/01_knap_sc_20_100_12.csv - - - 
python3 ./01Knapsack.py 01_knap_sc_20_100_12_running_time.csv BottomUpDynamicProgramming c artificial/01_knap_sc_20_100_12.csv - - - 
python3 ./01Knapsack.py 01_knap_sc_20_100_12_running_time.csv FullyPolyNomial c artificial/01_knap_sc_20_100_12.csv - - - 
python3 ./01Knapsack.py 01_knap_sc_20_100_12_running_time.csv GeneticProgramming c artificial/01_knap_sc_20_100_12.csv - - - --sp1 50
python3 ./01Knapsack.py 01_knap_sc_20_100_12_running_time.csv AntColony c artificial/01_knap_sc_20_100_12.csv - - 50 --sp1 50 --sp2 0.5 
python3 ./01Knapsack.py 01_knap_sc_20_100_12_running_time.csv Randomized c artificial/01_knap_sc_20_100_12.csv - - 50 --sp1 0.1 
