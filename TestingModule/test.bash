#!/bin/bash

# Artificial data
# 01_knap_sc_20_100_13.csv
python3 ./01Knapsack.py artificial/01_knap_sc_20_100_13_running_time.csv BranchAndBound c artificial/01_knap_sc_20_100_13.csv - - - 
python3 ./01Knapsack.py artificial/01_knap_sc_20_100_13_running_time.csv RatioSortGreedy c artificial/01_knap_sc_20_100_13.csv - - - 
python3 ./01Knapsack.py artificial/01_knap_sc_20_100_13_running_time.csv ValueSortGreedy c artificial/01_knap_sc_20_100_13.csv - - - 
python3 ./01Knapsack.py artificial/01_knap_sc_20_100_13_running_time.csv WeightSortGreedy c artificial/01_knap_sc_20_100_13.csv - - - 
python3 ./01Knapsack.py artificial/01_knap_sc_20_100_13_running_time.csv RatiosortAndConvergeGreedy c artificial/01_knap_sc_20_100_13.csv - - - 
python3 ./01Knapsack.py artificial/01_knap_sc_20_100_13_running_time.csv TopDownDynamicProgramming c artificial/01_knap_sc_20_100_13.csv - - - 
python3 ./01Knapsack.py artificial/01_knap_sc_20_100_13_running_time.csv BottomUpDynamicProgramming c artificial/01_knap_sc_20_100_13.csv - - - 
python3 ./01Knapsack.py artificial/01_knap_sc_20_100_13_running_time.csv FullyPolyNomial c artificial/01_knap_sc_20_100_13.csv - - - 
python3 ./01Knapsack.py artificial/01_knap_sc_20_100_13_running_time.csv GeneticProgramming c artificial/01_knap_sc_20_100_13.csv - - - --sp1 50
python3 ./01Knapsack.py artificial/01_knap_sc_20_100_13_running_time.csv AntColony c artificial/01_knap_sc_20_100_13.csv - - 50 --sp1 50 --sp2 0.5 
python3 ./01Knapsack.py artificial/01_knap_sc_20_100_13_running_time.csv Randomized c artificial/01_knap_sc_20_100_13.csv - - 50 --sp1 0.1 

# we changed the number of individuals in genectic algorithm: 10, 25, 75, 100, 200
# we changed the number of of iterations in ant colony: 25, 75, 100, 200
# we changed the number of iterations in randomized: 25, 75, 100, 200
python3 ./01Knapsack.py artificial/01_knap_sc_20_100_13_running_time.csv GeneticProgramming c artificial/01_knap_sc_20_100_13.csv - - - --sp1 10
python3 ./01Knapsack.py artificial/01_knap_sc_20_100_13_running_time.csv GeneticProgramming c artificial/01_knap_sc_20_100_13.csv - - - --sp1 25
python3 ./01Knapsack.py artificial/01_knap_sc_20_100_13_running_time.csv GeneticProgramming c artificial/01_knap_sc_20_100_13.csv - - - --sp1 75
python3 ./01Knapsack.py artificial/01_knap_sc_20_100_13_running_time.csv GeneticProgramming c artificial/01_knap_sc_20_100_13.csv - - - --sp1 100
python3 ./01Knapsack.py artificial/01_knap_sc_20_100_13_running_time.csv GeneticProgramming c artificial/01_knap_sc_20_100_13.csv - - - --sp1 200

python3 ./01Knapsack.py artificial/01_knap_sc_20_100_13_running_time.csv GeneticProgramming c artificial/01_knap_sc_20_100_13.csv - - - --sp1 250
python3 ./01Knapsack.py artificial/01_knap_sc_20_100_13_running_time.csv GeneticProgramming c artificial/01_knap_sc_20_100_13.csv - - - --sp1 300
python3 ./01Knapsack.py artificial/01_knap_sc_20_100_13_running_time.csv GeneticProgramming c artificial/01_knap_sc_20_100_13.csv - - - --sp1 350
python3 ./01Knapsack.py artificial/01_knap_sc_20_100_13_running_time.csv GeneticProgramming c artificial/01_knap_sc_20_100_13.csv - - - --sp1 400

# Ant colony on 250,300,350,400,500
python3 ./01Knapsack.py artificial/01_knap_sc_20_100_13_running_time.csv AntColony c artificial/01_knap_sc_20_100_13.csv - - 200 --sp1 50 --sp2 0.5 
python3 ./01Knapsack.py artificial/01_knap_sc_20_100_13_running_time.csv AntColony c artificial/01_knap_sc_20_100_13.csv - - 250 --sp1 50 --sp2 0.5 
python3 ./01Knapsack.py artificial/01_knap_sc_20_100_13_running_time.csv AntColony c artificial/01_knap_sc_20_100_13.csv - - 300 --sp1 50 --sp2 0.5 
python3 ./01Knapsack.py artificial/01_knap_sc_20_100_13_running_time.csv AntColony c artificial/01_knap_sc_20_100_13.csv - - 350 --sp1 50 --sp2 0.5 
python3 ./01Knapsack.py artificial/01_knap_sc_20_100_13_running_time.csv AntColony c artificial/01_knap_sc_20_100_13.csv - - 400 --sp1 50 --sp2 0.5 

# Ant colony on number of ants 25,50,75,100,200
python3 ./01Knapsack.py artificial/01_knap_sc_20_100_13_running_time.csv AntColony c artificial/01_knap_sc_20_100_13.csv - - 200 --sp1 25 --sp2 0.5 
python3 ./01Knapsack.py artificial/01_knap_sc_20_100_13_running_time.csv AntColony c artificial/01_knap_sc_20_100_13.csv - - 200 --sp1 50 --sp2 0.5 
python3 ./01Knapsack.py artificial/01_knap_sc_20_100_13_running_time.csv AntColony c artificial/01_knap_sc_20_100_13.csv - - 200 --sp1 75 --sp2 0.5 
python3 ./01Knapsack.py artificial/01_knap_sc_20_100_13_running_time.csv AntColony c artificial/01_knap_sc_20_100_13.csv - - 200 --sp1 100 --sp2 0.5 
python3 ./01Knapsack.py artificial/01_knap_sc_20_100_13_running_time.csv AntColony c artificial/01_knap_sc_20_100_13.csv - - 200 --sp1 200 --sp2 0.5 

# Ant colony on decay 0.5,0.75,0.95
python3 ./01Knapsack.py artificial/01_knap_sc_20_100_13_running_time.csv AntColony c artificial/01_knap_sc_20_100_13.csv - - 200 --sp1 100 --sp2 0.5 
python3 ./01Knapsack.py artificial/01_knap_sc_20_100_13_running_time.csv AntColony c artificial/01_knap_sc_20_100_13.csv - - 200 --sp1 100 --sp2 0.75 
python3 ./01Knapsack.py artificial/01_knap_sc_20_100_13_running_time.csv AntColony c artificial/01_knap_sc_20_100_13.csv - - 200 --sp1 100 --sp2 0.95

# Randomized on ratios 0.2,0.3,0.4,0.5
python3 ./01Knapsack.py artificial/01_knap_sc_20_100_13_running_time.csv Randomized c artificial/01_knap_sc_20_100_13.csv - - 100 --sp1 0.2
python3 ./01Knapsack.py artificial/01_knap_sc_20_100_13_running_time.csv Randomized c artificial/01_knap_sc_20_100_13.csv - - 100 --sp1 0.3
python3 ./01Knapsack.py artificial/01_knap_sc_20_100_13_running_time.csv Randomized c artificial/01_knap_sc_20_100_13.csv - - 100 --sp1 0.4
python3 ./01Knapsack.py artificial/01_knap_sc_20_100_13_running_time.csv Randomized c artificial/01_knap_sc_20_100_13.csv - - 100 --sp1 0.5


# Artificial data
# 01_knap_sc_50_100_18.csv
python3 ./01Knapsack.py artificial/01_knap_sc_50_100_18_running_time.csv BranchAndBound c artificial/01_knap_sc_50_100_18.csv - - - 
python3 ./01Knapsack.py artificial/01_knap_sc_50_100_18_running_time.csv RatioSortGreedy c artificial/01_knap_sc_50_100_18.csv - - - 
python3 ./01Knapsack.py artificial/01_knap_sc_50_100_18_running_time.csv ValueSortGreedy c artificial/01_knap_sc_50_100_18.csv - - - 
python3 ./01Knapsack.py artificial/01_knap_sc_50_100_18_running_time.csv WeightSortGreedy c artificial/01_knap_sc_50_100_18.csv - - - 
python3 ./01Knapsack.py artificial/01_knap_sc_50_100_18_running_time.csv RatiosortAndConvergeGreedy c artificial/01_knap_sc_50_100_18.csv - - - 
python3 ./01Knapsack.py artificial/01_knap_sc_50_100_18_running_time.csv TopDownDynamicProgramming c artificial/01_knap_sc_50_100_18.csv - - - 
python3 ./01Knapsack.py artificial/01_knap_sc_50_100_18_running_time.csv BottomUpDynamicProgramming c artificial/01_knap_sc_50_100_18.csv - - - 
python3 ./01Knapsack.py artificial/01_knap_sc_50_100_18_running_time.csv FullyPolyNomial c artificial/01_knap_sc_50_100_18.csv - - - 
python3 ./01Knapsack.py artificial/01_knap_sc_50_100_18_running_time.csv GeneticProgramming c artificial/01_knap_sc_50_100_18.csv - - - --sp1 50
python3 ./01Knapsack.py artificial/01_knap_sc_50_100_18_running_time.csv AntColony c artificial/01_knap_sc_50_100_18.csv - - 50 --sp1 50 --sp2 0.5 
python3 ./01Knapsack.py artificial/01_knap_sc_50_100_18_running_time.csv Randomized c artificial/01_knap_sc_50_100_18.csv - - 50 --sp1 0.1 

# we changed the number of individuals in genectic algorithm: 10, 25, 75, 100, 200
# we changed the number of of iterations in ant colony: 25, 75, 100, 200
# we changed the number of iterations in randomized: 25, 75, 100, 200
python3 ./01Knapsack.py artificial/01_knap_sc_50_100_18_running_time.csv GeneticProgramming c artificial/01_knap_sc_50_100_18.csv - - - --sp1 10
python3 ./01Knapsack.py artificial/01_knap_sc_50_100_18_running_time.csv GeneticProgramming c artificial/01_knap_sc_50_100_18.csv - - - --sp1 25
python3 ./01Knapsack.py artificial/01_knap_sc_50_100_18_running_time.csv GeneticProgramming c artificial/01_knap_sc_50_100_18.csv - - - --sp1 75
python3 ./01Knapsack.py artificial/01_knap_sc_50_100_18_running_time.csv GeneticProgramming c artificial/01_knap_sc_50_100_18.csv - - - --sp1 100
python3 ./01Knapsack.py artificial/01_knap_sc_50_100_18_running_time.csv GeneticProgramming c artificial/01_knap_sc_50_100_18.csv - - - --sp1 200

python3 ./01Knapsack.py artificial/01_knap_sc_50_100_18_running_time.csv GeneticProgramming c artificial/01_knap_sc_50_100_18.csv - - - --sp1 250
python3 ./01Knapsack.py artificial/01_knap_sc_50_100_18_running_time.csv GeneticProgramming c artificial/01_knap_sc_50_100_18.csv - - - --sp1 300
python3 ./01Knapsack.py artificial/01_knap_sc_50_100_18_running_time.csv GeneticProgramming c artificial/01_knap_sc_50_100_18.csv - - - --sp1 350
python3 ./01Knapsack.py artificial/01_knap_sc_50_100_18_running_time.csv GeneticProgramming c artificial/01_knap_sc_50_100_18.csv - - - --sp1 400

# Ant colony on 250,300,350,400,500
python3 ./01Knapsack.py artificial/01_knap_sc_50_100_18_running_time.csv AntColony c artificial/01_knap_sc_50_100_18.csv - - 200 --sp1 50 --sp2 0.5 
python3 ./01Knapsack.py artificial/01_knap_sc_50_100_18_running_time.csv AntColony c artificial/01_knap_sc_50_100_18.csv - - 250 --sp1 50 --sp2 0.5 
python3 ./01Knapsack.py artificial/01_knap_sc_50_100_18_running_time.csv AntColony c artificial/01_knap_sc_50_100_18.csv - - 300 --sp1 50 --sp2 0.5 
python3 ./01Knapsack.py artificial/01_knap_sc_50_100_18_running_time.csv AntColony c artificial/01_knap_sc_50_100_18.csv - - 350 --sp1 50 --sp2 0.5 
python3 ./01Knapsack.py artificial/01_knap_sc_50_100_18_running_time.csv AntColony c artificial/01_knap_sc_50_100_18.csv - - 400 --sp1 50 --sp2 0.5 

# Ant colony on number of ants 25,50,75,100,200
python3 ./01Knapsack.py artificial/01_knap_sc_50_100_18_running_time.csv AntColony c artificial/01_knap_sc_50_100_18.csv - - 200 --sp1 25 --sp2 0.5 
python3 ./01Knapsack.py artificial/01_knap_sc_50_100_18_running_time.csv AntColony c artificial/01_knap_sc_50_100_18.csv - - 200 --sp1 50 --sp2 0.5 
python3 ./01Knapsack.py artificial/01_knap_sc_50_100_18_running_time.csv AntColony c artificial/01_knap_sc_50_100_18.csv - - 200 --sp1 75 --sp2 0.5 
python3 ./01Knapsack.py artificial/01_knap_sc_50_100_18_running_time.csv AntColony c artificial/01_knap_sc_50_100_18.csv - - 200 --sp1 100 --sp2 0.5 
python3 ./01Knapsack.py artificial/01_knap_sc_50_100_18_running_time.csv AntColony c artificial/01_knap_sc_50_100_18.csv - - 200 --sp1 200 --sp2 0.5 

# Ant colony on decay 0.5,0.75,0.95
python3 ./01Knapsack.py artificial/01_knap_sc_50_100_18_running_time.csv AntColony c artificial/01_knap_sc_50_100_18.csv - - 200 --sp1 100 --sp2 0.5 
python3 ./01Knapsack.py artificial/01_knap_sc_50_100_18_running_time.csv AntColony c artificial/01_knap_sc_50_100_18.csv - - 200 --sp1 100 --sp2 0.75 
python3 ./01Knapsack.py artificial/01_knap_sc_50_100_18_running_time.csv AntColony c artificial/01_knap_sc_50_100_18.csv - - 200 --sp1 100 --sp2 0.95

# Randomized on ratios 0.2,0.3,0.4,0.5
python3 ./01Knapsack.py artificial/01_knap_sc_50_100_18_running_time.csv Randomized c artificial/01_knap_sc_50_100_18.csv - - 100 --sp1 0.2
python3 ./01Knapsack.py artificial/01_knap_sc_50_100_18_running_time.csv Randomized c artificial/01_knap_sc_50_100_18.csv - - 100 --sp1 0.3
python3 ./01Knapsack.py artificial/01_knap_sc_50_100_18_running_time.csv Randomized c artificial/01_knap_sc_50_100_18.csv - - 100 --sp1 0.4
python3 ./01Knapsack.py artificial/01_knap_sc_50_100_18_running_time.csv Randomized c artificial/01_knap_sc_50_100_18.csv - - 100 --sp1 0.5

# Artificial data
# 01_knap_sc_75_150_19.csv
python3 ./01Knapsack.py artificial/01_knap_sc_75_150_19_running_time.csv BranchAndBound c artificial/01_knap_sc_75_150_19.csv - - - 
python3 ./01Knapsack.py artificial/01_knap_sc_75_150_19_running_time.csv RatioSortGreedy c artificial/01_knap_sc_75_150_19.csv - - - 
python3 ./01Knapsack.py artificial/01_knap_sc_75_150_19_running_time.csv ValueSortGreedy c artificial/01_knap_sc_75_150_19.csv - - - 
python3 ./01Knapsack.py artificial/01_knap_sc_75_150_19_running_time.csv WeightSortGreedy c artificial/01_knap_sc_75_150_19.csv - - - 
python3 ./01Knapsack.py artificial/01_knap_sc_75_150_19_running_time.csv RatiosortAndConvergeGreedy c artificial/01_knap_sc_75_150_19.csv - - - 
python3 ./01Knapsack.py artificial/01_knap_sc_75_150_19_running_time.csv TopDownDynamicProgramming c artificial/01_knap_sc_75_150_19.csv - - - 
python3 ./01Knapsack.py artificial/01_knap_sc_75_150_19_running_time.csv BottomUpDynamicProgramming c artificial/01_knap_sc_75_150_19.csv - - - 
python3 ./01Knapsack.py artificial/01_knap_sc_75_150_19_running_time.csv FullyPolyNomial c artificial/01_knap_sc_75_150_19.csv - - - 
python3 ./01Knapsack.py artificial/01_knap_sc_75_150_19_running_time.csv GeneticProgramming c artificial/01_knap_sc_75_150_19.csv - - - --sp1 50
python3 ./01Knapsack.py artificial/01_knap_sc_75_150_19_running_time.csv AntColony c artificial/01_knap_sc_75_150_19.csv - - 50 --sp1 50 --sp2 0.5 
python3 ./01Knapsack.py artificial/01_knap_sc_75_150_19_running_time.csv Randomized c artificial/01_knap_sc_75_150_19.csv - - 50 --sp1 0.1 

# we changed the number of individuals in genectic algorithm: 10, 25, 75, 100, 200
# we changed the number of of iterations in ant colony: 25, 75, 100, 200
# we changed the number of iterations in randomized: 25, 75, 100, 200
python3 ./01Knapsack.py artificial/01_knap_sc_75_150_19_running_time.csv GeneticProgramming c artificial/01_knap_sc_75_150_19.csv - - - --sp1 10
python3 ./01Knapsack.py artificial/01_knap_sc_75_150_19_running_time.csv GeneticProgramming c artificial/01_knap_sc_75_150_19.csv - - - --sp1 25
python3 ./01Knapsack.py artificial/01_knap_sc_75_150_19_running_time.csv GeneticProgramming c artificial/01_knap_sc_75_150_19.csv - - - --sp1 75
python3 ./01Knapsack.py artificial/01_knap_sc_75_150_19_running_time.csv GeneticProgramming c artificial/01_knap_sc_75_150_19.csv - - - --sp1 100
python3 ./01Knapsack.py artificial/01_knap_sc_75_150_19_running_time.csv GeneticProgramming c artificial/01_knap_sc_75_150_19.csv - - - --sp1 200

python3 ./01Knapsack.py artificial/01_knap_sc_75_150_19_running_time.csv GeneticProgramming c artificial/01_knap_sc_75_150_19.csv - - - --sp1 250
python3 ./01Knapsack.py artificial/01_knap_sc_75_150_19_running_time.csv GeneticProgramming c artificial/01_knap_sc_75_150_19.csv - - - --sp1 300
python3 ./01Knapsack.py artificial/01_knap_sc_75_150_19_running_time.csv GeneticProgramming c artificial/01_knap_sc_75_150_19.csv - - - --sp1 350
python3 ./01Knapsack.py artificial/01_knap_sc_75_150_19_running_time.csv GeneticProgramming c artificial/01_knap_sc_75_150_19.csv - - - --sp1 400

# Ant colony on 250,300,350,400,500
python3 ./01Knapsack.py artificial/01_knap_sc_75_150_19_running_time.csv AntColony c artificial/01_knap_sc_75_150_19.csv - - 200 --sp1 50 --sp2 0.5 
python3 ./01Knapsack.py artificial/01_knap_sc_75_150_19_running_time.csv AntColony c artificial/01_knap_sc_75_150_19.csv - - 250 --sp1 50 --sp2 0.5 
python3 ./01Knapsack.py artificial/01_knap_sc_75_150_19_running_time.csv AntColony c artificial/01_knap_sc_75_150_19.csv - - 300 --sp1 50 --sp2 0.5 
python3 ./01Knapsack.py artificial/01_knap_sc_75_150_19_running_time.csv AntColony c artificial/01_knap_sc_75_150_19.csv - - 350 --sp1 50 --sp2 0.5 
python3 ./01Knapsack.py artificial/01_knap_sc_75_150_19_running_time.csv AntColony c artificial/01_knap_sc_75_150_19.csv - - 400 --sp1 50 --sp2 0.5 

# Ant colony on number of ants 25,50,75,100,200
python3 ./01Knapsack.py artificial/01_knap_sc_75_150_19_running_time.csv AntColony c artificial/01_knap_sc_75_150_19.csv - - 200 --sp1 25 --sp2 0.5 
python3 ./01Knapsack.py artificial/01_knap_sc_75_150_19_running_time.csv AntColony c artificial/01_knap_sc_75_150_19.csv - - 200 --sp1 50 --sp2 0.5 
python3 ./01Knapsack.py artificial/01_knap_sc_75_150_19_running_time.csv AntColony c artificial/01_knap_sc_75_150_19.csv - - 200 --sp1 75 --sp2 0.5 
python3 ./01Knapsack.py artificial/01_knap_sc_75_150_19_running_time.csv AntColony c artificial/01_knap_sc_75_150_19.csv - - 200 --sp1 100 --sp2 0.5 
python3 ./01Knapsack.py artificial/01_knap_sc_75_150_19_running_time.csv AntColony c artificial/01_knap_sc_75_150_19.csv - - 200 --sp1 200 --sp2 0.5 

# Ant colony on decay 0.5,0.75,0.95
python3 ./01Knapsack.py artificial/01_knap_sc_75_150_19_running_time.csv AntColony c artificial/01_knap_sc_75_150_19.csv - - 200 --sp1 100 --sp2 0.5 
python3 ./01Knapsack.py artificial/01_knap_sc_75_150_19_running_time.csv AntColony c artificial/01_knap_sc_75_150_19.csv - - 200 --sp1 100 --sp2 0.75 
python3 ./01Knapsack.py artificial/01_knap_sc_75_150_19_running_time.csv AntColony c artificial/01_knap_sc_75_150_19.csv - - 200 --sp1 100 --sp2 0.95

# Randomized on ratios 0.2,0.3,0.4,0.5
python3 ./01Knapsack.py artificial/01_knap_sc_75_150_19_running_time.csv Randomized c artificial/01_knap_sc_75_150_19.csv - - 100 --sp1 0.2
python3 ./01Knapsack.py artificial/01_knap_sc_75_150_19_running_time.csv Randomized c artificial/01_knap_sc_75_150_19.csv - - 100 --sp1 0.3
python3 ./01Knapsack.py artificial/01_knap_sc_75_150_19_running_time.csv Randomized c artificial/01_knap_sc_75_150_19.csv - - 100 --sp1 0.4
python3 ./01Knapsack.py artificial/01_knap_sc_75_150_19_running_time.csv Randomized c artificial/01_knap_sc_75_150_19.csv - - 100 --sp1 0.5

# Artificial data
# 01_knap_sc_75_150_24.csv
python3 ./01Knapsack.py artificial/01_knap_sc_75_150_24_running_time.csv BranchAndBound c artificial/01_knap_sc_75_150_24.csv - - - 
python3 ./01Knapsack.py artificial/01_knap_sc_75_150_24_running_time.csv RatioSortGreedy c artificial/01_knap_sc_75_150_24.csv - - - 
python3 ./01Knapsack.py artificial/01_knap_sc_75_150_24_running_time.csv ValueSortGreedy c artificial/01_knap_sc_75_150_24.csv - - - 
python3 ./01Knapsack.py artificial/01_knap_sc_75_150_24_running_time.csv WeightSortGreedy c artificial/01_knap_sc_75_150_24.csv - - - 
python3 ./01Knapsack.py artificial/01_knap_sc_75_150_24_running_time.csv RatiosortAndConvergeGreedy c artificial/01_knap_sc_75_150_24.csv - - - 
python3 ./01Knapsack.py artificial/01_knap_sc_75_150_24_running_time.csv TopDownDynamicProgramming c artificial/01_knap_sc_75_150_24.csv - - - 
python3 ./01Knapsack.py artificial/01_knap_sc_75_150_24_running_time.csv BottomUpDynamicProgramming c artificial/01_knap_sc_75_150_24.csv - - - 
python3 ./01Knapsack.py artificial/01_knap_sc_75_150_24_running_time.csv FullyPolyNomial c artificial/01_knap_sc_75_150_24.csv - - - 
python3 ./01Knapsack.py artificial/01_knap_sc_75_150_24_running_time.csv GeneticProgramming c artificial/01_knap_sc_75_150_24.csv - - - --sp1 50
python3 ./01Knapsack.py artificial/01_knap_sc_75_150_24_running_time.csv AntColony c artificial/01_knap_sc_75_150_24.csv - - 50 --sp1 50 --sp2 0.5 
python3 ./01Knapsack.py artificial/01_knap_sc_75_150_24_running_time.csv Randomized c artificial/01_knap_sc_75_150_24.csv - - 50 --sp1 0.1 

# we changed the number of individuals in genectic algorithm: 10, 25, 75, 100, 200
# we changed the number of of iterations in ant colony: 25, 75, 100, 200
# we changed the number of iterations in randomized: 25, 75, 100, 200
python3 ./01Knapsack.py artificial/01_knap_sc_75_150_24_running_time.csv GeneticProgramming c artificial/01_knap_sc_75_150_24.csv - - - --sp1 10
python3 ./01Knapsack.py artificial/01_knap_sc_75_150_24_running_time.csv GeneticProgramming c artificial/01_knap_sc_75_150_24.csv - - - --sp1 25
python3 ./01Knapsack.py artificial/01_knap_sc_75_150_24_running_time.csv GeneticProgramming c artificial/01_knap_sc_75_150_24.csv - - - --sp1 75
python3 ./01Knapsack.py artificial/01_knap_sc_75_150_24_running_time.csv GeneticProgramming c artificial/01_knap_sc_75_150_24.csv - - - --sp1 100
python3 ./01Knapsack.py artificial/01_knap_sc_75_150_24_running_time.csv GeneticProgramming c artificial/01_knap_sc_75_150_24.csv - - - --sp1 200

python3 ./01Knapsack.py artificial/01_knap_sc_75_150_24_running_time.csv GeneticProgramming c artificial/01_knap_sc_75_150_24.csv - - - --sp1 250
python3 ./01Knapsack.py artificial/01_knap_sc_75_150_24_running_time.csv GeneticProgramming c artificial/01_knap_sc_75_150_24.csv - - - --sp1 300
python3 ./01Knapsack.py artificial/01_knap_sc_75_150_24_running_time.csv GeneticProgramming c artificial/01_knap_sc_75_150_24.csv - - - --sp1 350
python3 ./01Knapsack.py artificial/01_knap_sc_75_150_24_running_time.csv GeneticProgramming c artificial/01_knap_sc_75_150_24.csv - - - --sp1 400

# Ant colony on 250,300,350,400,500
python3 ./01Knapsack.py artificial/01_knap_sc_75_150_24_running_time.csv AntColony c artificial/01_knap_sc_75_150_24.csv - - 200 --sp1 50 --sp2 0.5 
python3 ./01Knapsack.py artificial/01_knap_sc_75_150_24_running_time.csv AntColony c artificial/01_knap_sc_75_150_24.csv - - 250 --sp1 50 --sp2 0.5 
python3 ./01Knapsack.py artificial/01_knap_sc_75_150_24_running_time.csv AntColony c artificial/01_knap_sc_75_150_24.csv - - 300 --sp1 50 --sp2 0.5 
python3 ./01Knapsack.py artificial/01_knap_sc_75_150_24_running_time.csv AntColony c artificial/01_knap_sc_75_150_24.csv - - 350 --sp1 50 --sp2 0.5 
python3 ./01Knapsack.py artificial/01_knap_sc_75_150_24_running_time.csv AntColony c artificial/01_knap_sc_75_150_24.csv - - 400 --sp1 50 --sp2 0.5 

# Ant colony on number of ants 25,50,75,100,200
python3 ./01Knapsack.py artificial/01_knap_sc_75_150_24_running_time.csv AntColony c artificial/01_knap_sc_75_150_24.csv - - 200 --sp1 25 --sp2 0.5 
python3 ./01Knapsack.py artificial/01_knap_sc_75_150_24_running_time.csv AntColony c artificial/01_knap_sc_75_150_24.csv - - 200 --sp1 50 --sp2 0.5 
python3 ./01Knapsack.py artificial/01_knap_sc_75_150_24_running_time.csv AntColony c artificial/01_knap_sc_75_150_24.csv - - 200 --sp1 75 --sp2 0.5 
python3 ./01Knapsack.py artificial/01_knap_sc_75_150_24_running_time.csv AntColony c artificial/01_knap_sc_75_150_24.csv - - 200 --sp1 100 --sp2 0.5 
python3 ./01Knapsack.py artificial/01_knap_sc_75_150_24_running_time.csv AntColony c artificial/01_knap_sc_75_150_24.csv - - 200 --sp1 200 --sp2 0.5 

# Ant colony on decay 0.5,0.75,0.95
python3 ./01Knapsack.py artificial/01_knap_sc_75_150_24_running_time.csv AntColony c artificial/01_knap_sc_75_150_24.csv - - 200 --sp1 100 --sp2 0.5 
python3 ./01Knapsack.py artificial/01_knap_sc_75_150_24_running_time.csv AntColony c artificial/01_knap_sc_75_150_24.csv - - 200 --sp1 100 --sp2 0.75 
python3 ./01Knapsack.py artificial/01_knap_sc_75_150_24_running_time.csv AntColony c artificial/01_knap_sc_75_150_24.csv - - 200 --sp1 100 --sp2 0.95

# Randomized on ratios 0.2,0.3,0.4,0.5
python3 ./01Knapsack.py artificial/01_knap_sc_75_150_24_running_time.csv Randomized c artificial/01_knap_sc_75_150_24.csv - - 100 --sp1 0.2
python3 ./01Knapsack.py artificial/01_knap_sc_75_150_24_running_time.csv Randomized c artificial/01_knap_sc_75_150_24.csv - - 100 --sp1 0.3
python3 ./01Knapsack.py artificial/01_knap_sc_75_150_24_running_time.csv Randomized c artificial/01_knap_sc_75_150_24.csv - - 100 --sp1 0.4
python3 ./01Knapsack.py artificial/01_knap_sc_75_150_24_running_time.csv Randomized c artificial/01_knap_sc_75_150_24.csv - - 100 --sp1 0.5

# Artificial data
# 01_knap_un_100_200_10.csv
python3 ./01Knapsack.py artificial/01_knap_un_100_200_10_running_time.csv BranchAndBound c artificial/01_knap_un_100_200_10.csv - - - 
python3 ./01Knapsack.py artificial/01_knap_un_100_200_10_running_time.csv RatioSortGreedy c artificial/01_knap_un_100_200_10.csv - - - 
python3 ./01Knapsack.py artificial/01_knap_un_100_200_10_running_time.csv ValueSortGreedy c artificial/01_knap_un_100_200_10.csv - - - 
python3 ./01Knapsack.py artificial/01_knap_un_100_200_10_running_time.csv WeightSortGreedy c artificial/01_knap_un_100_200_10.csv - - - 
python3 ./01Knapsack.py artificial/01_knap_un_100_200_10_running_time.csv RatiosortAndConvergeGreedy c artificial/01_knap_un_100_200_10.csv - - - 
python3 ./01Knapsack.py artificial/01_knap_un_100_200_10_running_time.csv TopDownDynamicProgramming c artificial/01_knap_un_100_200_10.csv - - - 
python3 ./01Knapsack.py artificial/01_knap_un_100_200_10_running_time.csv BottomUpDynamicProgramming c artificial/01_knap_un_100_200_10.csv - - - 
python3 ./01Knapsack.py artificial/01_knap_un_100_200_10_running_time.csv FullyPolyNomial c artificial/01_knap_un_100_200_10.csv - - - 
python3 ./01Knapsack.py artificial/01_knap_un_100_200_10_running_time.csv GeneticProgramming c artificial/01_knap_un_100_200_10.csv - - - --sp1 50
python3 ./01Knapsack.py artificial/01_knap_un_100_200_10_running_time.csv AntColony c artificial/01_knap_un_100_200_10.csv - - 50 --sp1 50 --sp2 0.5 
python3 ./01Knapsack.py artificial/01_knap_un_100_200_10_running_time.csv Randomized c artificial/01_knap_un_100_200_10.csv - - 50 --sp1 0.1 

# we changed the number of individuals in genectic algorithm: 10, 25, 75, 100, 200
# we changed the number of of iterations in ant colony: 25, 75, 100, 200
# we changed the number of iterations in randomized: 25, 75, 100, 200
python3 ./01Knapsack.py artificial/01_knap_un_100_200_10_running_time.csv GeneticProgramming c artificial/01_knap_un_100_200_10.csv - - - --sp1 10
python3 ./01Knapsack.py artificial/01_knap_un_100_200_10_running_time.csv GeneticProgramming c artificial/01_knap_un_100_200_10.csv - - - --sp1 25
python3 ./01Knapsack.py artificial/01_knap_un_100_200_10_running_time.csv GeneticProgramming c artificial/01_knap_un_100_200_10.csv - - - --sp1 75
python3 ./01Knapsack.py artificial/01_knap_un_100_200_10_running_time.csv GeneticProgramming c artificial/01_knap_un_100_200_10.csv - - - --sp1 100
python3 ./01Knapsack.py artificial/01_knap_un_100_200_10_running_time.csv GeneticProgramming c artificial/01_knap_un_100_200_10.csv - - - --sp1 200

python3 ./01Knapsack.py artificial/01_knap_un_100_200_10_running_time.csv GeneticProgramming c artificial/01_knap_un_100_200_10.csv - - - --sp1 250
python3 ./01Knapsack.py artificial/01_knap_un_100_200_10_running_time.csv GeneticProgramming c artificial/01_knap_un_100_200_10.csv - - - --sp1 300
python3 ./01Knapsack.py artificial/01_knap_un_100_200_10_running_time.csv GeneticProgramming c artificial/01_knap_un_100_200_10.csv - - - --sp1 350
python3 ./01Knapsack.py artificial/01_knap_un_100_200_10_running_time.csv GeneticProgramming c artificial/01_knap_un_100_200_10.csv - - - --sp1 400

# Ant colony on 250,300,350,400,500
python3 ./01Knapsack.py artificial/01_knap_un_100_200_10_running_time.csv AntColony c artificial/01_knap_un_100_200_10.csv - - 200 --sp1 50 --sp2 0.5 
python3 ./01Knapsack.py artificial/01_knap_un_100_200_10_running_time.csv AntColony c artificial/01_knap_un_100_200_10.csv - - 250 --sp1 50 --sp2 0.5 
python3 ./01Knapsack.py artificial/01_knap_un_100_200_10_running_time.csv AntColony c artificial/01_knap_un_100_200_10.csv - - 300 --sp1 50 --sp2 0.5 
python3 ./01Knapsack.py artificial/01_knap_un_100_200_10_running_time.csv AntColony c artificial/01_knap_un_100_200_10.csv - - 350 --sp1 50 --sp2 0.5 
python3 ./01Knapsack.py artificial/01_knap_un_100_200_10_running_time.csv AntColony c artificial/01_knap_un_100_200_10.csv - - 400 --sp1 50 --sp2 0.5 

# Ant colony on number of ants 25,50,75,100,200
python3 ./01Knapsack.py artificial/01_knap_un_100_200_10_running_time.csv AntColony c artificial/01_knap_un_100_200_10.csv - - 200 --sp1 25 --sp2 0.5 
python3 ./01Knapsack.py artificial/01_knap_un_100_200_10_running_time.csv AntColony c artificial/01_knap_un_100_200_10.csv - - 200 --sp1 50 --sp2 0.5 
python3 ./01Knapsack.py artificial/01_knap_un_100_200_10_running_time.csv AntColony c artificial/01_knap_un_100_200_10.csv - - 200 --sp1 75 --sp2 0.5 
python3 ./01Knapsack.py artificial/01_knap_un_100_200_10_running_time.csv AntColony c artificial/01_knap_un_100_200_10.csv - - 200 --sp1 100 --sp2 0.5 
python3 ./01Knapsack.py artificial/01_knap_un_100_200_10_running_time.csv AntColony c artificial/01_knap_un_100_200_10.csv - - 200 --sp1 200 --sp2 0.5 

# Ant colony on decay 0.5,0.75,0.95
python3 ./01Knapsack.py artificial/01_knap_un_100_200_10_running_time.csv AntColony c artificial/01_knap_un_100_200_10.csv - - 200 --sp1 100 --sp2 0.5 
python3 ./01Knapsack.py artificial/01_knap_un_100_200_10_running_time.csv AntColony c artificial/01_knap_un_100_200_10.csv - - 200 --sp1 100 --sp2 0.75 
python3 ./01Knapsack.py artificial/01_knap_un_100_200_10_running_time.csv AntColony c artificial/01_knap_un_100_200_10.csv - - 200 --sp1 100 --sp2 0.95

# Randomized on ratios 0.2,0.3,0.4,0.5
python3 ./01Knapsack.py artificial/01_knap_un_100_200_10_running_time.csv Randomized c artificial/01_knap_un_100_200_10.csv - - 100 --sp1 0.2
python3 ./01Knapsack.py artificial/01_knap_un_100_200_10_running_time.csv Randomized c artificial/01_knap_un_100_200_10.csv - - 100 --sp1 0.3
python3 ./01Knapsack.py artificial/01_knap_un_100_200_10_running_time.csv Randomized c artificial/01_knap_un_100_200_10.csv - - 100 --sp1 0.4
python3 ./01Knapsack.py artificial/01_knap_un_100_200_10_running_time.csv Randomized c artificial/01_knap_un_100_200_10.csv - - 100 --sp1 0.5

# Artificial data
# 01_knap_un_100_200_10.csv
python3 ./01Knapsack.py artificial/01_knap_un_100_200_10_running_time.csv BranchAndBound c artificial/01_knap_un_100_200_10.csv - - - 
python3 ./01Knapsack.py artificial/01_knap_un_100_200_10_running_time.csv RatioSortGreedy c artificial/01_knap_un_100_200_10.csv - - - 
python3 ./01Knapsack.py artificial/01_knap_un_100_200_10_running_time.csv ValueSortGreedy c artificial/01_knap_un_100_200_10.csv - - - 
python3 ./01Knapsack.py artificial/01_knap_un_100_200_10_running_time.csv WeightSortGreedy c artificial/01_knap_un_100_200_10.csv - - - 
python3 ./01Knapsack.py artificial/01_knap_un_100_200_10_running_time.csv RatiosortAndConvergeGreedy c artificial/01_knap_un_100_200_10.csv - - - 
python3 ./01Knapsack.py artificial/01_knap_un_100_200_10_running_time.csv TopDownDynamicProgramming c artificial/01_knap_un_100_200_10.csv - - - 
python3 ./01Knapsack.py artificial/01_knap_un_100_200_10_running_time.csv BottomUpDynamicProgramming c artificial/01_knap_un_100_200_10.csv - - - 
python3 ./01Knapsack.py artificial/01_knap_un_100_200_10_running_time.csv FullyPolyNomial c artificial/01_knap_un_100_200_10.csv - - - 
python3 ./01Knapsack.py artificial/01_knap_un_100_200_10_running_time.csv GeneticProgramming c artificial/01_knap_un_100_200_10.csv - - - --sp1 50
python3 ./01Knapsack.py artificial/01_knap_un_100_200_10_running_time.csv AntColony c artificial/01_knap_un_100_200_10.csv - - 50 --sp1 50 --sp2 0.5 
python3 ./01Knapsack.py artificial/01_knap_un_100_200_10_running_time.csv Randomized c artificial/01_knap_un_100_200_10.csv - - 50 --sp1 0.1 

# we changed the number of individuals in genectic algorithm: 10, 25, 75, 100, 200
# we changed the number of of iterations in ant colony: 25, 75, 100, 200
# we changed the number of iterations in randomized: 25, 75, 100, 200
python3 ./01Knapsack.py artificial/01_knap_un_100_200_10_running_time.csv GeneticProgramming c artificial/01_knap_un_100_200_10.csv - - - --sp1 10
python3 ./01Knapsack.py artificial/01_knap_un_100_200_10_running_time.csv GeneticProgramming c artificial/01_knap_un_100_200_10.csv - - - --sp1 25
python3 ./01Knapsack.py artificial/01_knap_un_100_200_10_running_time.csv GeneticProgramming c artificial/01_knap_un_100_200_10.csv - - - --sp1 75
python3 ./01Knapsack.py artificial/01_knap_un_100_200_10_running_time.csv GeneticProgramming c artificial/01_knap_un_100_200_10.csv - - - --sp1 100
python3 ./01Knapsack.py artificial/01_knap_un_100_200_10_running_time.csv GeneticProgramming c artificial/01_knap_un_100_200_10.csv - - - --sp1 200

python3 ./01Knapsack.py artificial/01_knap_un_100_200_10_running_time.csv GeneticProgramming c artificial/01_knap_un_100_200_10.csv - - - --sp1 250
python3 ./01Knapsack.py artificial/01_knap_un_100_200_10_running_time.csv GeneticProgramming c artificial/01_knap_un_100_200_10.csv - - - --sp1 300
python3 ./01Knapsack.py artificial/01_knap_un_100_200_10_running_time.csv GeneticProgramming c artificial/01_knap_un_100_200_10.csv - - - --sp1 350
python3 ./01Knapsack.py artificial/01_knap_un_100_200_10_running_time.csv GeneticProgramming c artificial/01_knap_un_100_200_10.csv - - - --sp1 400

# Ant colony on 250,300,350,400,500
python3 ./01Knapsack.py artificial/01_knap_un_100_200_10_running_time.csv AntColony c artificial/01_knap_un_100_200_10.csv - - 200 --sp1 50 --sp2 0.5 
python3 ./01Knapsack.py artificial/01_knap_un_100_200_10_running_time.csv AntColony c artificial/01_knap_un_100_200_10.csv - - 250 --sp1 50 --sp2 0.5 
python3 ./01Knapsack.py artificial/01_knap_un_100_200_10_running_time.csv AntColony c artificial/01_knap_un_100_200_10.csv - - 300 --sp1 50 --sp2 0.5 
python3 ./01Knapsack.py artificial/01_knap_un_100_200_10_running_time.csv AntColony c artificial/01_knap_un_100_200_10.csv - - 350 --sp1 50 --sp2 0.5 
python3 ./01Knapsack.py artificial/01_knap_un_100_200_10_running_time.csv AntColony c artificial/01_knap_un_100_200_10.csv - - 400 --sp1 50 --sp2 0.5 

# Ant colony on number of ants 25,50,75,100,200
python3 ./01Knapsack.py artificial/01_knap_un_100_200_10_running_time.csv AntColony c artificial/01_knap_un_100_200_10.csv - - 200 --sp1 25 --sp2 0.5 
python3 ./01Knapsack.py artificial/01_knap_un_100_200_10_running_time.csv AntColony c artificial/01_knap_un_100_200_10.csv - - 200 --sp1 50 --sp2 0.5 
python3 ./01Knapsack.py artificial/01_knap_un_100_200_10_running_time.csv AntColony c artificial/01_knap_un_100_200_10.csv - - 200 --sp1 75 --sp2 0.5 
python3 ./01Knapsack.py artificial/01_knap_un_100_200_10_running_time.csv AntColony c artificial/01_knap_un_100_200_10.csv - - 200 --sp1 100 --sp2 0.5 
python3 ./01Knapsack.py artificial/01_knap_un_100_200_10_running_time.csv AntColony c artificial/01_knap_un_100_200_10.csv - - 200 --sp1 200 --sp2 0.5 

# Ant colony on decay 0.5,0.75,0.95
python3 ./01Knapsack.py artificial/01_knap_un_100_200_10_running_time.csv AntColony c artificial/01_knap_un_100_200_10.csv - - 200 --sp1 100 --sp2 0.5 
python3 ./01Knapsack.py artificial/01_knap_un_100_200_10_running_time.csv AntColony c artificial/01_knap_un_100_200_10.csv - - 200 --sp1 100 --sp2 0.75 
python3 ./01Knapsack.py artificial/01_knap_un_100_200_10_running_time.csv AntColony c artificial/01_knap_un_100_200_10.csv - - 200 --sp1 100 --sp2 0.95

# Randomized on ratios 0.2,0.3,0.4,0.5
python3 ./01Knapsack.py artificial/01_knap_un_100_200_10_running_time.csv Randomized c artificial/01_knap_un_100_200_10.csv - - 100 --sp1 0.2
python3 ./01Knapsack.py artificial/01_knap_un_100_200_10_running_time.csv Randomized c artificial/01_knap_un_100_200_10.csv - - 100 --sp1 0.3
python3 ./01Knapsack.py artificial/01_knap_un_100_200_10_running_time.csv Randomized c artificial/01_knap_un_100_200_10.csv - - 100 --sp1 0.4
python3 ./01Knapsack.py artificial/01_knap_un_100_200_10_running_time.csv Randomized c artificial/01_knap_un_100_200_10.csv - - 100 --sp1 0.5

# Artificial data
# 01_knap_un_20_100_15.csv
python3 ./01Knapsack.py artificial/01_knap_un_20_100_15_running_time.csv BranchAndBound c artificial/01_knap_un_20_100_15.csv - - - 
python3 ./01Knapsack.py artificial/01_knap_un_20_100_15_running_time.csv RatioSortGreedy c artificial/01_knap_un_20_100_15.csv - - - 
python3 ./01Knapsack.py artificial/01_knap_un_20_100_15_running_time.csv ValueSortGreedy c artificial/01_knap_un_20_100_15.csv - - - 
python3 ./01Knapsack.py artificial/01_knap_un_20_100_15_running_time.csv WeightSortGreedy c artificial/01_knap_un_20_100_15.csv - - - 
python3 ./01Knapsack.py artificial/01_knap_un_20_100_15_running_time.csv RatiosortAndConvergeGreedy c artificial/01_knap_un_20_100_15.csv - - - 
python3 ./01Knapsack.py artificial/01_knap_un_20_100_15_running_time.csv TopDownDynamicProgramming c artificial/01_knap_un_20_100_15.csv - - - 
python3 ./01Knapsack.py artificial/01_knap_un_20_100_15_running_time.csv BottomUpDynamicProgramming c artificial/01_knap_un_20_100_15.csv - - - 
python3 ./01Knapsack.py artificial/01_knap_un_20_100_15_running_time.csv FullyPolyNomial c artificial/01_knap_un_20_100_15.csv - - - 
python3 ./01Knapsack.py artificial/01_knap_un_20_100_15_running_time.csv GeneticProgramming c artificial/01_knap_un_20_100_15.csv - - - --sp1 50
python3 ./01Knapsack.py artificial/01_knap_un_20_100_15_running_time.csv AntColony c artificial/01_knap_un_20_100_15.csv - - 50 --sp1 50 --sp2 0.5 
python3 ./01Knapsack.py artificial/01_knap_un_20_100_15_running_time.csv Randomized c artificial/01_knap_un_20_100_15.csv - - 50 --sp1 0.1 

# we changed the number of individuals in genectic algorithm: 10, 25, 75, 100, 200
# we changed the number of of iterations in ant colony: 25, 75, 100, 200
# we changed the number of iterations in randomized: 25, 75, 100, 200
python3 ./01Knapsack.py artificial/01_knap_un_20_100_15_running_time.csv GeneticProgramming c artificial/01_knap_un_20_100_15.csv - - - --sp1 10
python3 ./01Knapsack.py artificial/01_knap_un_20_100_15_running_time.csv GeneticProgramming c artificial/01_knap_un_20_100_15.csv - - - --sp1 25
python3 ./01Knapsack.py artificial/01_knap_un_20_100_15_running_time.csv GeneticProgramming c artificial/01_knap_un_20_100_15.csv - - - --sp1 75
python3 ./01Knapsack.py artificial/01_knap_un_20_100_15_running_time.csv GeneticProgramming c artificial/01_knap_un_20_100_15.csv - - - --sp1 100
python3 ./01Knapsack.py artificial/01_knap_un_20_100_15_running_time.csv GeneticProgramming c artificial/01_knap_un_20_100_15.csv - - - --sp1 200

python3 ./01Knapsack.py artificial/01_knap_un_20_100_15_running_time.csv GeneticProgramming c artificial/01_knap_un_20_100_15.csv - - - --sp1 250
python3 ./01Knapsack.py artificial/01_knap_un_20_100_15_running_time.csv GeneticProgramming c artificial/01_knap_un_20_100_15.csv - - - --sp1 300
python3 ./01Knapsack.py artificial/01_knap_un_20_100_15_running_time.csv GeneticProgramming c artificial/01_knap_un_20_100_15.csv - - - --sp1 350
python3 ./01Knapsack.py artificial/01_knap_un_20_100_15_running_time.csv GeneticProgramming c artificial/01_knap_un_20_100_15.csv - - - --sp1 400

# Ant colony on 250,300,350,400,500
python3 ./01Knapsack.py artificial/01_knap_un_20_100_15_running_time.csv AntColony c artificial/01_knap_un_20_100_15.csv - - 200 --sp1 50 --sp2 0.5 
python3 ./01Knapsack.py artificial/01_knap_un_20_100_15_running_time.csv AntColony c artificial/01_knap_un_20_100_15.csv - - 250 --sp1 50 --sp2 0.5 
python3 ./01Knapsack.py artificial/01_knap_un_20_100_15_running_time.csv AntColony c artificial/01_knap_un_20_100_15.csv - - 300 --sp1 50 --sp2 0.5 
python3 ./01Knapsack.py artificial/01_knap_un_20_100_15_running_time.csv AntColony c artificial/01_knap_un_20_100_15.csv - - 350 --sp1 50 --sp2 0.5 
python3 ./01Knapsack.py artificial/01_knap_un_20_100_15_running_time.csv AntColony c artificial/01_knap_un_20_100_15.csv - - 400 --sp1 50 --sp2 0.5 

# Ant colony on number of ants 25,50,75,100,200
python3 ./01Knapsack.py artificial/01_knap_un_20_100_15_running_time.csv AntColony c artificial/01_knap_un_20_100_15.csv - - 200 --sp1 25 --sp2 0.5 
python3 ./01Knapsack.py artificial/01_knap_un_20_100_15_running_time.csv AntColony c artificial/01_knap_un_20_100_15.csv - - 200 --sp1 50 --sp2 0.5 
python3 ./01Knapsack.py artificial/01_knap_un_20_100_15_running_time.csv AntColony c artificial/01_knap_un_20_100_15.csv - - 200 --sp1 75 --sp2 0.5 
python3 ./01Knapsack.py artificial/01_knap_un_20_100_15_running_time.csv AntColony c artificial/01_knap_un_20_100_15.csv - - 200 --sp1 100 --sp2 0.5 
python3 ./01Knapsack.py artificial/01_knap_un_20_100_15_running_time.csv AntColony c artificial/01_knap_un_20_100_15.csv - - 200 --sp1 200 --sp2 0.5 

# Ant colony on decay 0.5,0.75,0.95
python3 ./01Knapsack.py artificial/01_knap_un_20_100_15_running_time.csv AntColony c artificial/01_knap_un_20_100_15.csv - - 200 --sp1 100 --sp2 0.5 
python3 ./01Knapsack.py artificial/01_knap_un_20_100_15_running_time.csv AntColony c artificial/01_knap_un_20_100_15.csv - - 200 --sp1 100 --sp2 0.75 
python3 ./01Knapsack.py artificial/01_knap_un_20_100_15_running_time.csv AntColony c artificial/01_knap_un_20_100_15.csv - - 200 --sp1 100 --sp2 0.95

# Randomized on ratios 0.2,0.3,0.4,0.5
python3 ./01Knapsack.py artificial/01_knap_un_20_100_15_running_time.csv Randomized c artificial/01_knap_un_20_100_15.csv - - 100 --sp1 0.2
python3 ./01Knapsack.py artificial/01_knap_un_20_100_15_running_time.csv Randomized c artificial/01_knap_un_20_100_15.csv - - 100 --sp1 0.3
python3 ./01Knapsack.py artificial/01_knap_un_20_100_15_running_time.csv Randomized c artificial/01_knap_un_20_100_15.csv - - 100 --sp1 0.4
python3 ./01Knapsack.py artificial/01_knap_un_20_100_15_running_time.csv Randomized c artificial/01_knap_un_20_100_15.csv - - 100 --sp1 0.5

# Artificial data
# 01_knap_un_50_100_16.csv
python3 ./01Knapsack.py artificial/01_knap_un_75_150_21_running_time.csv BranchAndBound c artificial/01_knap_un_50_100_16.csv - - - 
python3 ./01Knapsack.py artificial/01_knap_un_75_150_21_running_time.csv RatioSortGreedy c artificial/01_knap_un_50_100_16.csv - - - 
python3 ./01Knapsack.py artificial/01_knap_un_75_150_21_running_time.csv ValueSortGreedy c artificial/01_knap_un_50_100_16.csv - - - 
python3 ./01Knapsack.py artificial/01_knap_un_75_150_21_running_time.csv WeightSortGreedy c artificial/01_knap_un_50_100_16.csv - - - 
python3 ./01Knapsack.py artificial/01_knap_un_75_150_21_running_time.csv RatiosortAndConvergeGreedy c artificial/01_knap_un_50_100_16.csv - - - 
python3 ./01Knapsack.py artificial/01_knap_un_75_150_21_running_time.csv TopDownDynamicProgramming c artificial/01_knap_un_50_100_16.csv - - - 
python3 ./01Knapsack.py artificial/01_knap_un_75_150_21_running_time.csv BottomUpDynamicProgramming c artificial/01_knap_un_50_100_16.csv - - - 
python3 ./01Knapsack.py artificial/01_knap_un_75_150_21_running_time.csv FullyPolyNomial c artificial/01_knap_un_50_100_16.csv - - - 
python3 ./01Knapsack.py artificial/01_knap_un_75_150_21_running_time.csv GeneticProgramming c artificial/01_knap_un_50_100_16.csv - - - --sp1 50
python3 ./01Knapsack.py artificial/01_knap_un_75_150_21_running_time.csv AntColony c artificial/01_knap_un_50_100_16.csv - - 50 --sp1 50 --sp2 0.5 
python3 ./01Knapsack.py artificial/01_knap_un_75_150_21_running_time.csv Randomized c artificial/01_knap_un_50_100_16.csv - - 50 --sp1 0.1 

# we changed the number of individuals in genectic algorithm: 10, 25, 75, 100, 200
# we changed the number of of iterations in ant colony: 25, 75, 100, 200
# we changed the number of iterations in randomized: 25, 75, 100, 200
python3 ./01Knapsack.py artificial/01_knap_un_75_150_21_running_time.csv GeneticProgramming c artificial/01_knap_un_50_100_16.csv - - - --sp1 10
python3 ./01Knapsack.py artificial/01_knap_un_75_150_21_running_time.csv GeneticProgramming c artificial/01_knap_un_50_100_16.csv - - - --sp1 25
python3 ./01Knapsack.py artificial/01_knap_un_75_150_21_running_time.csv GeneticProgramming c artificial/01_knap_un_50_100_16.csv - - - --sp1 75
python3 ./01Knapsack.py artificial/01_knap_un_75_150_21_running_time.csv GeneticProgramming c artificial/01_knap_un_50_100_16.csv - - - --sp1 100
python3 ./01Knapsack.py artificial/01_knap_un_75_150_21_running_time.csv GeneticProgramming c artificial/01_knap_un_50_100_16.csv - - - --sp1 200

python3 ./01Knapsack.py artificial/01_knap_un_75_150_21_running_time.csv GeneticProgramming c artificial/01_knap_un_50_100_16.csv - - - --sp1 250
python3 ./01Knapsack.py artificial/01_knap_un_75_150_21_running_time.csv GeneticProgramming c artificial/01_knap_un_50_100_16.csv - - - --sp1 300
python3 ./01Knapsack.py artificial/01_knap_un_75_150_21_running_time.csv GeneticProgramming c artificial/01_knap_un_50_100_16.csv - - - --sp1 350
python3 ./01Knapsack.py artificial/01_knap_un_75_150_21_running_time.csv GeneticProgramming c artificial/01_knap_un_50_100_16.csv - - - --sp1 400

# Ant colony on 250,300,350,400,500
python3 ./01Knapsack.py artificial/01_knap_un_75_150_21_running_time.csv AntColony c artificial/01_knap_un_50_100_16.csv - - 200 --sp1 50 --sp2 0.5 
python3 ./01Knapsack.py artificial/01_knap_un_75_150_21_running_time.csv AntColony c artificial/01_knap_un_50_100_16.csv - - 250 --sp1 50 --sp2 0.5 
python3 ./01Knapsack.py artificial/01_knap_un_75_150_21_running_time.csv AntColony c artificial/01_knap_un_50_100_16.csv - - 300 --sp1 50 --sp2 0.5 
python3 ./01Knapsack.py artificial/01_knap_un_75_150_21_running_time.csv AntColony c artificial/01_knap_un_50_100_16.csv - - 350 --sp1 50 --sp2 0.5 
python3 ./01Knapsack.py artificial/01_knap_un_75_150_21_running_time.csv AntColony c artificial/01_knap_un_50_100_16.csv - - 400 --sp1 50 --sp2 0.5 

# Ant colony on number of ants 25,50,75,100,200
python3 ./01Knapsack.py artificial/01_knap_un_75_150_21_running_time.csv AntColony c artificial/01_knap_un_50_100_16.csv - - 200 --sp1 25 --sp2 0.5 
python3 ./01Knapsack.py artificial/01_knap_un_75_150_21_running_time.csv AntColony c artificial/01_knap_un_50_100_16.csv - - 200 --sp1 50 --sp2 0.5 
python3 ./01Knapsack.py artificial/01_knap_un_75_150_21_running_time.csv AntColony c artificial/01_knap_un_50_100_16.csv - - 200 --sp1 75 --sp2 0.5 
python3 ./01Knapsack.py artificial/01_knap_un_75_150_21_running_time.csv AntColony c artificial/01_knap_un_50_100_16.csv - - 200 --sp1 100 --sp2 0.5 
python3 ./01Knapsack.py artificial/01_knap_un_75_150_21_running_time.csv AntColony c artificial/01_knap_un_50_100_16.csv - - 200 --sp1 200 --sp2 0.5 

# Ant colony on decay 0.5,0.75,0.95
python3 ./01Knapsack.py artificial/01_knap_un_75_150_21_running_time.csv AntColony c artificial/01_knap_un_50_100_16.csv - - 200 --sp1 100 --sp2 0.5 
python3 ./01Knapsack.py artificial/01_knap_un_75_150_21_running_time.csv AntColony c artificial/01_knap_un_50_100_16.csv - - 200 --sp1 100 --sp2 0.75 
python3 ./01Knapsack.py artificial/01_knap_un_75_150_21_running_time.csv AntColony c artificial/01_knap_un_50_100_16.csv - - 200 --sp1 100 --sp2 0.95

# Randomized on ratios 0.2,0.3,0.4,0.5
python3 ./01Knapsack.py artificial/01_knap_un_75_150_21_running_time.csv Randomized c artificial/01_knap_un_50_100_16.csv - - 100 --sp1 0.2
python3 ./01Knapsack.py artificial/01_knap_un_75_150_21_running_time.csv Randomized c artificial/01_knap_un_50_100_16.csv - - 100 --sp1 0.3
python3 ./01Knapsack.py artificial/01_knap_un_75_150_21_running_time.csv Randomized c artificial/01_knap_un_50_100_16.csv - - 100 --sp1 0.4
python3 ./01Knapsack.py artificial/01_knap_un_75_150_21_running_time.csv Randomized c artificial/01_knap_un_50_100_16.csv - - 100 --sp1 0.5

# Artificial data
# 01_knap_un_75_150_21.csv
python3 ./01Knapsack.py artificial/01_knap_un_75_150_21_running_time.csv BranchAndBound c artificial/01_knap_un_75_150_21.csv - - - 
python3 ./01Knapsack.py artificial/01_knap_un_75_150_21_running_time.csv RatioSortGreedy c artificial/01_knap_un_75_150_21.csv - - - 
python3 ./01Knapsack.py artificial/01_knap_un_75_150_21_running_time.csv ValueSortGreedy c artificial/01_knap_un_75_150_21.csv - - - 
python3 ./01Knapsack.py artificial/01_knap_un_75_150_21_running_time.csv WeightSortGreedy c artificial/01_knap_un_75_150_21.csv - - - 
python3 ./01Knapsack.py artificial/01_knap_un_75_150_21_running_time.csv RatiosortAndConvergeGreedy c artificial/01_knap_un_75_150_21.csv - - - 
python3 ./01Knapsack.py artificial/01_knap_un_75_150_21_running_time.csv TopDownDynamicProgramming c artificial/01_knap_un_75_150_21.csv - - - 
python3 ./01Knapsack.py artificial/01_knap_un_75_150_21_running_time.csv BottomUpDynamicProgramming c artificial/01_knap_un_75_150_21.csv - - - 
python3 ./01Knapsack.py artificial/01_knap_un_75_150_21_running_time.csv FullyPolyNomial c artificial/01_knap_un_75_150_21.csv - - - 
python3 ./01Knapsack.py artificial/01_knap_un_75_150_21_running_time.csv GeneticProgramming c artificial/01_knap_un_75_150_21.csv - - - --sp1 50
python3 ./01Knapsack.py artificial/01_knap_un_75_150_21_running_time.csv AntColony c artificial/01_knap_un_75_150_21.csv - - 50 --sp1 50 --sp2 0.5 
python3 ./01Knapsack.py artificial/01_knap_un_75_150_21_running_time.csv Randomized c artificial/01_knap_un_75_150_21.csv - - 50 --sp1 0.1 

# we changed the number of individuals in genectic algorithm: 10, 25, 75, 100, 200
# we changed the number of of iterations in ant colony: 25, 75, 100, 200
# we changed the number of iterations in randomized: 25, 75, 100, 200
python3 ./01Knapsack.py artificial/01_knap_un_75_150_21_running_time.csv GeneticProgramming c artificial/01_knap_un_75_150_21.csv - - - --sp1 10
python3 ./01Knapsack.py artificial/01_knap_un_75_150_21_running_time.csv GeneticProgramming c artificial/01_knap_un_75_150_21.csv - - - --sp1 25
python3 ./01Knapsack.py artificial/01_knap_un_75_150_21_running_time.csv GeneticProgramming c artificial/01_knap_un_75_150_21.csv - - - --sp1 75
python3 ./01Knapsack.py artificial/01_knap_un_75_150_21_running_time.csv GeneticProgramming c artificial/01_knap_un_75_150_21.csv - - - --sp1 100
python3 ./01Knapsack.py artificial/01_knap_un_75_150_21_running_time.csv GeneticProgramming c artificial/01_knap_un_75_150_21.csv - - - --sp1 200

python3 ./01Knapsack.py artificial/01_knap_un_75_150_21_running_time.csv GeneticProgramming c artificial/01_knap_un_75_150_21.csv - - - --sp1 250
python3 ./01Knapsack.py artificial/01_knap_un_75_150_21_running_time.csv GeneticProgramming c artificial/01_knap_un_75_150_21.csv - - - --sp1 300
python3 ./01Knapsack.py artificial/01_knap_un_75_150_21_running_time.csv GeneticProgramming c artificial/01_knap_un_75_150_21.csv - - - --sp1 350
python3 ./01Knapsack.py artificial/01_knap_un_75_150_21_running_time.csv GeneticProgramming c artificial/01_knap_un_75_150_21.csv - - - --sp1 400

# Ant colony on 250,300,350,400,500
python3 ./01Knapsack.py artificial/01_knap_un_75_150_21_running_time.csv AntColony c artificial/01_knap_un_75_150_21.csv - - 200 --sp1 50 --sp2 0.5 
python3 ./01Knapsack.py artificial/01_knap_un_75_150_21_running_time.csv AntColony c artificial/01_knap_un_75_150_21.csv - - 250 --sp1 50 --sp2 0.5 
python3 ./01Knapsack.py artificial/01_knap_un_75_150_21_running_time.csv AntColony c artificial/01_knap_un_75_150_21.csv - - 300 --sp1 50 --sp2 0.5 
python3 ./01Knapsack.py artificial/01_knap_un_75_150_21_running_time.csv AntColony c artificial/01_knap_un_75_150_21.csv - - 350 --sp1 50 --sp2 0.5 
python3 ./01Knapsack.py artificial/01_knap_un_75_150_21_running_time.csv AntColony c artificial/01_knap_un_75_150_21.csv - - 400 --sp1 50 --sp2 0.5 

# Ant colony on number of ants 25,50,75,100,200
python3 ./01Knapsack.py artificial/01_knap_un_75_150_21_running_time.csv AntColony c artificial/01_knap_un_75_150_21.csv - - 200 --sp1 25 --sp2 0.5 
python3 ./01Knapsack.py artificial/01_knap_un_75_150_21_running_time.csv AntColony c artificial/01_knap_un_75_150_21.csv - - 200 --sp1 50 --sp2 0.5 
python3 ./01Knapsack.py artificial/01_knap_un_75_150_21_running_time.csv AntColony c artificial/01_knap_un_75_150_21.csv - - 200 --sp1 75 --sp2 0.5 
python3 ./01Knapsack.py artificial/01_knap_un_75_150_21_running_time.csv AntColony c artificial/01_knap_un_75_150_21.csv - - 200 --sp1 100 --sp2 0.5 
python3 ./01Knapsack.py artificial/01_knap_un_75_150_21_running_time.csv AntColony c artificial/01_knap_un_75_150_21.csv - - 200 --sp1 200 --sp2 0.5 

# Ant colony on decay 0.5,0.75,0.95
python3 ./01Knapsack.py artificial/01_knap_un_75_150_21_running_time.csv AntColony c artificial/01_knap_un_75_150_21.csv - - 200 --sp1 100 --sp2 0.5 
python3 ./01Knapsack.py artificial/01_knap_un_75_150_21_running_time.csv AntColony c artificial/01_knap_un_75_150_21.csv - - 200 --sp1 100 --sp2 0.75 
python3 ./01Knapsack.py artificial/01_knap_un_75_150_21_running_time.csv AntColony c artificial/01_knap_un_75_150_21.csv - - 200 --sp1 100 --sp2 0.95

# Randomized on ratios 0.2,0.3,0.4,0.5
python3 ./01Knapsack.py artificial/01_knap_un_75_150_21_running_time.csv Randomized c artificial/01_knap_un_75_150_21.csv - - 100 --sp1 0.2
python3 ./01Knapsack.py artificial/01_knap_un_75_150_21_running_time.csv Randomized c artificial/01_knap_un_75_150_21.csv - - 100 --sp1 0.3
python3 ./01Knapsack.py artificial/01_knap_un_75_150_21_running_time.csv Randomized c artificial/01_knap_un_75_150_21.csv - - 100 --sp1 0.4
python3 ./01Knapsack.py artificial/01_knap_un_75_150_21_running_time.csv Randomized c artificial/01_knap_un_75_150_21.csv - - 100 --sp1 0.5

# Artificial data
# 01_knap_un_75_150_22.csv
python3 ./01Knapsack.py artificial/01_knap_un_75_150_22_running_time.csv BranchAndBound c artificial/01_knap_un_75_150_22.csv - - - 
python3 ./01Knapsack.py artificial/01_knap_un_75_150_22_running_time.csv RatioSortGreedy c artificial/01_knap_un_75_150_22.csv - - - 
python3 ./01Knapsack.py artificial/01_knap_un_75_150_22_running_time.csv ValueSortGreedy c artificial/01_knap_un_75_150_22.csv - - - 
python3 ./01Knapsack.py artificial/01_knap_un_75_150_22_running_time.csv WeightSortGreedy c artificial/01_knap_un_75_150_22.csv - - - 
python3 ./01Knapsack.py artificial/01_knap_un_75_150_22_running_time.csv RatiosortAndConvergeGreedy c artificial/01_knap_un_75_150_22.csv - - - 
python3 ./01Knapsack.py artificial/01_knap_un_75_150_22_running_time.csv TopDownDynamicProgramming c artificial/01_knap_un_75_150_22.csv - - - 
python3 ./01Knapsack.py artificial/01_knap_un_75_150_22_running_time.csv BottomUpDynamicProgramming c artificial/01_knap_un_75_150_22.csv - - - 
python3 ./01Knapsack.py artificial/01_knap_un_75_150_22_running_time.csv FullyPolyNomial c artificial/01_knap_un_75_150_22.csv - - - 
python3 ./01Knapsack.py artificial/01_knap_un_75_150_22_running_time.csv GeneticProgramming c artificial/01_knap_un_75_150_22.csv - - - --sp1 50
python3 ./01Knapsack.py artificial/01_knap_un_75_150_22_running_time.csv AntColony c artificial/01_knap_un_75_150_22.csv - - 50 --sp1 50 --sp2 0.5 
python3 ./01Knapsack.py artificial/01_knap_un_75_150_22_running_time.csv Randomized c artificial/01_knap_un_75_150_22.csv - - 50 --sp1 0.1 

# we changed the number of individuals in genectic algorithm: 10, 25, 75, 100, 200
# we changed the number of of iterations in ant colony: 25, 75, 100, 200
# we changed the number of iterations in randomized: 25, 75, 100, 200
python3 ./01Knapsack.py artificial/01_knap_un_75_150_22_running_time.csv GeneticProgramming c artificial/01_knap_un_75_150_22.csv - - - --sp1 10
python3 ./01Knapsack.py artificial/01_knap_un_75_150_22_running_time.csv GeneticProgramming c artificial/01_knap_un_75_150_22.csv - - - --sp1 25
python3 ./01Knapsack.py artificial/01_knap_un_75_150_22_running_time.csv GeneticProgramming c artificial/01_knap_un_75_150_22.csv - - - --sp1 75
python3 ./01Knapsack.py artificial/01_knap_un_75_150_22_running_time.csv GeneticProgramming c artificial/01_knap_un_75_150_22.csv - - - --sp1 100
python3 ./01Knapsack.py artificial/01_knap_un_75_150_22_running_time.csv GeneticProgramming c artificial/01_knap_un_75_150_22.csv - - - --sp1 200

python3 ./01Knapsack.py artificial/01_knap_un_75_150_22_running_time.csv GeneticProgramming c artificial/01_knap_un_75_150_22.csv - - - --sp1 250
python3 ./01Knapsack.py artificial/01_knap_un_75_150_22_running_time.csv GeneticProgramming c artificial/01_knap_un_75_150_22.csv - - - --sp1 300
python3 ./01Knapsack.py artificial/01_knap_un_75_150_22_running_time.csv GeneticProgramming c artificial/01_knap_un_75_150_22.csv - - - --sp1 350
python3 ./01Knapsack.py artificial/01_knap_un_75_150_22_running_time.csv GeneticProgramming c artificial/01_knap_un_75_150_22.csv - - - --sp1 400

# Ant colony on 250,300,350,400,500
python3 ./01Knapsack.py artificial/01_knap_un_75_150_22_running_time.csv AntColony c artificial/01_knap_un_75_150_22.csv - - 200 --sp1 50 --sp2 0.5 
python3 ./01Knapsack.py artificial/01_knap_un_75_150_22_running_time.csv AntColony c artificial/01_knap_un_75_150_22.csv - - 250 --sp1 50 --sp2 0.5 
python3 ./01Knapsack.py artificial/01_knap_un_75_150_22_running_time.csv AntColony c artificial/01_knap_un_75_150_22.csv - - 300 --sp1 50 --sp2 0.5 
python3 ./01Knapsack.py artificial/01_knap_un_75_150_22_running_time.csv AntColony c artificial/01_knap_un_75_150_22.csv - - 350 --sp1 50 --sp2 0.5 
python3 ./01Knapsack.py artificial/01_knap_un_75_150_22_running_time.csv AntColony c artificial/01_knap_un_75_150_22.csv - - 400 --sp1 50 --sp2 0.5 

# Ant colony on number of ants 25,50,75,100,200
python3 ./01Knapsack.py artificial/01_knap_un_75_150_22_running_time.csv AntColony c artificial/01_knap_un_75_150_22.csv - - 200 --sp1 25 --sp2 0.5 
python3 ./01Knapsack.py artificial/01_knap_un_75_150_22_running_time.csv AntColony c artificial/01_knap_un_75_150_22.csv - - 200 --sp1 50 --sp2 0.5 
python3 ./01Knapsack.py artificial/01_knap_un_75_150_22_running_time.csv AntColony c artificial/01_knap_un_75_150_22.csv - - 200 --sp1 75 --sp2 0.5 
python3 ./01Knapsack.py artificial/01_knap_un_75_150_22_running_time.csv AntColony c artificial/01_knap_un_75_150_22.csv - - 200 --sp1 100 --sp2 0.5 
python3 ./01Knapsack.py artificial/01_knap_un_75_150_22_running_time.csv AntColony c artificial/01_knap_un_75_150_22.csv - - 200 --sp1 200 --sp2 0.5 

# Ant colony on decay 0.5,0.75,0.95
python3 ./01Knapsack.py artificial/01_knap_un_75_150_22_running_time.csv AntColony c artificial/01_knap_un_75_150_22.csv - - 200 --sp1 100 --sp2 0.5 
python3 ./01Knapsack.py artificial/01_knap_un_75_150_22_running_time.csv AntColony c artificial/01_knap_un_75_150_22.csv - - 200 --sp1 100 --sp2 0.75 
python3 ./01Knapsack.py artificial/01_knap_un_75_150_22_running_time.csv AntColony c artificial/01_knap_un_75_150_22.csv - - 200 --sp1 100 --sp2 0.95

# Randomized on ratios 0.2,0.3,0.4,0.5
python3 ./01Knapsack.py artificial/01_knap_un_75_150_22_running_time.csv Randomized c artificial/01_knap_un_75_150_22.csv - - 100 --sp1 0.2
python3 ./01Knapsack.py artificial/01_knap_un_75_150_22_running_time.csv Randomized c artificial/01_knap_un_75_150_22.csv - - 100 --sp1 0.3
python3 ./01Knapsack.py artificial/01_knap_un_75_150_22_running_time.csv Randomized c artificial/01_knap_un_75_150_22.csv - - 100 --sp1 0.4
python3 ./01Knapsack.py artificial/01_knap_un_75_150_22_running_time.csv Randomized c artificial/01_knap_un_75_150_22.csv - - 100 --sp1 0.5

# Artificial data
# 01_knap_wc_75_150_23.csv
python3 ./01Knapsack.py artificial/01_knap_wc_75_150_23_running_time.csv BranchAndBound c artificial/01_knap_wc_75_150_23.csv - - - 
python3 ./01Knapsack.py artificial/01_knap_wc_75_150_23_running_time.csv RatioSortGreedy c artificial/01_knap_wc_75_150_23.csv - - - 
python3 ./01Knapsack.py artificial/01_knap_wc_75_150_23_running_time.csv ValueSortGreedy c artificial/01_knap_wc_75_150_23.csv - - - 
python3 ./01Knapsack.py artificial/01_knap_wc_75_150_23_running_time.csv WeightSortGreedy c artificial/01_knap_wc_75_150_23.csv - - - 
python3 ./01Knapsack.py artificial/01_knap_wc_75_150_23_running_time.csv RatiosortAndConvergeGreedy c artificial/01_knap_wc_75_150_23.csv - - - 
python3 ./01Knapsack.py artificial/01_knap_wc_75_150_23_running_time.csv TopDownDynamicProgramming c artificial/01_knap_wc_75_150_23.csv - - - 
python3 ./01Knapsack.py artificial/01_knap_wc_75_150_23_running_time.csv BottomUpDynamicProgramming c artificial/01_knap_wc_75_150_23.csv - - - 
python3 ./01Knapsack.py artificial/01_knap_wc_75_150_23_running_time.csv FullyPolyNomial c artificial/01_knap_wc_75_150_23.csv - - - 
python3 ./01Knapsack.py artificial/01_knap_wc_75_150_23_running_time.csv GeneticProgramming c artificial/01_knap_wc_75_150_23.csv - - - --sp1 50
python3 ./01Knapsack.py artificial/01_knap_wc_75_150_23_running_time.csv AntColony c artificial/01_knap_wc_75_150_23.csv - - 50 --sp1 50 --sp2 0.5 
python3 ./01Knapsack.py artificial/01_knap_wc_75_150_23_running_time.csv Randomized c artificial/01_knap_wc_75_150_23.csv - - 50 --sp1 0.1 

# we changed the number of individuals in genectic algorithm: 10, 25, 75, 100, 200
# we changed the number of of iterations in ant colony: 25, 75, 100, 200
# we changed the number of iterations in randomized: 25, 75, 100, 200
python3 ./01Knapsack.py artificial/01_knap_wc_75_150_23_running_time.csv GeneticProgramming c artificial/01_knap_wc_75_150_23.csv - - - --sp1 10
python3 ./01Knapsack.py artificial/01_knap_wc_75_150_23_running_time.csv GeneticProgramming c artificial/01_knap_wc_75_150_23.csv - - - --sp1 25
python3 ./01Knapsack.py artificial/01_knap_wc_75_150_23_running_time.csv GeneticProgramming c artificial/01_knap_wc_75_150_23.csv - - - --sp1 75
python3 ./01Knapsack.py artificial/01_knap_wc_75_150_23_running_time.csv GeneticProgramming c artificial/01_knap_wc_75_150_23.csv - - - --sp1 100
python3 ./01Knapsack.py artificial/01_knap_wc_75_150_23_running_time.csv GeneticProgramming c artificial/01_knap_wc_75_150_23.csv - - - --sp1 200

python3 ./01Knapsack.py artificial/01_knap_wc_75_150_23_running_time.csv GeneticProgramming c artificial/01_knap_wc_75_150_23.csv - - - --sp1 250
python3 ./01Knapsack.py artificial/01_knap_wc_75_150_23_running_time.csv GeneticProgramming c artificial/01_knap_wc_75_150_23.csv - - - --sp1 300
python3 ./01Knapsack.py artificial/01_knap_wc_75_150_23_running_time.csv GeneticProgramming c artificial/01_knap_wc_75_150_23.csv - - - --sp1 350
python3 ./01Knapsack.py artificial/01_knap_wc_75_150_23_running_time.csv GeneticProgramming c artificial/01_knap_wc_75_150_23.csv - - - --sp1 400

# Ant colony on 250,300,350,400,500
python3 ./01Knapsack.py artificial/01_knap_wc_75_150_23_running_time.csv AntColony c artificial/01_knap_wc_75_150_23.csv - - 200 --sp1 50 --sp2 0.5 
python3 ./01Knapsack.py artificial/01_knap_wc_75_150_23_running_time.csv AntColony c artificial/01_knap_wc_75_150_23.csv - - 250 --sp1 50 --sp2 0.5 
python3 ./01Knapsack.py artificial/01_knap_wc_75_150_23_running_time.csv AntColony c artificial/01_knap_wc_75_150_23.csv - - 300 --sp1 50 --sp2 0.5 
python3 ./01Knapsack.py artificial/01_knap_wc_75_150_23_running_time.csv AntColony c artificial/01_knap_wc_75_150_23.csv - - 350 --sp1 50 --sp2 0.5 
python3 ./01Knapsack.py artificial/01_knap_wc_75_150_23_running_time.csv AntColony c artificial/01_knap_wc_75_150_23.csv - - 400 --sp1 50 --sp2 0.5 

# Ant colony on number of ants 25,50,75,100,200
python3 ./01Knapsack.py artificial/01_knap_wc_75_150_23_running_time.csv AntColony c artificial/01_knap_wc_75_150_23.csv - - 200 --sp1 25 --sp2 0.5 
python3 ./01Knapsack.py artificial/01_knap_wc_75_150_23_running_time.csv AntColony c artificial/01_knap_wc_75_150_23.csv - - 200 --sp1 50 --sp2 0.5 
python3 ./01Knapsack.py artificial/01_knap_wc_75_150_23_running_time.csv AntColony c artificial/01_knap_wc_75_150_23.csv - - 200 --sp1 75 --sp2 0.5 
python3 ./01Knapsack.py artificial/01_knap_wc_75_150_23_running_time.csv AntColony c artificial/01_knap_wc_75_150_23.csv - - 200 --sp1 100 --sp2 0.5 
python3 ./01Knapsack.py artificial/01_knap_wc_75_150_23_running_time.csv AntColony c artificial/01_knap_wc_75_150_23.csv - - 200 --sp1 200 --sp2 0.5 

# Ant colony on decay 0.5,0.75,0.95
python3 ./01Knapsack.py artificial/01_knap_wc_75_150_23_running_time.csv AntColony c artificial/01_knap_wc_75_150_23.csv - - 200 --sp1 100 --sp2 0.5 
python3 ./01Knapsack.py artificial/01_knap_wc_75_150_23_running_time.csv AntColony c artificial/01_knap_wc_75_150_23.csv - - 200 --sp1 100 --sp2 0.75 
python3 ./01Knapsack.py artificial/01_knap_wc_75_150_23_running_time.csv AntColony c artificial/01_knap_wc_75_150_23.csv - - 200 --sp1 100 --sp2 0.95

# Randomized on ratios 0.2,0.3,0.4,0.5
python3 ./01Knapsack.py artificial/01_knap_wc_75_150_23_running_time.csv Randomized c artificial/01_knap_wc_75_150_23.csv - - 100 --sp1 0.2
python3 ./01Knapsack.py artificial/01_knap_wc_75_150_23_running_time.csv Randomized c artificial/01_knap_wc_75_150_23.csv - - 100 --sp1 0.3
python3 ./01Knapsack.py artificial/01_knap_wc_75_150_23_running_time.csv Randomized c artificial/01_knap_wc_75_150_23.csv - - 100 --sp1 0.4
python3 ./01Knapsack.py artificial/01_knap_wc_75_150_23_running_time.csv Randomized c artificial/01_knap_wc_75_150_23.csv - - 100 --sp1 0.5

# Artificial data
# 01_knap_wc_50_100_17.csv
python3 ./01Knapsack.py artificial/01_knap_wc_50_100_17_running_time.csv BranchAndBound c artificial/01_knap_wc_50_100_17.csv - - - 
python3 ./01Knapsack.py artificial/01_knap_wc_50_100_17_running_time.csv RatioSortGreedy c artificial/01_knap_wc_50_100_17.csv - - - 
python3 ./01Knapsack.py artificial/01_knap_wc_50_100_17_running_time.csv ValueSortGreedy c artificial/01_knap_wc_50_100_17.csv - - - 
python3 ./01Knapsack.py artificial/01_knap_wc_50_100_17_running_time.csv WeightSortGreedy c artificial/01_knap_wc_50_100_17.csv - - - 
python3 ./01Knapsack.py artificial/01_knap_wc_50_100_17_running_time.csv RatiosortAndConvergeGreedy c artificial/01_knap_wc_50_100_17.csv - - - 
python3 ./01Knapsack.py artificial/01_knap_wc_50_100_17_running_time.csv TopDownDynamicProgramming c artificial/01_knap_wc_50_100_17.csv - - - 
python3 ./01Knapsack.py artificial/01_knap_wc_50_100_17_running_time.csv BottomUpDynamicProgramming c artificial/01_knap_wc_50_100_17.csv - - - 
python3 ./01Knapsack.py artificial/01_knap_wc_50_100_17_running_time.csv FullyPolyNomial c artificial/01_knap_wc_50_100_17.csv - - - 
python3 ./01Knapsack.py artificial/01_knap_wc_50_100_17_running_time.csv GeneticProgramming c artificial/01_knap_wc_50_100_17.csv - - - --sp1 50
python3 ./01Knapsack.py artificial/01_knap_wc_50_100_17_running_time.csv AntColony c artificial/01_knap_wc_50_100_17.csv - - 50 --sp1 50 --sp2 0.5 
python3 ./01Knapsack.py artificial/01_knap_wc_50_100_17_running_time.csv Randomized c artificial/01_knap_wc_50_100_17.csv - - 50 --sp1 0.1 

# we changed the number of individuals in genectic algorithm: 10, 25, 75, 100, 200
# we changed the number of of iterations in ant colony: 25, 75, 100, 200
# we changed the number of iterations in randomized: 25, 75, 100, 200
python3 ./01Knapsack.py artificial/01_knap_wc_50_100_17_running_time.csv GeneticProgramming c artificial/01_knap_wc_50_100_17.csv - - - --sp1 10
python3 ./01Knapsack.py artificial/01_knap_wc_50_100_17_running_time.csv GeneticProgramming c artificial/01_knap_wc_50_100_17.csv - - - --sp1 25
python3 ./01Knapsack.py artificial/01_knap_wc_50_100_17_running_time.csv GeneticProgramming c artificial/01_knap_wc_50_100_17.csv - - - --sp1 75
python3 ./01Knapsack.py artificial/01_knap_wc_50_100_17_running_time.csv GeneticProgramming c artificial/01_knap_wc_50_100_17.csv - - - --sp1 100
python3 ./01Knapsack.py artificial/01_knap_wc_50_100_17_running_time.csv GeneticProgramming c artificial/01_knap_wc_50_100_17.csv - - - --sp1 200

python3 ./01Knapsack.py artificial/01_knap_wc_50_100_17_running_time.csv GeneticProgramming c artificial/01_knap_wc_50_100_17.csv - - - --sp1 250
python3 ./01Knapsack.py artificial/01_knap_wc_50_100_17_running_time.csv GeneticProgramming c artificial/01_knap_wc_50_100_17.csv - - - --sp1 300
python3 ./01Knapsack.py artificial/01_knap_wc_50_100_17_running_time.csv GeneticProgramming c artificial/01_knap_wc_50_100_17.csv - - - --sp1 350
python3 ./01Knapsack.py artificial/01_knap_wc_50_100_17_running_time.csv GeneticProgramming c artificial/01_knap_wc_50_100_17.csv - - - --sp1 400

# Ant colony on 250,300,350,400,500
python3 ./01Knapsack.py artificial/01_knap_wc_50_100_17_running_time.csv AntColony c artificial/01_knap_wc_50_100_17.csv - - 200 --sp1 50 --sp2 0.5 
python3 ./01Knapsack.py artificial/01_knap_wc_50_100_17_running_time.csv AntColony c artificial/01_knap_wc_50_100_17.csv - - 250 --sp1 50 --sp2 0.5 
python3 ./01Knapsack.py artificial/01_knap_wc_50_100_17_running_time.csv AntColony c artificial/01_knap_wc_50_100_17.csv - - 300 --sp1 50 --sp2 0.5 
python3 ./01Knapsack.py artificial/01_knap_wc_50_100_17_running_time.csv AntColony c artificial/01_knap_wc_50_100_17.csv - - 350 --sp1 50 --sp2 0.5 
python3 ./01Knapsack.py artificial/01_knap_wc_50_100_17_running_time.csv AntColony c artificial/01_knap_wc_50_100_17.csv - - 400 --sp1 50 --sp2 0.5 

# Ant colony on number of ants 25,50,75,100,200
python3 ./01Knapsack.py artificial/01_knap_wc_50_100_17_running_time.csv AntColony c artificial/01_knap_wc_50_100_17.csv - - 200 --sp1 25 --sp2 0.5 
python3 ./01Knapsack.py artificial/01_knap_wc_50_100_17_running_time.csv AntColony c artificial/01_knap_wc_50_100_17.csv - - 200 --sp1 50 --sp2 0.5 
python3 ./01Knapsack.py artificial/01_knap_wc_50_100_17_running_time.csv AntColony c artificial/01_knap_wc_50_100_17.csv - - 200 --sp1 75 --sp2 0.5 
python3 ./01Knapsack.py artificial/01_knap_wc_50_100_17_running_time.csv AntColony c artificial/01_knap_wc_50_100_17.csv - - 200 --sp1 100 --sp2 0.5 
python3 ./01Knapsack.py artificial/01_knap_wc_50_100_17_running_time.csv AntColony c artificial/01_knap_wc_50_100_17.csv - - 200 --sp1 200 --sp2 0.5 

# Ant colony on decay 0.5,0.75,0.95
python3 ./01Knapsack.py artificial/01_knap_wc_50_100_17_running_time.csv AntColony c artificial/01_knap_wc_50_100_17.csv - - 200 --sp1 100 --sp2 0.5 
python3 ./01Knapsack.py artificial/01_knap_wc_50_100_17_running_time.csv AntColony c artificial/01_knap_wc_50_100_17.csv - - 200 --sp1 100 --sp2 0.75 
python3 ./01Knapsack.py artificial/01_knap_wc_50_100_17_running_time.csv AntColony c artificial/01_knap_wc_50_100_17.csv - - 200 --sp1 100 --sp2 0.95

# Randomized on ratios 0.2,0.3,0.4,0.5
python3 ./01Knapsack.py artificial/01_knap_wc_50_100_17_running_time.csv Randomized c artificial/01_knap_wc_50_100_17.csv - - 100 --sp1 0.2
python3 ./01Knapsack.py artificial/01_knap_wc_50_100_17_running_time.csv Randomized c artificial/01_knap_wc_50_100_17.csv - - 100 --sp1 0.3
python3 ./01Knapsack.py artificial/01_knap_wc_50_100_17_running_time.csv Randomized c artificial/01_knap_wc_50_100_17.csv - - 100 --sp1 0.4
python3 ./01Knapsack.py artificial/01_knap_wc_50_100_17_running_time.csv Randomized c artificial/01_knap_wc_50_100_17.csv - - 100 --sp1 0.5

# Artificial data
# 01_knap_wc_20_100_14.csv
python3 ./01Knapsack.py artificial/01_knap_wc_20_100_14_running_time.csv BranchAndBound c artificial/01_knap_wc_20_100_14.csv - - - 
python3 ./01Knapsack.py artificial/01_knap_wc_20_100_14_running_time.csv RatioSortGreedy c artificial/01_knap_wc_20_100_14.csv - - - 
python3 ./01Knapsack.py artificial/01_knap_wc_20_100_14_running_time.csv ValueSortGreedy c artificial/01_knap_wc_20_100_14.csv - - - 
python3 ./01Knapsack.py artificial/01_knap_wc_20_100_14_running_time.csv WeightSortGreedy c artificial/01_knap_wc_20_100_14.csv - - - 
python3 ./01Knapsack.py artificial/01_knap_wc_20_100_14_running_time.csv RatiosortAndConvergeGreedy c artificial/01_knap_wc_20_100_14.csv - - - 
python3 ./01Knapsack.py artificial/01_knap_wc_20_100_14_running_time.csv TopDownDynamicProgramming c artificial/01_knap_wc_20_100_14.csv - - - 
python3 ./01Knapsack.py artificial/01_knap_wc_20_100_14_running_time.csv BottomUpDynamicProgramming c artificial/01_knap_wc_20_100_14.csv - - - 
python3 ./01Knapsack.py artificial/01_knap_wc_20_100_14_running_time.csv FullyPolyNomial c artificial/01_knap_wc_20_100_14.csv - - - 
python3 ./01Knapsack.py artificial/01_knap_wc_20_100_14_running_time.csv GeneticProgramming c artificial/01_knap_wc_20_100_14.csv - - - --sp1 50
python3 ./01Knapsack.py artificial/01_knap_wc_20_100_14_running_time.csv AntColony c artificial/01_knap_wc_20_100_14.csv - - 50 --sp1 50 --sp2 0.5 
python3 ./01Knapsack.py artificial/01_knap_wc_20_100_14_running_time.csv Randomized c artificial/01_knap_wc_20_100_14.csv - - 50 --sp1 0.1 

# we changed the number of individuals in genectic algorithm: 10, 25, 75, 100, 200
# we changed the number of of iterations in ant colony: 25, 75, 100, 200
# we changed the number of iterations in randomized: 25, 75, 100, 200
python3 ./01Knapsack.py artificial/01_knap_wc_20_100_14_running_time.csv GeneticProgramming c artificial/01_knap_wc_20_100_14.csv - - - --sp1 10
python3 ./01Knapsack.py artificial/01_knap_wc_20_100_14_running_time.csv GeneticProgramming c artificial/01_knap_wc_20_100_14.csv - - - --sp1 25
python3 ./01Knapsack.py artificial/01_knap_wc_20_100_14_running_time.csv GeneticProgramming c artificial/01_knap_wc_20_100_14.csv - - - --sp1 75
python3 ./01Knapsack.py artificial/01_knap_wc_20_100_14_running_time.csv GeneticProgramming c artificial/01_knap_wc_20_100_14.csv - - - --sp1 100
python3 ./01Knapsack.py artificial/01_knap_wc_20_100_14_running_time.csv GeneticProgramming c artificial/01_knap_wc_20_100_14.csv - - - --sp1 200

python3 ./01Knapsack.py artificial/01_knap_wc_20_100_14_running_time.csv GeneticProgramming c artificial/01_knap_wc_20_100_14.csv - - - --sp1 250
python3 ./01Knapsack.py artificial/01_knap_wc_20_100_14_running_time.csv GeneticProgramming c artificial/01_knap_wc_20_100_14.csv - - - --sp1 300
python3 ./01Knapsack.py artificial/01_knap_wc_20_100_14_running_time.csv GeneticProgramming c artificial/01_knap_wc_20_100_14.csv - - - --sp1 350
python3 ./01Knapsack.py artificial/01_knap_wc_20_100_14_running_time.csv GeneticProgramming c artificial/01_knap_wc_20_100_14.csv - - - --sp1 400

# Ant colony on 250,300,350,400,500
python3 ./01Knapsack.py artificial/01_knap_wc_20_100_14_running_time.csv AntColony c artificial/01_knap_wc_20_100_14.csv - - 200 --sp1 50 --sp2 0.5 
python3 ./01Knapsack.py artificial/01_knap_wc_20_100_14_running_time.csv AntColony c artificial/01_knap_wc_20_100_14.csv - - 250 --sp1 50 --sp2 0.5 
python3 ./01Knapsack.py artificial/01_knap_wc_20_100_14_running_time.csv AntColony c artificial/01_knap_wc_20_100_14.csv - - 300 --sp1 50 --sp2 0.5 
python3 ./01Knapsack.py artificial/01_knap_wc_20_100_14_running_time.csv AntColony c artificial/01_knap_wc_20_100_14.csv - - 350 --sp1 50 --sp2 0.5 
python3 ./01Knapsack.py artificial/01_knap_wc_20_100_14_running_time.csv AntColony c artificial/01_knap_wc_20_100_14.csv - - 400 --sp1 50 --sp2 0.5 

# Ant colony on number of ants 25,50,75,100,200
python3 ./01Knapsack.py artificial/01_knap_wc_20_100_14_running_time.csv AntColony c artificial/01_knap_wc_20_100_14.csv - - 200 --sp1 25 --sp2 0.5 
python3 ./01Knapsack.py artificial/01_knap_wc_20_100_14_running_time.csv AntColony c artificial/01_knap_wc_20_100_14.csv - - 200 --sp1 50 --sp2 0.5 
python3 ./01Knapsack.py artificial/01_knap_wc_20_100_14_running_time.csv AntColony c artificial/01_knap_wc_20_100_14.csv - - 200 --sp1 75 --sp2 0.5 
python3 ./01Knapsack.py artificial/01_knap_wc_20_100_14_running_time.csv AntColony c artificial/01_knap_wc_20_100_14.csv - - 200 --sp1 100 --sp2 0.5 
python3 ./01Knapsack.py artificial/01_knap_wc_20_100_14_running_time.csv AntColony c artificial/01_knap_wc_20_100_14.csv - - 200 --sp1 200 --sp2 0.5 

# Ant colony on decay 0.5,0.75,0.95
python3 ./01Knapsack.py artificial/01_knap_wc_20_100_14_running_time.csv AntColony c artificial/01_knap_wc_20_100_14.csv - - 200 --sp1 100 --sp2 0.5 
python3 ./01Knapsack.py artificial/01_knap_wc_20_100_14_running_time.csv AntColony c artificial/01_knap_wc_20_100_14.csv - - 200 --sp1 100 --sp2 0.75 
python3 ./01Knapsack.py artificial/01_knap_wc_20_100_14_running_time.csv AntColony c artificial/01_knap_wc_20_100_14.csv - - 200 --sp1 100 --sp2 0.95

# Randomized on ratios 0.2,0.3,0.4,0.5
python3 ./01Knapsack.py artificial/01_knap_wc_20_100_14_running_time.csv Randomized c artificial/01_knap_wc_20_100_14.csv - - 100 --sp1 0.2
python3 ./01Knapsack.py artificial/01_knap_wc_20_100_14_running_time.csv Randomized c artificial/01_knap_wc_20_100_14.csv - - 100 --sp1 0.3
python3 ./01Knapsack.py artificial/01_knap_wc_20_100_14_running_time.csv Randomized c artificial/01_knap_wc_20_100_14.csv - - 100 --sp1 0.4
python3 ./01Knapsack.py artificial/01_knap_wc_20_100_14_running_time.csv Randomized c artificial/01_knap_wc_20_100_14.csv - - 100 --sp1 0.5

# Artificial data
# 01_knap_wc_100_200_11.csv
python3 ./01Knapsack.py artificial/01_knap_wc_100_200_11_running_time.csv BranchAndBound c artificial/01_knap_wc_100_200_11.csv - - - 
python3 ./01Knapsack.py artificial/01_knap_wc_100_200_11_running_time.csv RatioSortGreedy c artificial/01_knap_wc_100_200_11.csv - - - 
python3 ./01Knapsack.py artificial/01_knap_wc_100_200_11_running_time.csv ValueSortGreedy c artificial/01_knap_wc_100_200_11.csv - - - 
python3 ./01Knapsack.py artificial/01_knap_wc_100_200_11_running_time.csv WeightSortGreedy c artificial/01_knap_wc_100_200_11.csv - - - 
python3 ./01Knapsack.py artificial/01_knap_wc_100_200_11_running_time.csv RatiosortAndConvergeGreedy c artificial/01_knap_wc_100_200_11.csv - - - 
python3 ./01Knapsack.py artificial/01_knap_wc_100_200_11_running_time.csv TopDownDynamicProgramming c artificial/01_knap_wc_100_200_11.csv - - - 
python3 ./01Knapsack.py artificial/01_knap_wc_100_200_11_running_time.csv BottomUpDynamicProgramming c artificial/01_knap_wc_100_200_11.csv - - - 
python3 ./01Knapsack.py artificial/01_knap_wc_100_200_11_running_time.csv FullyPolyNomial c artificial/01_knap_wc_100_200_11.csv - - - 
python3 ./01Knapsack.py artificial/01_knap_wc_100_200_11_running_time.csv GeneticProgramming c artificial/01_knap_wc_100_200_11.csv - - - --sp1 50
python3 ./01Knapsack.py artificial/01_knap_wc_100_200_11_running_time.csv AntColony c artificial/01_knap_wc_100_200_11.csv - - 50 --sp1 50 --sp2 0.5 
python3 ./01Knapsack.py artificial/01_knap_wc_100_200_11_running_time.csv Randomized c artificial/01_knap_wc_100_200_11.csv - - 50 --sp1 0.1 

# we changed the number of individuals in genectic algorithm: 10, 25, 75, 100, 200
# we changed the number of of iterations in ant colony: 25, 75, 100, 200
# we changed the number of iterations in randomized: 25, 75, 100, 200
python3 ./01Knapsack.py artificial/01_knap_wc_100_200_11_running_time.csv GeneticProgramming c artificial/01_knap_wc_100_200_11.csv - - - --sp1 10
python3 ./01Knapsack.py artificial/01_knap_wc_100_200_11_running_time.csv GeneticProgramming c artificial/01_knap_wc_100_200_11.csv - - - --sp1 25
python3 ./01Knapsack.py artificial/01_knap_wc_100_200_11_running_time.csv GeneticProgramming c artificial/01_knap_wc_100_200_11.csv - - - --sp1 75
python3 ./01Knapsack.py artificial/01_knap_wc_100_200_11_running_time.csv GeneticProgramming c artificial/01_knap_wc_100_200_11.csv - - - --sp1 100
python3 ./01Knapsack.py artificial/01_knap_wc_100_200_11_running_time.csv GeneticProgramming c artificial/01_knap_wc_100_200_11.csv - - - --sp1 200

python3 ./01Knapsack.py artificial/01_knap_wc_100_200_11_running_time.csv GeneticProgramming c artificial/01_knap_wc_100_200_11.csv - - - --sp1 250
python3 ./01Knapsack.py artificial/01_knap_wc_100_200_11_running_time.csv GeneticProgramming c artificial/01_knap_wc_100_200_11.csv - - - --sp1 300
python3 ./01Knapsack.py artificial/01_knap_wc_100_200_11_running_time.csv GeneticProgramming c artificial/01_knap_wc_100_200_11.csv - - - --sp1 350
python3 ./01Knapsack.py artificial/01_knap_wc_100_200_11_running_time.csv GeneticProgramming c artificial/01_knap_wc_100_200_11.csv - - - --sp1 400

# Ant colony on 250,300,350,400,500
python3 ./01Knapsack.py artificial/01_knap_wc_100_200_11_running_time.csv AntColony c artificial/01_knap_wc_100_200_11.csv - - 200 --sp1 50 --sp2 0.5 
python3 ./01Knapsack.py artificial/01_knap_wc_100_200_11_running_time.csv AntColony c artificial/01_knap_wc_100_200_11.csv - - 250 --sp1 50 --sp2 0.5 
python3 ./01Knapsack.py artificial/01_knap_wc_100_200_11_running_time.csv AntColony c artificial/01_knap_wc_100_200_11.csv - - 300 --sp1 50 --sp2 0.5 
python3 ./01Knapsack.py artificial/01_knap_wc_100_200_11_running_time.csv AntColony c artificial/01_knap_wc_100_200_11.csv - - 350 --sp1 50 --sp2 0.5 
python3 ./01Knapsack.py artificial/01_knap_wc_100_200_11_running_time.csv AntColony c artificial/01_knap_wc_100_200_11.csv - - 400 --sp1 50 --sp2 0.5 

# Ant colony on number of ants 25,50,75,100,200
python3 ./01Knapsack.py artificial/01_knap_wc_100_200_11_running_time.csv AntColony c artificial/01_knap_wc_100_200_11.csv - - 200 --sp1 25 --sp2 0.5 
python3 ./01Knapsack.py artificial/01_knap_wc_100_200_11_running_time.csv AntColony c artificial/01_knap_wc_100_200_11.csv - - 200 --sp1 50 --sp2 0.5 
python3 ./01Knapsack.py artificial/01_knap_wc_100_200_11_running_time.csv AntColony c artificial/01_knap_wc_100_200_11.csv - - 200 --sp1 75 --sp2 0.5 
python3 ./01Knapsack.py artificial/01_knap_wc_100_200_11_running_time.csv AntColony c artificial/01_knap_wc_100_200_11.csv - - 200 --sp1 100 --sp2 0.5 
python3 ./01Knapsack.py artificial/01_knap_wc_100_200_11_running_time.csv AntColony c artificial/01_knap_wc_100_200_11.csv - - 200 --sp1 200 --sp2 0.5 

# Ant colony on decay 0.5,0.75,0.95
python3 ./01Knapsack.py artificial/01_knap_wc_100_200_11_running_time.csv AntColony c artificial/01_knap_wc_100_200_11.csv - - 200 --sp1 100 --sp2 0.5 
python3 ./01Knapsack.py artificial/01_knap_wc_100_200_11_running_time.csv AntColony c artificial/01_knap_wc_100_200_11.csv - - 200 --sp1 100 --sp2 0.75 
python3 ./01Knapsack.py artificial/01_knap_wc_100_200_11_running_time.csv AntColony c artificial/01_knap_wc_100_200_11.csv - - 200 --sp1 100 --sp2 0.95

# Randomized on ratios 0.2,0.3,0.4,0.5
python3 ./01Knapsack.py artificial/01_knap_wc_100_200_11_running_time.csv Randomized c artificial/01_knap_wc_100_200_11.csv - - 100 --sp1 0.2
python3 ./01Knapsack.py artificial/01_knap_wc_100_200_11_running_time.csv Randomized c artificial/01_knap_wc_100_200_11.csv - - 100 --sp1 0.3
python3 ./01Knapsack.py artificial/01_knap_wc_100_200_11_running_time.csv Randomized c artificial/01_knap_wc_100_200_11.csv - - 100 --sp1 0.4
python3 ./01Knapsack.py artificial/01_knap_wc_100_200_11_running_time.csv Randomized c artificial/01_knap_wc_100_200_11.csv - - 100 --sp1 0.5
