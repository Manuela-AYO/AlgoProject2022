#!/bin/bash

# 01_knap_sc_50_100_18.csv
python3 ./01Knapsack.py artificial/01_knap_sc_50_100_18_efficiency.csv BranchAndBound c artificial/01_knap_sc_50_100_18.csv 154 10 - 
python3 ./01Knapsack.py artificial/01_knap_sc_50_100_18_efficiency.csv RatioSortGreedy c artificial/01_knap_sc_50_100_18.csv 154 10 - 
python3 ./01Knapsack.py artificial/01_knap_sc_50_100_18_efficiency.csv ValueSortGreedy c artificial/01_knap_sc_50_100_18.csv 154 10 - 
python3 ./01Knapsack.py artificial/01_knap_sc_50_100_18_efficiency.csv WeightSortGreedy c artificial/01_knap_sc_50_100_18.csv 154 10 - 
python3 ./01Knapsack.py artificial/01_knap_sc_50_100_18_efficiency.csv RatiosortAndConvergeGreedy c artificial/01_knap_sc_50_100_18.csv 154 10 - 
python3 ./01Knapsack.py artificial/01_knap_sc_50_100_18_efficiency.csv TopDownDynamicProgramming c artificial/01_knap_sc_50_100_18.csv 154 10 - 
python3 ./01Knapsack.py artificial/01_knap_sc_50_100_18_efficiency.csv BottomUpDynamicProgramming c artificial/01_knap_sc_50_100_18.csv 154 10 - 
python3 ./01Knapsack.py artificial/01_knap_sc_50_100_18_efficiency.csv FullyPolyNomial c artificial/01_knap_sc_50_100_18.csv 154 10 - 
python3 ./01Knapsack.py artificial/01_knap_sc_50_100_18_efficiency.csv GeneticProgramming c artificial/01_knap_sc_50_100_18.csv 154 10 - --sp1 10
python3 ./01Knapsack.py artificial/01_knap_sc_50_100_18_efficiency.csv AntColony c artificial/01_knap_sc_50_100_18.csv 154 10 50 --sp1 200 --sp2 0.75 
python3 ./01Knapsack.py artificial/01_knap_sc_50_100_18_efficiency.csv Randomized c artificial/01_knap_sc_50_100_18.csv 154 10 100 --sp1 0.2

# Artificial data
# 01_knap_sc_50_100_18.csv
python3 ./01Knapsack.py artificial/01_knap_sc_50_100_18_efficiency.csv BranchAndBound c artificial/01_knap_sc_50_100_18.csv 154 100 - 
python3 ./01Knapsack.py artificial/01_knap_sc_50_100_18_efficiency.csv RatioSortGreedy c artificial/01_knap_sc_50_100_18.csv 154 100 - 
python3 ./01Knapsack.py artificial/01_knap_sc_50_100_18_efficiency.csv ValueSortGreedy c artificial/01_knap_sc_50_100_18.csv 154 100 - 
python3 ./01Knapsack.py artificial/01_knap_sc_50_100_18_efficiency.csv WeightSortGreedy c artificial/01_knap_sc_50_100_18.csv 154 100 - 
python3 ./01Knapsack.py artificial/01_knap_sc_50_100_18_efficiency.csv RatiosortAndConvergeGreedy c artificial/01_knap_sc_50_100_18.csv 154 100 - 
python3 ./01Knapsack.py artificial/01_knap_sc_50_100_18_efficiency.csv TopDownDynamicProgramming c artificial/01_knap_sc_50_100_18.csv 154 100 - 
python3 ./01Knapsack.py artificial/01_knap_sc_50_100_18_efficiency.csv BottomUpDynamicProgramming c artificial/01_knap_sc_50_100_18.csv 154 100 - 
python3 ./01Knapsack.py artificial/01_knap_sc_50_100_18_efficiency.csv FullyPolyNomial c artificial/01_knap_sc_50_100_18.csv 154 100 - 
python3 ./01Knapsack.py artificial/01_knap_sc_50_100_18_efficiency.csv GeneticProgramming c artificial/01_knap_sc_50_100_18.csv 154 100 - --sp1 10
python3 ./01Knapsack.py artificial/01_knap_sc_50_100_18_efficiency.csv AntColony c artificial/01_knap_sc_50_100_18.csv 154 100 50 --sp1 200 --sp2 0.75 
python3 ./01Knapsack.py artificial/01_knap_sc_50_100_18_efficiency.csv Randomized c artificial/01_knap_sc_50_100_18.csv 154 100 100 --sp1 0.2

# Artificial data
# 01_knap_sc_50_100_18.csv
python3 ./01Knapsack.py artificial/01_knap_sc_50_100_18_efficiency.csv BranchAndBound c artificial/01_knap_sc_50_100_18.csv 154 1000 - 
python3 ./01Knapsack.py artificial/01_knap_sc_50_100_18_efficiency.csv RatioSortGreedy c artificial/01_knap_sc_50_100_18.csv 154 1000 - 
python3 ./01Knapsack.py artificial/01_knap_sc_50_100_18_efficiency.csv ValueSortGreedy c artificial/01_knap_sc_50_100_18.csv 154 1000 - 
python3 ./01Knapsack.py artificial/01_knap_sc_50_100_18_efficiency.csv WeightSortGreedy c artificial/01_knap_sc_50_100_18.csv 154 1000 - 
python3 ./01Knapsack.py artificial/01_knap_sc_50_100_18_efficiency.csv RatiosortAndConvergeGreedy c artificial/01_knap_sc_50_100_18.csv 154 1000 - 
python3 ./01Knapsack.py artificial/01_knap_sc_50_100_18_efficiency.csv TopDownDynamicProgramming c artificial/01_knap_sc_50_100_18.csv 154 1000 - 
python3 ./01Knapsack.py artificial/01_knap_sc_50_100_18_efficiency.csv BottomUpDynamicProgramming c artificial/01_knap_sc_50_100_18.csv 154 1000 - 
python3 ./01Knapsack.py artificial/01_knap_sc_50_100_18_efficiency.csv FullyPolyNomial c artificial/01_knap_sc_50_100_18.csv 154 1000 - 
python3 ./01Knapsack.py artificial/01_knap_sc_50_100_18_efficiency.csv GeneticProgramming c artificial/01_knap_sc_50_100_18.csv 154 1000 - --sp1 10
python3 ./01Knapsack.py artificial/01_knap_sc_50_100_18_efficiency.csv AntColony c artificial/01_knap_sc_50_100_18.csv 154 1000 50 --sp1 200 --sp2 0.75 
python3 ./01Knapsack.py artificial/01_knap_sc_50_100_18_efficiency.csv Randomized c artificial/01_knap_sc_50_100_18.csv 154 1000 100 --sp1 0.2

# 01_knap_sc_50_100_18.csv
python3 ./01Knapsack.py artificial/01_knap_sc_50_100_18_efficiency.csv BranchAndBound c artificial/01_knap_sc_50_100_18.csv 154 10000 - 
python3 ./01Knapsack.py artificial/01_knap_sc_50_100_18_efficiency.csv RatioSortGreedy c artificial/01_knap_sc_50_100_18.csv 154 10000 - 
python3 ./01Knapsack.py artificial/01_knap_sc_50_100_18_efficiency.csv ValueSortGreedy c artificial/01_knap_sc_50_100_18.csv 154 10000 - 
python3 ./01Knapsack.py artificial/01_knap_sc_50_100_18_efficiency.csv WeightSortGreedy c artificial/01_knap_sc_50_100_18.csv 154 10000 - 
python3 ./01Knapsack.py artificial/01_knap_sc_50_100_18_efficiency.csv RatiosortAndConvergeGreedy c artificial/01_knap_sc_50_100_18.csv 154 10000 - 
python3 ./01Knapsack.py artificial/01_knap_sc_50_100_18_efficiency.csv TopDownDynamicProgramming c artificial/01_knap_sc_50_100_18.csv 154 10000 - 
python3 ./01Knapsack.py artificial/01_knap_sc_50_100_18_efficiency.csv BottomUpDynamicProgramming c artificial/01_knap_sc_50_100_18.csv 154 10000 - 
python3 ./01Knapsack.py artificial/01_knap_sc_50_100_18_efficiency.csv FullyPolyNomial c artificial/01_knap_sc_50_100_18.csv 154 10000 - 
python3 ./01Knapsack.py artificial/01_knap_sc_50_100_18_efficiency.csv GeneticProgramming c artificial/01_knap_sc_50_100_18.csv 154 10000 - --sp1 10
python3 ./01Knapsack.py artificial/01_knap_sc_50_100_18_efficiency.csv AntColony c artificial/01_knap_sc_50_100_18.csv 154 10000 50 --sp1 200 --sp2 0.75 
python3 ./01Knapsack.py artificial/01_knap_sc_50_100_18_efficiency.csv Randomized c artificial/01_knap_sc_50_100_18.csv 154 10000 100 --sp1 0.2

# 01_knap_sc_20_100_13.csv
python3 ./01Knapsack.py artificial/01_knap_sc_20_100_13_efficiency.csv BranchAndBound c artificial/01_knap_sc_20_100_13.csv 144 10 - 
python3 ./01Knapsack.py artificial/01_knap_sc_20_100_13_efficiency.csv RatioSortGreedy c artificial/01_knap_sc_20_100_13.csv 144 10 - 
python3 ./01Knapsack.py artificial/01_knap_sc_20_100_13_efficiency.csv ValueSortGreedy c artificial/01_knap_sc_20_100_13.csv 144 10 - 
python3 ./01Knapsack.py artificial/01_knap_sc_20_100_13_efficiency.csv WeightSortGreedy c artificial/01_knap_sc_20_100_13.csv 144 10 - 
python3 ./01Knapsack.py artificial/01_knap_sc_20_100_13_efficiency.csv RatiosortAndConvergeGreedy c artificial/01_knap_sc_20_100_13.csv 144 10 - 
python3 ./01Knapsack.py artificial/01_knap_sc_20_100_13_efficiency.csv TopDownDynamicProgramming c artificial/01_knap_sc_20_100_13.csv 144 10 - 
python3 ./01Knapsack.py artificial/01_knap_sc_20_100_13_efficiency.csv BottomUpDynamicProgramming c artificial/01_knap_sc_20_100_13.csv 144 10 - 
python3 ./01Knapsack.py artificial/01_knap_sc_20_100_13_efficiency.csv FullyPolyNomial c artificial/01_knap_sc_20_100_13.csv 144 10 - 
python3 ./01Knapsack.py artificial/01_knap_sc_20_100_13_efficiency.csv GeneticProgramming c artificial/01_knap_sc_20_100_13.csv 144 10 - --sp1 10
python3 ./01Knapsack.py artificial/01_knap_sc_20_100_13_efficiency.csv AntColony c artificial/01_knap_sc_20_100_13.csv 144 10 50 --sp1 200 --sp2 0.75 
python3 ./01Knapsack.py artificial/01_knap_sc_20_100_13_efficiency.csv Randomized c artificial/01_knap_sc_20_100_13.csv 144 10 100 --sp1 0.2

# Artificial data
# 01_knap_sc_20_100_13.csv
python3 ./01Knapsack.py artificial/01_knap_sc_20_100_13_efficiency.csv BranchAndBound c artificial/01_knap_sc_20_100_13.csv 144 100 - 
python3 ./01Knapsack.py artificial/01_knap_sc_20_100_13_efficiency.csv RatioSortGreedy c artificial/01_knap_sc_20_100_13.csv 144 100 - 
python3 ./01Knapsack.py artificial/01_knap_sc_20_100_13_efficiency.csv ValueSortGreedy c artificial/01_knap_sc_20_100_13.csv 144 100 - 
python3 ./01Knapsack.py artificial/01_knap_sc_20_100_13_efficiency.csv WeightSortGreedy c artificial/01_knap_sc_20_100_13.csv 144 100 - 
python3 ./01Knapsack.py artificial/01_knap_sc_20_100_13_efficiency.csv RatiosortAndConvergeGreedy c artificial/01_knap_sc_20_100_13.csv 144 100 - 
python3 ./01Knapsack.py artificial/01_knap_sc_20_100_13_efficiency.csv TopDownDynamicProgramming c artificial/01_knap_sc_20_100_13.csv 144 100 - 
python3 ./01Knapsack.py artificial/01_knap_sc_20_100_13_efficiency.csv BottomUpDynamicProgramming c artificial/01_knap_sc_20_100_13.csv 144 100 - 
python3 ./01Knapsack.py artificial/01_knap_sc_20_100_13_efficiency.csv FullyPolyNomial c artificial/01_knap_sc_20_100_13.csv 144 100 - 
python3 ./01Knapsack.py artificial/01_knap_sc_20_100_13_efficiency.csv GeneticProgramming c artificial/01_knap_sc_20_100_13.csv 144 100 - --sp1 10
python3 ./01Knapsack.py artificial/01_knap_sc_20_100_13_efficiency.csv AntColony c artificial/01_knap_sc_20_100_13.csv 144 100 50 --sp1 200 --sp2 0.75 
python3 ./01Knapsack.py artificial/01_knap_sc_20_100_13_efficiency.csv Randomized c artificial/01_knap_sc_20_100_13.csv 144 100 100 --sp1 0.2

# Artificial data
# 01_knap_sc_20_100_13.csv
python3 ./01Knapsack.py artificial/01_knap_sc_20_100_13_efficiency.csv BranchAndBound c artificial/01_knap_sc_20_100_13.csv 144 1000 - 
python3 ./01Knapsack.py artificial/01_knap_sc_20_100_13_efficiency.csv RatioSortGreedy c artificial/01_knap_sc_20_100_13.csv 144 1000 - 
python3 ./01Knapsack.py artificial/01_knap_sc_20_100_13_efficiency.csv ValueSortGreedy c artificial/01_knap_sc_20_100_13.csv 144 1000 - 
python3 ./01Knapsack.py artificial/01_knap_sc_20_100_13_efficiency.csv WeightSortGreedy c artificial/01_knap_sc_20_100_13.csv 144 1000 - 
python3 ./01Knapsack.py artificial/01_knap_sc_20_100_13_efficiency.csv RatiosortAndConvergeGreedy c artificial/01_knap_sc_20_100_13.csv 144 1000 - 
python3 ./01Knapsack.py artificial/01_knap_sc_20_100_13_efficiency.csv TopDownDynamicProgramming c artificial/01_knap_sc_20_100_13.csv 144 1000 - 
python3 ./01Knapsack.py artificial/01_knap_sc_20_100_13_efficiency.csv BottomUpDynamicProgramming c artificial/01_knap_sc_20_100_13.csv 144 1000 - 
python3 ./01Knapsack.py artificial/01_knap_sc_20_100_13_efficiency.csv FullyPolyNomial c artificial/01_knap_sc_20_100_13.csv 144 1000 - 
python3 ./01Knapsack.py artificial/01_knap_sc_20_100_13_efficiency.csv GeneticProgramming c artificial/01_knap_sc_20_100_13.csv 144 1000 - --sp1 10
python3 ./01Knapsack.py artificial/01_knap_sc_20_100_13_efficiency.csv AntColony c artificial/01_knap_sc_20_100_13.csv 144 1000 50 --sp1 200 --sp2 0.75 
python3 ./01Knapsack.py artificial/01_knap_sc_20_100_13_efficiency.csv Randomized c artificial/01_knap_sc_20_100_13.csv 144 1000 100 --sp1 0.2

# 01_knap_sc_20_100_13.csv
python3 ./01Knapsack.py artificial/01_knap_sc_20_100_13_efficiency.csv BranchAndBound c artificial/01_knap_sc_20_100_13.csv 144 10000 - 
python3 ./01Knapsack.py artificial/01_knap_sc_20_100_13_efficiency.csv RatioSortGreedy c artificial/01_knap_sc_20_100_13.csv 144 10000 - 
python3 ./01Knapsack.py artificial/01_knap_sc_20_100_13_efficiency.csv ValueSortGreedy c artificial/01_knap_sc_20_100_13.csv 144 10000 - 
python3 ./01Knapsack.py artificial/01_knap_sc_20_100_13_efficiency.csv WeightSortGreedy c artificial/01_knap_sc_20_100_13.csv 144 10000 - 
python3 ./01Knapsack.py artificial/01_knap_sc_20_100_13_efficiency.csv RatiosortAndConvergeGreedy c artificial/01_knap_sc_20_100_13.csv 144 10000 - 
python3 ./01Knapsack.py artificial/01_knap_sc_20_100_13_efficiency.csv TopDownDynamicProgramming c artificial/01_knap_sc_20_100_13.csv 144 10000 - 
python3 ./01Knapsack.py artificial/01_knap_sc_20_100_13_efficiency.csv BottomUpDynamicProgramming c artificial/01_knap_sc_20_100_13.csv 144 10000 - 
python3 ./01Knapsack.py artificial/01_knap_sc_20_100_13_efficiency.csv FullyPolyNomial c artificial/01_knap_sc_20_100_13.csv 144 10000 - 
python3 ./01Knapsack.py artificial/01_knap_sc_20_100_13_efficiency.csv GeneticProgramming c artificial/01_knap_sc_20_100_13.csv 144 10000 - --sp1 10
python3 ./01Knapsack.py artificial/01_knap_sc_20_100_13_efficiency.csv AntColony c artificial/01_knap_sc_20_100_13.csv 144 10000 50 --sp1 200 --sp2 0.75 
python3 ./01Knapsack.py artificial/01_knap_sc_20_100_13_efficiency.csv Randomized c artificial/01_knap_sc_20_100_13.csv 144 10000 100 --sp1 0.2

# 01_knap_sc_75_150_19.csv
python3 ./01Knapsack.py artificial/01_knap_sc_75_150_19_efficiency.csv BranchAndBound c artificial/01_knap_sc_75_150_19.csv 294 10 - 
python3 ./01Knapsack.py artificial/01_knap_sc_75_150_19_efficiency.csv RatioSortGreedy c artificial/01_knap_sc_75_150_19.csv 294 10 - 
python3 ./01Knapsack.py artificial/01_knap_sc_75_150_19_efficiency.csv ValueSortGreedy c artificial/01_knap_sc_75_150_19.csv 294 10 - 
python3 ./01Knapsack.py artificial/01_knap_sc_75_150_19_efficiency.csv WeightSortGreedy c artificial/01_knap_sc_75_150_19.csv 294 10 - 
python3 ./01Knapsack.py artificial/01_knap_sc_75_150_19_efficiency.csv RatiosortAndConvergeGreedy c artificial/01_knap_sc_75_150_19.csv 294 10 - 
python3 ./01Knapsack.py artificial/01_knap_sc_75_150_19_efficiency.csv TopDownDynamicProgramming c artificial/01_knap_sc_75_150_19.csv 294 10 - 
python3 ./01Knapsack.py artificial/01_knap_sc_75_150_19_efficiency.csv BottomUpDynamicProgramming c artificial/01_knap_sc_75_150_19.csv 294 10 - 
python3 ./01Knapsack.py artificial/01_knap_sc_75_150_19_efficiency.csv FullyPolyNomial c artificial/01_knap_sc_75_150_19.csv 294 10 - 
python3 ./01Knapsack.py artificial/01_knap_sc_75_150_19_efficiency.csv GeneticProgramming c artificial/01_knap_sc_75_150_19.csv 294 10 - --sp1 10
python3 ./01Knapsack.py artificial/01_knap_sc_75_150_19_efficiency.csv AntColony c artificial/01_knap_sc_75_150_19.csv 294 10 50 --sp1 200 --sp2 0.75 
python3 ./01Knapsack.py artificial/01_knap_sc_75_150_19_efficiency.csv Randomized c artificial/01_knap_sc_75_150_19.csv 294 10 100 --sp1 0.2

# Artificial data
# 01_knap_sc_75_150_19.csv
python3 ./01Knapsack.py artificial/01_knap_sc_75_150_19_efficiency.csv BranchAndBound c artificial/01_knap_sc_75_150_19.csv 294 100 - 
python3 ./01Knapsack.py artificial/01_knap_sc_75_150_19_efficiency.csv RatioSortGreedy c artificial/01_knap_sc_75_150_19.csv 294 100 - 
python3 ./01Knapsack.py artificial/01_knap_sc_75_150_19_efficiency.csv ValueSortGreedy c artificial/01_knap_sc_75_150_19.csv 294 100 - 
python3 ./01Knapsack.py artificial/01_knap_sc_75_150_19_efficiency.csv WeightSortGreedy c artificial/01_knap_sc_75_150_19.csv 294 100 - 
python3 ./01Knapsack.py artificial/01_knap_sc_75_150_19_efficiency.csv RatiosortAndConvergeGreedy c artificial/01_knap_sc_75_150_19.csv 294 100 - 
python3 ./01Knapsack.py artificial/01_knap_sc_75_150_19_efficiency.csv TopDownDynamicProgramming c artificial/01_knap_sc_75_150_19.csv 294 100 - 
python3 ./01Knapsack.py artificial/01_knap_sc_75_150_19_efficiency.csv BottomUpDynamicProgramming c artificial/01_knap_sc_75_150_19.csv 294 100 - 
python3 ./01Knapsack.py artificial/01_knap_sc_75_150_19_efficiency.csv FullyPolyNomial c artificial/01_knap_sc_75_150_19.csv 294 100 - 
python3 ./01Knapsack.py artificial/01_knap_sc_75_150_19_efficiency.csv GeneticProgramming c artificial/01_knap_sc_75_150_19.csv 294 100 - --sp1 10
python3 ./01Knapsack.py artificial/01_knap_sc_75_150_19_efficiency.csv AntColony c artificial/01_knap_sc_75_150_19.csv 294 100 50 --sp1 200 --sp2 0.75 
python3 ./01Knapsack.py artificial/01_knap_sc_75_150_19_efficiency.csv Randomized c artificial/01_knap_sc_75_150_19.csv 294 100 100 --sp1 0.2

# Artificial data
# 01_knap_sc_75_150_19.csv
python3 ./01Knapsack.py artificial/01_knap_sc_75_150_19_efficiency.csv BranchAndBound c artificial/01_knap_sc_75_150_19.csv 294 1000 - 
python3 ./01Knapsack.py artificial/01_knap_sc_75_150_19_efficiency.csv RatioSortGreedy c artificial/01_knap_sc_75_150_19.csv 294 1000 - 
python3 ./01Knapsack.py artificial/01_knap_sc_75_150_19_efficiency.csv ValueSortGreedy c artificial/01_knap_sc_75_150_19.csv 294 1000 - 
python3 ./01Knapsack.py artificial/01_knap_sc_75_150_19_efficiency.csv WeightSortGreedy c artificial/01_knap_sc_75_150_19.csv 294 1000 - 
python3 ./01Knapsack.py artificial/01_knap_sc_75_150_19_efficiency.csv RatiosortAndConvergeGreedy c artificial/01_knap_sc_75_150_19.csv 294 1000 - 
python3 ./01Knapsack.py artificial/01_knap_sc_75_150_19_efficiency.csv TopDownDynamicProgramming c artificial/01_knap_sc_75_150_19.csv 294 1000 - 
python3 ./01Knapsack.py artificial/01_knap_sc_75_150_19_efficiency.csv BottomUpDynamicProgramming c artificial/01_knap_sc_75_150_19.csv 294 1000 - 
python3 ./01Knapsack.py artificial/01_knap_sc_75_150_19_efficiency.csv FullyPolyNomial c artificial/01_knap_sc_75_150_19.csv 294 1000 - 
python3 ./01Knapsack.py artificial/01_knap_sc_75_150_19_efficiency.csv GeneticProgramming c artificial/01_knap_sc_75_150_19.csv 294 1000 - --sp1 10
python3 ./01Knapsack.py artificial/01_knap_sc_75_150_19_efficiency.csv AntColony c artificial/01_knap_sc_75_150_19.csv 294 1000 50 --sp1 200 --sp2 0.75 
python3 ./01Knapsack.py artificial/01_knap_sc_75_150_19_efficiency.csv Randomized c artificial/01_knap_sc_75_150_19.csv 294 1000 100 --sp1 0.2

# 01_knap_sc_75_150_19.csv
python3 ./01Knapsack.py artificial/01_knap_sc_75_150_19_efficiency.csv BranchAndBound c artificial/01_knap_sc_75_150_19.csv 294 10000 - 
python3 ./01Knapsack.py artificial/01_knap_sc_75_150_19_efficiency.csv RatioSortGreedy c artificial/01_knap_sc_75_150_19.csv 294 10000 - 
python3 ./01Knapsack.py artificial/01_knap_sc_75_150_19_efficiency.csv ValueSortGreedy c artificial/01_knap_sc_75_150_19.csv 294 10000 - 
python3 ./01Knapsack.py artificial/01_knap_sc_75_150_19_efficiency.csv WeightSortGreedy c artificial/01_knap_sc_75_150_19.csv 294 10000 - 
python3 ./01Knapsack.py artificial/01_knap_sc_75_150_19_efficiency.csv RatiosortAndConvergeGreedy c artificial/01_knap_sc_75_150_19.csv 294 10000 - 
python3 ./01Knapsack.py artificial/01_knap_sc_75_150_19_efficiency.csv TopDownDynamicProgramming c artificial/01_knap_sc_75_150_19.csv 294 10000 - 
python3 ./01Knapsack.py artificial/01_knap_sc_75_150_19_efficiency.csv BottomUpDynamicProgramming c artificial/01_knap_sc_75_150_19.csv 294 10000 - 
python3 ./01Knapsack.py artificial/01_knap_sc_75_150_19_efficiency.csv FullyPolyNomial c artificial/01_knap_sc_75_150_19.csv 294 10000 - 
python3 ./01Knapsack.py artificial/01_knap_sc_75_150_19_efficiency.csv GeneticProgramming c artificial/01_knap_sc_75_150_19.csv 294 10000 - --sp1 10
python3 ./01Knapsack.py artificial/01_knap_sc_75_150_19_efficiency.csv AntColony c artificial/01_knap_sc_75_150_19.csv 294 10000 50 --sp1 200 --sp2 0.75 
python3 ./01Knapsack.py artificial/01_knap_sc_75_150_19_efficiency.csv Randomized c artificial/01_knap_sc_75_150_19.csv 294 10000 100 --sp1 0.2

# 01_knap_sc_75_150_24.csv
python3 ./01Knapsack.py artificial/01_knap_sc_75_150_24_efficiency.csv BranchAndBound c artificial/01_knap_sc_75_150_24.csv 216 10 - 
python3 ./01Knapsack.py artificial/01_knap_sc_75_150_24_efficiency.csv RatioSortGreedy c artificial/01_knap_sc_75_150_24.csv 216 10 - 
python3 ./01Knapsack.py artificial/01_knap_sc_75_150_24_efficiency.csv ValueSortGreedy c artificial/01_knap_sc_75_150_24.csv 216 10 - 
python3 ./01Knapsack.py artificial/01_knap_sc_75_150_24_efficiency.csv WeightSortGreedy c artificial/01_knap_sc_75_150_24.csv 216 10 - 
python3 ./01Knapsack.py artificial/01_knap_sc_75_150_24_efficiency.csv RatiosortAndConvergeGreedy c artificial/01_knap_sc_75_150_24.csv 216 10 - 
python3 ./01Knapsack.py artificial/01_knap_sc_75_150_24_efficiency.csv TopDownDynamicProgramming c artificial/01_knap_sc_75_150_24.csv 216 10 - 
python3 ./01Knapsack.py artificial/01_knap_sc_75_150_24_efficiency.csv BottomUpDynamicProgramming c artificial/01_knap_sc_75_150_24.csv 216 10 - 
python3 ./01Knapsack.py artificial/01_knap_sc_75_150_24_efficiency.csv FullyPolyNomial c artificial/01_knap_sc_75_150_24.csv 216 10 - 
python3 ./01Knapsack.py artificial/01_knap_sc_75_150_24_efficiency.csv GeneticProgramming c artificial/01_knap_sc_75_150_24.csv 216 10 - --sp1 10
python3 ./01Knapsack.py artificial/01_knap_sc_75_150_24_efficiency.csv AntColony c artificial/01_knap_sc_75_150_24.csv 216 10 50 --sp1 200 --sp2 0.75 
python3 ./01Knapsack.py artificial/01_knap_sc_75_150_24_efficiency.csv Randomized c artificial/01_knap_sc_75_150_24.csv 216 10 100 --sp1 0.2

# Artificial data
# 01_knap_sc_75_150_24.csv
python3 ./01Knapsack.py artificial/01_knap_sc_75_150_24_efficiency.csv BranchAndBound c artificial/01_knap_sc_75_150_24.csv 216 100 - 
python3 ./01Knapsack.py artificial/01_knap_sc_75_150_24_efficiency.csv RatioSortGreedy c artificial/01_knap_sc_75_150_24.csv 216 100 - 
python3 ./01Knapsack.py artificial/01_knap_sc_75_150_24_efficiency.csv ValueSortGreedy c artificial/01_knap_sc_75_150_24.csv 216 100 - 
python3 ./01Knapsack.py artificial/01_knap_sc_75_150_24_efficiency.csv WeightSortGreedy c artificial/01_knap_sc_75_150_24.csv 216 100 - 
python3 ./01Knapsack.py artificial/01_knap_sc_75_150_24_efficiency.csv RatiosortAndConvergeGreedy c artificial/01_knap_sc_75_150_24.csv 216 100 - 
python3 ./01Knapsack.py artificial/01_knap_sc_75_150_24_efficiency.csv TopDownDynamicProgramming c artificial/01_knap_sc_75_150_24.csv 216 100 - 
python3 ./01Knapsack.py artificial/01_knap_sc_75_150_24_efficiency.csv BottomUpDynamicProgramming c artificial/01_knap_sc_75_150_24.csv 216 100 - 
python3 ./01Knapsack.py artificial/01_knap_sc_75_150_24_efficiency.csv FullyPolyNomial c artificial/01_knap_sc_75_150_24.csv 216 100 - 
python3 ./01Knapsack.py artificial/01_knap_sc_75_150_24_efficiency.csv GeneticProgramming c artificial/01_knap_sc_75_150_24.csv 216 100 - --sp1 10
python3 ./01Knapsack.py artificial/01_knap_sc_75_150_24_efficiency.csv AntColony c artificial/01_knap_sc_75_150_24.csv 216 100 50 --sp1 200 --sp2 0.75 
python3 ./01Knapsack.py artificial/01_knap_sc_75_150_24_efficiency.csv Randomized c artificial/01_knap_sc_75_150_24.csv 216 100 100 --sp1 0.2

# Artificial data
# 01_knap_sc_75_150_24.csv
python3 ./01Knapsack.py artificial/01_knap_sc_75_150_24_efficiency.csv BranchAndBound c artificial/01_knap_sc_75_150_24.csv 216 1000 - 
python3 ./01Knapsack.py artificial/01_knap_sc_75_150_24_efficiency.csv RatioSortGreedy c artificial/01_knap_sc_75_150_24.csv 216 1000 - 
python3 ./01Knapsack.py artificial/01_knap_sc_75_150_24_efficiency.csv ValueSortGreedy c artificial/01_knap_sc_75_150_24.csv 216 1000 - 
python3 ./01Knapsack.py artificial/01_knap_sc_75_150_24_efficiency.csv WeightSortGreedy c artificial/01_knap_sc_75_150_24.csv 216 1000 - 
python3 ./01Knapsack.py artificial/01_knap_sc_75_150_24_efficiency.csv RatiosortAndConvergeGreedy c artificial/01_knap_sc_75_150_24.csv 216 1000 - 
python3 ./01Knapsack.py artificial/01_knap_sc_75_150_24_efficiency.csv TopDownDynamicProgramming c artificial/01_knap_sc_75_150_24.csv 216 1000 - 
python3 ./01Knapsack.py artificial/01_knap_sc_75_150_24_efficiency.csv BottomUpDynamicProgramming c artificial/01_knap_sc_75_150_24.csv 216 1000 - 
python3 ./01Knapsack.py artificial/01_knap_sc_75_150_24_efficiency.csv FullyPolyNomial c artificial/01_knap_sc_75_150_24.csv 216 1000 - 
python3 ./01Knapsack.py artificial/01_knap_sc_75_150_24_efficiency.csv GeneticProgramming c artificial/01_knap_sc_75_150_24.csv 216 1000 - --sp1 10
python3 ./01Knapsack.py artificial/01_knap_sc_75_150_24_efficiency.csv AntColony c artificial/01_knap_sc_75_150_24.csv 216 1000 50 --sp1 200 --sp2 0.75 
python3 ./01Knapsack.py artificial/01_knap_sc_75_150_24_efficiency.csv Randomized c artificial/01_knap_sc_75_150_24.csv 216 1000 100 --sp1 0.2

# 01_knap_sc_75_150_24.csv
python3 ./01Knapsack.py artificial/01_knap_sc_75_150_24_efficiency.csv BranchAndBound c artificial/01_knap_sc_75_150_24.csv 216 10000 - 
python3 ./01Knapsack.py artificial/01_knap_sc_75_150_24_efficiency.csv RatioSortGreedy c artificial/01_knap_sc_75_150_24.csv 216 10000 - 
python3 ./01Knapsack.py artificial/01_knap_sc_75_150_24_efficiency.csv ValueSortGreedy c artificial/01_knap_sc_75_150_24.csv 216 10000 - 
python3 ./01Knapsack.py artificial/01_knap_sc_75_150_24_efficiency.csv WeightSortGreedy c artificial/01_knap_sc_75_150_24.csv 216 10000 - 
python3 ./01Knapsack.py artificial/01_knap_sc_75_150_24_efficiency.csv RatiosortAndConvergeGreedy c artificial/01_knap_sc_75_150_24.csv 216 10000 - 
python3 ./01Knapsack.py artificial/01_knap_sc_75_150_24_efficiency.csv TopDownDynamicProgramming c artificial/01_knap_sc_75_150_24.csv 216 10000 - 
python3 ./01Knapsack.py artificial/01_knap_sc_75_150_24_efficiency.csv BottomUpDynamicProgramming c artificial/01_knap_sc_75_150_24.csv 216 10000 - 
python3 ./01Knapsack.py artificial/01_knap_sc_75_150_24_efficiency.csv FullyPolyNomial c artificial/01_knap_sc_75_150_24.csv 216 10000 - 
python3 ./01Knapsack.py artificial/01_knap_sc_75_150_24_efficiency.csv GeneticProgramming c artificial/01_knap_sc_75_150_24.csv 216 10000 - --sp1 10
python3 ./01Knapsack.py artificial/01_knap_sc_75_150_24_efficiency.csv AntColony c artificial/01_knap_sc_75_150_24.csv 216 10000 50 --sp1 200 --sp2 0.75 
python3 ./01Knapsack.py artificial/01_knap_sc_75_150_24_efficiency.csv Randomized c artificial/01_knap_sc_75_150_24.csv 216 10000 100 --sp1 0.2

# 01_knap_un_100_200_10.csv
python3 ./01Knapsack.py artificial/01_knap_un_100_200_10_efficiency.csv BranchAndBound c artificial/01_knap_un_100_200_10.csv 200 10 - 
python3 ./01Knapsack.py artificial/01_knap_un_100_200_10_efficiency.csv RatioSortGreedy c artificial/01_knap_un_100_200_10.csv 200 10 - 
python3 ./01Knapsack.py artificial/01_knap_un_100_200_10_efficiency.csv ValueSortGreedy c artificial/01_knap_un_100_200_10.csv 200 10 - 
python3 ./01Knapsack.py artificial/01_knap_un_100_200_10_efficiency.csv WeightSortGreedy c artificial/01_knap_un_100_200_10.csv 200 10 - 
python3 ./01Knapsack.py artificial/01_knap_un_100_200_10_efficiency.csv RatiosortAndConvergeGreedy c artificial/01_knap_un_100_200_10.csv 200 10 - 
python3 ./01Knapsack.py artificial/01_knap_un_100_200_10_efficiency.csv TopDownDynamicProgramming c artificial/01_knap_un_100_200_10.csv 200 10 - 
python3 ./01Knapsack.py artificial/01_knap_un_100_200_10_efficiency.csv BottomUpDynamicProgramming c artificial/01_knap_un_100_200_10.csv 200 10 - 
python3 ./01Knapsack.py artificial/01_knap_un_100_200_10_efficiency.csv FullyPolyNomial c artificial/01_knap_un_100_200_10.csv 200 10 - 
python3 ./01Knapsack.py artificial/01_knap_un_100_200_10_efficiency.csv GeneticProgramming c artificial/01_knap_un_100_200_10.csv 200 10 - --sp1 10
python3 ./01Knapsack.py artificial/01_knap_un_100_200_10_efficiency.csv AntColony c artificial/01_knap_un_100_200_10.csv 200 10 50 --sp1 200 --sp2 0.75 
python3 ./01Knapsack.py artificial/01_knap_un_100_200_10_efficiency.csv Randomized c artificial/01_knap_un_100_200_10.csv 200 10 100 --sp1 0.2

# Artificial data
# 01_knap_un_100_200_10.csv
python3 ./01Knapsack.py artificial/01_knap_un_100_200_10_efficiency.csv BranchAndBound c artificial/01_knap_un_100_200_10.csv 200 100 - 
python3 ./01Knapsack.py artificial/01_knap_un_100_200_10_efficiency.csv RatioSortGreedy c artificial/01_knap_un_100_200_10.csv 200 100 - 
python3 ./01Knapsack.py artificial/01_knap_un_100_200_10_efficiency.csv ValueSortGreedy c artificial/01_knap_un_100_200_10.csv 200 100 - 
python3 ./01Knapsack.py artificial/01_knap_un_100_200_10_efficiency.csv WeightSortGreedy c artificial/01_knap_un_100_200_10.csv 200 100 - 
python3 ./01Knapsack.py artificial/01_knap_un_100_200_10_efficiency.csv RatiosortAndConvergeGreedy c artificial/01_knap_un_100_200_10.csv 200 100 - 
python3 ./01Knapsack.py artificial/01_knap_un_100_200_10_efficiency.csv TopDownDynamicProgramming c artificial/01_knap_un_100_200_10.csv 200 100 - 
python3 ./01Knapsack.py artificial/01_knap_un_100_200_10_efficiency.csv BottomUpDynamicProgramming c artificial/01_knap_un_100_200_10.csv 200 100 - 
python3 ./01Knapsack.py artificial/01_knap_un_100_200_10_efficiency.csv FullyPolyNomial c artificial/01_knap_un_100_200_10.csv 200 100 - 
python3 ./01Knapsack.py artificial/01_knap_un_100_200_10_efficiency.csv GeneticProgramming c artificial/01_knap_un_100_200_10.csv 200 100 - --sp1 10
python3 ./01Knapsack.py artificial/01_knap_un_100_200_10_efficiency.csv AntColony c artificial/01_knap_un_100_200_10.csv 200 100 50 --sp1 200 --sp2 0.75 
python3 ./01Knapsack.py artificial/01_knap_un_100_200_10_efficiency.csv Randomized c artificial/01_knap_un_100_200_10.csv 200 100 100 --sp1 0.2

# Artificial data
# 01_knap_un_100_200_10.csv
python3 ./01Knapsack.py artificial/01_knap_un_100_200_10_efficiency.csv BranchAndBound c artificial/01_knap_un_100_200_10.csv 200 1000 - 
python3 ./01Knapsack.py artificial/01_knap_un_100_200_10_efficiency.csv RatioSortGreedy c artificial/01_knap_un_100_200_10.csv 200 1000 - 
python3 ./01Knapsack.py artificial/01_knap_un_100_200_10_efficiency.csv ValueSortGreedy c artificial/01_knap_un_100_200_10.csv 200 1000 - 
python3 ./01Knapsack.py artificial/01_knap_un_100_200_10_efficiency.csv WeightSortGreedy c artificial/01_knap_un_100_200_10.csv 200 1000 - 
python3 ./01Knapsack.py artificial/01_knap_un_100_200_10_efficiency.csv RatiosortAndConvergeGreedy c artificial/01_knap_un_100_200_10.csv 200 1000 - 
python3 ./01Knapsack.py artificial/01_knap_un_100_200_10_efficiency.csv TopDownDynamicProgramming c artificial/01_knap_un_100_200_10.csv 200 1000 - 
python3 ./01Knapsack.py artificial/01_knap_un_100_200_10_efficiency.csv BottomUpDynamicProgramming c artificial/01_knap_un_100_200_10.csv 200 1000 - 
python3 ./01Knapsack.py artificial/01_knap_un_100_200_10_efficiency.csv FullyPolyNomial c artificial/01_knap_un_100_200_10.csv 200 1000 - 
python3 ./01Knapsack.py artificial/01_knap_un_100_200_10_efficiency.csv GeneticProgramming c artificial/01_knap_un_100_200_10.csv 200 1000 - --sp1 10
python3 ./01Knapsack.py artificial/01_knap_un_100_200_10_efficiency.csv AntColony c artificial/01_knap_un_100_200_10.csv 200 1000 50 --sp1 200 --sp2 0.75 
python3 ./01Knapsack.py# 01_knap_un_20_100_15.csv
python3 ./01Knapsack.py artificial/01_knap_un_20_100_15_efficiency.csv BranchAndBound c artificial/01_knap_un_20_100_15.csv 236 10 - 
python3 ./01Knapsack.py artificial/01_knap_un_20_100_15_efficiency.csv RatioSortGreedy c artificial/01_knap_un_20_100_15.csv 236 10 - 
python3 ./01Knapsack.py artificial/01_knap_un_20_100_15_efficiency.csv ValueSortGreedy c artificial/01_knap_un_20_100_15.csv 236 10 - 
python3 ./01Knapsack.py artificial/01_knap_un_20_100_15_efficiency.csv WeightSortGreedy c artificial/01_knap_un_20_100_15.csv 236 10 - 
python3 ./01Knapsack.py artificial/01_knap_un_20_100_15_efficiency.csv RatiosortAndConvergeGreedy c artificial/01_knap_un_20_100_15.csv 236 10 - 
python3 ./01Knapsack.py artificial/01_knap_un_20_100_15_efficiency.csv TopDownDynamicProgramming c artificial/01_knap_un_20_100_15.csv 236 10 - 
python3 ./01Knapsack.py artificial/01_knap_un_20_100_15_efficiency.csv BottomUpDynamicProgramming c artificial/01_knap_un_20_100_15.csv 236 10 - 
python3 ./01Knapsack.py artificial/01_knap_un_20_100_15_efficiency.csv FullyPolyNomial c artificial/01_knap_un_20_100_15.csv 236 10 - 
python3 ./01Knapsack.py artificial/01_knap_un_20_100_15_efficiency.csv GeneticProgramming c artificial/01_knap_un_20_100_15.csv 236 10 - --sp1 10
python3 ./01Knapsack.py artificial/01_knap_un_20_100_15_efficiency.csv AntColony c artificial/01_knap_un_20_100_15.csv 236 10 50 --sp1 236 --sp2 0.75 
python3 ./01Knapsack.py artificial/01_knap_un_20_100_15_efficiency.csv Randomized c artificial/01_knap_un_20_100_15.csv 236 10 100 --sp1 0.2

# Artificial data
# 01_knap_un_20_100_15.csv
python3 ./01Knapsack.py artificial/01_knap_un_20_100_15_efficiency.csv BranchAndBound c artificial/01_knap_un_20_100_15.csv 236 100 - 
python3 ./01Knapsack.py artificial/01_knap_un_20_100_15_efficiency.csv RatioSortGreedy c artificial/01_knap_un_20_100_15.csv 236 100 - 
python3 ./01Knapsack.py artificial/01_knap_un_20_100_15_efficiency.csv ValueSortGreedy c artificial/01_knap_un_20_100_15.csv 236 100 - 
python3 ./01Knapsack.py artificial/01_knap_un_20_100_15_efficiency.csv WeightSortGreedy c artificial/01_knap_un_20_100_15.csv 236 100 - 
python3 ./01Knapsack.py artificial/01_knap_un_20_100_15_efficiency.csv RatiosortAndConvergeGreedy c artificial/01_knap_un_20_100_15.csv 236 100 - 
python3 ./01Knapsack.py artificial/01_knap_un_20_100_15_efficiency.csv TopDownDynamicProgramming c artificial/01_knap_un_20_100_15.csv 236 100 - 
python3 ./01Knapsack.py artificial/01_knap_un_20_100_15_efficiency.csv BottomUpDynamicProgramming c artificial/01_knap_un_20_100_15.csv 236 100 - 
python3 ./01Knapsack.py artificial/01_knap_un_20_100_15_efficiency.csv FullyPolyNomial c artificial/01_knap_un_20_100_15.csv 236 100 - 
python3 ./01Knapsack.py artificial/01_knap_un_20_100_15_efficiency.csv GeneticProgramming c artificial/01_knap_un_20_100_15.csv 236 100 - --sp1 10
python3 ./01Knapsack.py artificial/01_knap_un_20_100_15_efficiency.csv AntColony c artificial/01_knap_un_20_100_15.csv 236 100 50 --sp1 236 --sp2 0.75 
python3 ./01Knapsack.py artificial/01_knap_un_20_100_15_efficiency.csv Randomized c artificial/01_knap_un_20_100_15.csv 236 100 100 --sp1 0.2

# Artificial data
# 01_knap_un_20_100_15.csv
python3 ./01Knapsack.py artificial/01_knap_un_20_100_15_efficiency.csv BranchAndBound c artificial/01_knap_un_20_100_15.csv 236 1000 - 
python3 ./01Knapsack.py artificial/01_knap_un_20_100_15_efficiency.csv RatioSortGreedy c artificial/01_knap_un_20_100_15.csv 236 1000 - 
python3 ./01Knapsack.py artificial/01_knap_un_20_100_15_efficiency.csv ValueSortGreedy c artificial/01_knap_un_20_100_15.csv 236 1000 - 
python3 ./01Knapsack.py artificial/01_knap_un_20_100_15_efficiency.csv WeightSortGreedy c artificial/01_knap_un_20_100_15.csv 236 1000 - 
python3 ./01Knapsack.py artificial/01_knap_un_20_100_15_efficiency.csv RatiosortAndConvergeGreedy c artificial/01_knap_un_20_100_15.csv 236 1000 - 
python3 ./01Knapsack.py artificial/01_knap_un_20_100_15_efficiency.csv TopDownDynamicProgramming c artificial/01_knap_un_20_100_15.csv 236 1000 - 
python3 ./01Knapsack.py artificial/01_knap_un_20_100_15_efficiency.csv BottomUpDynamicProgramming c artificial/01_knap_un_20_100_15.csv 236 1000 - 
python3 ./01Knapsack.py artificial/01_knap_un_20_100_15_efficiency.csv FullyPolyNomial c artificial/01_knap_un_20_100_15.csv 236 1000 - 
python3 ./01Knapsack.py artificial/01_knap_un_20_100_15_efficiency.csv GeneticProgramming c artificial/01_knap_un_20_100_15.csv 236 1000 - --sp1 10
python3 ./01Knapsack.py artificial/01_knap_un_20_100_15_efficiency.csv AntColony c artificial/01_knap_un_20_100_15.csv 236 1000 50 --sp1 236 --sp2 0.75 
python3 ./01Knapsack.py artificial/01_knap_un_20_100_15_efficiency.csv Randomized c artificial/01_knap_un_20_100_15.csv 236 1000 100 --sp1 0.2

# 01_knap_un_20_100_15.csv
python3 ./01Knapsack.py artificial/01_knap_un_20_100_15_efficiency.csv BranchAndBound c artificial/01_knap_un_20_100_15.csv 236 10000 - 
python3 ./01Knapsack.py artificial/01_knap_un_20_100_15_efficiency.csv RatioSortGreedy c artificial/01_knap_un_20_100_15.csv 236 10000 - 
python3 ./01Knapsack.py artificial/01_knap_un_20_100_15_efficiency.csv ValueSortGreedy c artificial/01_knap_un_20_100_15.csv 236 10000 - 
python3 ./01Knapsack.py artificial/01_knap_un_20_100_15_efficiency.csv WeightSortGreedy c artificial/01_knap_un_20_100_15.csv 236 10000 - 
python3 ./01Knapsack.py artificial/01_knap_un_20_100_15_efficiency.csv RatiosortAndConvergeGreedy c artificial/01_knap_un_20_100_15.csv 236 10000 - 
python3 ./01Knapsack.py artificial/01_knap_un_20_100_15_efficiency.csv TopDownDynamicProgramming c artificial/01_knap_un_20_100_15.csv 236 10000 - 
python3 ./01Knapsack.py artificial/01_knap_un_20_100_15_efficiency.csv BottomUpDynamicProgramming c artificial/01_knap_un_20_100_15.csv 236 10000 - 
python3 ./01Knapsack.py artificial/01_knap_un_20_100_15_efficiency.csv FullyPolyNomial c artificial/01_knap_un_20_100_15.csv 236 10000 - 
python3 ./01Knapsack.py artificial/01_knap_un_20_100_15_efficiency.csv GeneticProgramming c artificial/01_knap_un_20_100_15.csv 236 10000 - --sp1 10
python3 ./01Knapsack.py artificial/01_knap_un_20_100_15_efficiency.csv AntColony c artificial/01_knap_un_20_100_15.csv 236 10000 50 --sp1 236 --sp2 0.75 
python3 ./01Knapsack.py artificial/01_knap_un_20_100_15_efficiency.csv Randomized c artificial/01_knap_un_20_100_15.csv 236 10000 100 --sp1 0.2 artificial/01_knap_un_100_200_10_efficiency.csv Randomized c artificial/01_knap_un_100_200_10.csv 200 1000 100 --sp1 0.2

# 01_knap_un_100_200_10.csv
python3 ./01Knapsack.py artificial/01_knap_un_100_200_10_efficiency.csv BranchAndBound c artificial/01_knap_un_100_200_10.csv 200 10000 - 
python3 ./01Knapsack.py artificial/01_knap_un_100_200_10_efficiency.csv RatioSortGreedy c artificial/01_knap_un_100_200_10.csv 200 10000 - 
python3 ./01Knapsack.py artificial/01_knap_un_100_200_10_efficiency.csv ValueSortGreedy c artificial/01_knap_un_100_200_10.csv 200 10000 - 
python3 ./01Knapsack.py artificial/01_knap_un_100_200_10_efficiency.csv WeightSortGreedy c artificial/01_knap_un_100_200_10.csv 200 10000 - 
python3 ./01Knapsack.py artificial/01_knap_un_100_200_10_efficiency.csv RatiosortAndConvergeGreedy c artificial/01_knap_un_100_200_10.csv 200 10000 - 
python3 ./01Knapsack.py artificial/01_knap_un_100_200_10_efficiency.csv TopDownDynamicProgramming c artificial/01_knap_un_100_200_10.csv 200 10000 - 
python3 ./01Knapsack.py artificial/01_knap_un_100_200_10_efficiency.csv BottomUpDynamicProgramming c artificial/01_knap_un_100_200_10.csv 200 10000 - 
python3 ./01Knapsack.py artificial/01_knap_un_100_200_10_efficiency.csv FullyPolyNomial c artificial/01_knap_un_100_200_10.csv 200 10000 - 
python3 ./01Knapsack.py artificial/01_knap_un_100_200_10_efficiency.csv GeneticProgramming c artificial/01_knap_un_100_200_10.csv 200 10000 - --sp1 10
python3 ./01Knapsack.py artificial/01_knap_un_100_200_10_efficiency.csv AntColony c artificial/01_knap_un_100_200_10.csv 200 10000 50 --sp1 200 --sp2 0.75 
python3 ./01Knapsack.py artificial/01_knap_un_100_200_10_efficiency.csv Randomized c artificial/01_knap_un_100_200_10.csv 200 10000 100 --sp1 0.2

# 01_knap_un_20_100_15.csv
python3 ./01Knapsack.py artificial/01_knap_un_20_100_15_efficiency.csv BranchAndBound c artificial/01_knap_un_20_100_15.csv 236 10 - 
python3 ./01Knapsack.py artificial/01_knap_un_20_100_15_efficiency.csv RatioSortGreedy c artificial/01_knap_un_20_100_15.csv 236 10 - 
python3 ./01Knapsack.py artificial/01_knap_un_20_100_15_efficiency.csv ValueSortGreedy c artificial/01_knap_un_20_100_15.csv 236 10 - 
python3 ./01Knapsack.py artificial/01_knap_un_20_100_15_efficiency.csv WeightSortGreedy c artificial/01_knap_un_20_100_15.csv 236 10 - 
python3 ./01Knapsack.py artificial/01_knap_un_20_100_15_efficiency.csv RatiosortAndConvergeGreedy c artificial/01_knap_un_20_100_15.csv 236 10 - 
python3 ./01Knapsack.py artificial/01_knap_un_20_100_15_efficiency.csv TopDownDynamicProgramming c artificial/01_knap_un_20_100_15.csv 236 10 - 
python3 ./01Knapsack.py artificial/01_knap_un_20_100_15_efficiency.csv BottomUpDynamicProgramming c artificial/01_knap_un_20_100_15.csv 236 10 - 
python3 ./01Knapsack.py artificial/01_knap_un_20_100_15_efficiency.csv FullyPolyNomial c artificial/01_knap_un_20_100_15.csv 236 10 - 
python3 ./01Knapsack.py artificial/01_knap_un_20_100_15_efficiency.csv GeneticProgramming c artificial/01_knap_un_20_100_15.csv 236 10 - --sp1 10
python3 ./01Knapsack.py artificial/01_knap_un_20_100_15_efficiency.csv AntColony c artificial/01_knap_un_20_100_15.csv 236 10 50 --sp1 236 --sp2 0.75 
python3 ./01Knapsack.py artificial/01_knap_un_20_100_15_efficiency.csv Randomized c artificial/01_knap_un_20_100_15.csv 236 10 100 --sp1 0.2

# Artificial data
# 01_knap_un_20_100_15.csv
python3 ./01Knapsack.py artificial/01_knap_un_20_100_15_efficiency.csv BranchAndBound c artificial/01_knap_un_20_100_15.csv 236 100 - 
python3 ./01Knapsack.py artificial/01_knap_un_20_100_15_efficiency.csv RatioSortGreedy c artificial/01_knap_un_20_100_15.csv 236 100 - 
python3 ./01Knapsack.py artificial/01_knap_un_20_100_15_efficiency.csv ValueSortGreedy c artificial/01_knap_un_20_100_15.csv 236 100 - 
python3 ./01Knapsack.py artificial/01_knap_un_20_100_15_efficiency.csv WeightSortGreedy c artificial/01_knap_un_20_100_15.csv 236 100 - 
python3 ./01Knapsack.py artificial/01_knap_un_20_100_15_efficiency.csv RatiosortAndConvergeGreedy c artificial/01_knap_un_20_100_15.csv 236 100 - 
python3 ./01Knapsack.py artificial/01_knap_un_20_100_15_efficiency.csv TopDownDynamicProgramming c artificial/01_knap_un_20_100_15.csv 236 100 - 
python3 ./01Knapsack.py artificial/01_knap_un_20_100_15_efficiency.csv BottomUpDynamicProgramming c artificial/01_knap_un_20_100_15.csv 236 100 - 
python3 ./01Knapsack.py artificial/01_knap_un_20_100_15_efficiency.csv FullyPolyNomial c artificial/01_knap_un_20_100_15.csv 236 100 - 
python3 ./01Knapsack.py artificial/01_knap_un_20_100_15_efficiency.csv GeneticProgramming c artificial/01_knap_un_20_100_15.csv 236 100 - --sp1 10
python3 ./01Knapsack.py artificial/01_knap_un_20_100_15_efficiency.csv AntColony c artificial/01_knap_un_20_100_15.csv 236 100 50 --sp1 236 --sp2 0.75 
python3 ./01Knapsack.py artificial/01_knap_un_20_100_15_efficiency.csv Randomized c artificial/01_knap_un_20_100_15.csv 236 100 100 --sp1 0.2

# Artificial data
# 01_knap_un_20_100_15.csv
python3 ./01Knapsack.py artificial/01_knap_un_20_100_15_efficiency.csv BranchAndBound c artificial/01_knap_un_20_100_15.csv 236 1000 - 
python3 ./01Knapsack.py artificial/01_knap_un_20_100_15_efficiency.csv RatioSortGreedy c artificial/01_knap_un_20_100_15.csv 236 1000 - 
python3 ./01Knapsack.py artificial/01_knap_un_20_100_15_efficiency.csv ValueSortGreedy c artificial/01_knap_un_20_100_15.csv 236 1000 - 
python3 ./01Knapsack.py artificial/01_knap_un_20_100_15_efficiency.csv WeightSortGreedy c artificial/01_knap_un_20_100_15.csv 236 1000 - 
python3 ./01Knapsack.py artificial/01_knap_un_20_100_15_efficiency.csv RatiosortAndConvergeGreedy c artificial/01_knap_un_20_100_15.csv 236 1000 - 
python3 ./01Knapsack.py artificial/01_knap_un_20_100_15_efficiency.csv TopDownDynamicProgramming c artificial/01_knap_un_20_100_15.csv 236 1000 - 
python3 ./01Knapsack.py artificial/01_knap_un_20_100_15_efficiency.csv BottomUpDynamicProgramming c artificial/01_knap_un_20_100_15.csv 236 1000 - 
python3 ./01Knapsack.py artificial/01_knap_un_20_100_15_efficiency.csv FullyPolyNomial c artificial/01_knap_un_20_100_15.csv 236 1000 - 
python3 ./01Knapsack.py artificial/01_knap_un_20_100_15_efficiency.csv GeneticProgramming c artificial/01_knap_un_20_100_15.csv 236 1000 - --sp1 10
python3 ./01Knapsack.py artificial/01_knap_un_20_100_15_efficiency.csv AntColony c artificial/01_knap_un_20_100_15.csv 236 1000 50 --sp1 236 --sp2 0.75 
python3 ./01Knapsack.py artificial/01_knap_un_20_100_15_efficiency.csv Randomized c artificial/01_knap_un_20_100_15.csv 236 1000 100 --sp1 0.2

# 01_knap_un_20_100_15.csv
python3 ./01Knapsack.py artificial/01_knap_un_20_100_15_efficiency.csv BranchAndBound c artificial/01_knap_un_20_100_15.csv 236 10000 - 
python3 ./01Knapsack.py artificial/01_knap_un_20_100_15_efficiency.csv RatioSortGreedy c artificial/01_knap_un_20_100_15.csv 236 10000 - 
python3 ./01Knapsack.py artificial/01_knap_un_20_100_15_efficiency.csv ValueSortGreedy c artificial/01_knap_un_20_100_15.csv 236 10000 - 
python3 ./01Knapsack.py artificial/01_knap_un_20_100_15_efficiency.csv WeightSortGreedy c artificial/01_knap_un_20_100_15.csv 236 10000 - 
python3 ./01Knapsack.py artificial/01_knap_un_20_100_15_efficiency.csv RatiosortAndConvergeGreedy c artificial/01_knap_un_20_100_15.csv 236 10000 - 
python3 ./01Knapsack.py artificial/01_knap_un_20_100_15_efficiency.csv TopDownDynamicProgramming c artificial/01_knap_un_20_100_15.csv 236 10000 - 
python3 ./01Knapsack.py artificial/01_knap_un_20_100_15_efficiency.csv BottomUpDynamicProgramming c artificial/01_knap_un_20_100_15.csv 236 10000 - 
python3 ./01Knapsack.py artificial/01_knap_un_20_100_15_efficiency.csv FullyPolyNomial c artificial/01_knap_un_20_100_15.csv 236 10000 - 
python3 ./01Knapsack.py artificial/01_knap_un_20_100_15_efficiency.csv GeneticProgramming c artificial/01_knap_un_20_100_15.csv 236 10000 - --sp1 10
python3 ./01Knapsack.py artificial/01_knap_un_20_100_15_efficiency.csv AntColony c artificial/01_knap_un_20_100_15.csv 236 10000 50 --sp1 236 --sp2 0.75 
python3 ./01Knapsack.py artificial/01_knap_un_20_100_15_efficiency.csv Randomized c artificial/01_knap_un_20_100_15.csv 236 10000 100 --sp1 0.2

# 01_knap_un_75_150_21.csv
python3 ./01Knapsack.py artificial/01_knap_un_75_150_21_efficiency.csv BranchAndBound c artificial/01_knap_un_75_150_21.csv 283 10 - 
python3 ./01Knapsack.py artificial/01_knap_un_75_150_21_efficiency.csv RatioSortGreedy c artificial/01_knap_un_75_150_21.csv 283 10 - 
python3 ./01Knapsack.py artificial/01_knap_un_75_150_21_efficiency.csv ValueSortGreedy c artificial/01_knap_un_75_150_21.csv 283 10 - 
python3 ./01Knapsack.py artificial/01_knap_un_75_150_21_efficiency.csv WeightSortGreedy c artificial/01_knap_un_75_150_21.csv 283 10 - 
python3 ./01Knapsack.py artificial/01_knap_un_75_150_21_efficiency.csv RatiosortAndConvergeGreedy c artificial/01_knap_un_75_150_21.csv 283 10 - 
python3 ./01Knapsack.py artificial/01_knap_un_75_150_21_efficiency.csv TopDownDynamicProgramming c artificial/01_knap_un_75_150_21.csv 283 10 - 
python3 ./01Knapsack.py artificial/01_knap_un_75_150_21_efficiency.csv BottomUpDynamicProgramming c artificial/01_knap_un_75_150_21.csv 283 10 - 
python3 ./01Knapsack.py artificial/01_knap_un_75_150_21_efficiency.csv FullyPolyNomial c artificial/01_knap_un_75_150_21.csv 283 10 - 
python3 ./01Knapsack.py artificial/01_knap_un_75_150_21_efficiency.csv GeneticProgramming c artificial/01_knap_un_75_150_21.csv 283 10 - --sp1 10
python3 ./01Knapsack.py artificial/01_knap_un_75_150_21_efficiency.csv AntColony c artificial/01_knap_un_75_150_21.csv 283 10 50 --sp1 283 --sp2 0.75 
python3 ./01Knapsack.py artificial/01_knap_un_75_150_21_efficiency.csv Randomized c artificial/01_knap_un_75_150_21.csv 283 10 100 --sp1 0.2

# Artificial data
# 01_knap_un_75_150_21.csv
python3 ./01Knapsack.py artificial/01_knap_un_75_150_21_efficiency.csv BranchAndBound c artificial/01_knap_un_75_150_21.csv 283 100 - 
python3 ./01Knapsack.py artificial/01_knap_un_75_150_21_efficiency.csv RatioSortGreedy c artificial/01_knap_un_75_150_21.csv 283 100 - 
python3 ./01Knapsack.py artificial/01_knap_un_75_150_21_efficiency.csv ValueSortGreedy c artificial/01_knap_un_75_150_21.csv 283 100 - 
python3 ./01Knapsack.py artificial/01_knap_un_75_150_21_efficiency.csv WeightSortGreedy c artificial/01_knap_un_75_150_21.csv 283 100 - 
python3 ./01Knapsack.py artificial/01_knap_un_75_150_21_efficiency.csv RatiosortAndConvergeGreedy c artificial/01_knap_un_75_150_21.csv 283 100 - 
python3 ./01Knapsack.py artificial/01_knap_un_75_150_21_efficiency.csv TopDownDynamicProgramming c artificial/01_knap_un_75_150_21.csv 283 100 - 
python3 ./01Knapsack.py artificial/01_knap_un_75_150_21_efficiency.csv BottomUpDynamicProgramming c artificial/01_knap_un_75_150_21.csv 283 100 - 
python3 ./01Knapsack.py artificial/01_knap_un_75_150_21_efficiency.csv FullyPolyNomial c artificial/01_knap_un_75_150_21.csv 283 100 - 
python3 ./01Knapsack.py artificial/01_knap_un_75_150_21_efficiency.csv GeneticProgramming c artificial/01_knap_un_75_150_21.csv 283 100 - --sp1 10
python3 ./01Knapsack.py artificial/01_knap_un_75_150_21_efficiency.csv AntColony c artificial/01_knap_un_75_150_21.csv 283 100 50 --sp1 283 --sp2 0.75 
python3 ./01Knapsack.py artificial/01_knap_un_75_150_21_efficiency.csv Randomized c artificial/01_knap_un_75_150_21.csv 283 100 100 --sp1 0.2

# Artificial data
# 01_knap_un_75_150_21.csv
python3 ./01Knapsack.py artificial/01_knap_un_75_150_21_efficiency.csv BranchAndBound c artificial/01_knap_un_75_150_21.csv 283 1000 - 
python3 ./01Knapsack.py artificial/01_knap_un_75_150_21_efficiency.csv RatioSortGreedy c artificial/01_knap_un_75_150_21.csv 283 1000 - 
python3 ./01Knapsack.py artificial/01_knap_un_75_150_21_efficiency.csv ValueSortGreedy c artificial/01_knap_un_75_150_21.csv 283 1000 - 
python3 ./01Knapsack.py artificial/01_knap_un_75_150_21_efficiency.csv WeightSortGreedy c artificial/01_knap_un_75_150_21.csv 283 1000 - 
python3 ./01Knapsack.py artificial/01_knap_un_75_150_21_efficiency.csv RatiosortAndConvergeGreedy c artificial/01_knap_un_75_150_21.csv 283 1000 - 
python3 ./01Knapsack.py artificial/01_knap_un_75_150_21_efficiency.csv TopDownDynamicProgramming c artificial/01_knap_un_75_150_21.csv 283 1000 - 
python3 ./01Knapsack.py artificial/01_knap_un_75_150_21_efficiency.csv BottomUpDynamicProgramming c artificial/01_knap_un_75_150_21.csv 283 1000 - 
python3 ./01Knapsack.py artificial/01_knap_un_75_150_21_efficiency.csv FullyPolyNomial c artificial/01_knap_un_75_150_21.csv 283 1000 - 
python3 ./01Knapsack.py artificial/01_knap_un_75_150_21_efficiency.csv GeneticProgramming c artificial/01_knap_un_75_150_21.csv 283 1000 - --sp1 10
python3 ./01Knapsack.py artificial/01_knap_un_75_150_21_efficiency.csv AntColony c artificial/01_knap_un_75_150_21.csv 283 1000 50 --sp1 283 --sp2 0.75 
python3 ./01Knapsack.py artificial/01_knap_un_75_150_21_efficiency.csv Randomized c artificial/01_knap_un_75_150_21.csv 283 1000 100 --sp1 0.2

# 01_knap_un_75_150_21.csv
python3 ./01Knapsack.py artificial/01_knap_un_75_150_21_efficiency.csv BranchAndBound c artificial/01_knap_un_75_150_21.csv 283 10000 - 
python3 ./01Knapsack.py artificial/01_knap_un_75_150_21_efficiency.csv RatioSortGreedy c artificial/01_knap_un_75_150_21.csv 283 10000 - 
python3 ./01Knapsack.py artificial/01_knap_un_75_150_21_efficiency.csv ValueSortGreedy c artificial/01_knap_un_75_150_21.csv 283 10000 - 
python3 ./01Knapsack.py artificial/01_knap_un_75_150_21_efficiency.csv WeightSortGreedy c artificial/01_knap_un_75_150_21.csv 283 10000 - 
python3 ./01Knapsack.py artificial/01_knap_un_75_150_21_efficiency.csv RatiosortAndConvergeGreedy c artificial/01_knap_un_75_150_21.csv 283 10000 - 
python3 ./01Knapsack.py artificial/01_knap_un_75_150_21_efficiency.csv TopDownDynamicProgramming c artificial/01_knap_un_75_150_21.csv 283 10000 - 
python3 ./01Knapsack.py artificial/01_knap_un_75_150_21_efficiency.csv BottomUpDynamicProgramming c artificial/01_knap_un_75_150_21.csv 283 10000 - 
python3 ./01Knapsack.py artificial/01_knap_un_75_150_21_efficiency.csv FullyPolyNomial c artificial/01_knap_un_75_150_21.csv 283 10000 - 
python3 ./01Knapsack.py artificial/01_knap_un_75_150_21_efficiency.csv GeneticProgramming c artificial/01_knap_un_75_150_21.csv 283 10000 - --sp1 10
python3 ./01Knapsack.py artificial/01_knap_un_75_150_21_efficiency.csv AntColony c artificial/01_knap_un_75_150_21.csv 283 10000 50 --sp1 283 --sp2 0.75 
python3 ./01Knapsack.py artificial/01_knap_un_75_150_21_efficiency.csv Randomized c artificial/01_knap_un_75_150_21.csv 283 10000 100 --sp1 0.2

# 01_knap_un_75_150_22.csv
python3 ./01Knapsack.py artificial/01_knap_un_75_150_22_efficiency.csv BranchAndBound c artificial/01_knap_un_75_150_22.csv 504 10 - 
python3 ./01Knapsack.py artificial/01_knap_un_75_150_22_efficiency.csv RatioSortGreedy c artificial/01_knap_un_75_150_22.csv 504 10 - 
python3 ./01Knapsack.py artificial/01_knap_un_75_150_22_efficiency.csv ValueSortGreedy c artificial/01_knap_un_75_150_22.csv 504 10 - 
python3 ./01Knapsack.py artificial/01_knap_un_75_150_22_efficiency.csv WeightSortGreedy c artificial/01_knap_un_75_150_22.csv 504 10 - 
python3 ./01Knapsack.py artificial/01_knap_un_75_150_22_efficiency.csv RatiosortAndConvergeGreedy c artificial/01_knap_un_75_150_22.csv 504 10 - 
python3 ./01Knapsack.py artificial/01_knap_un_75_150_22_efficiency.csv TopDownDynamicProgramming c artificial/01_knap_un_75_150_22.csv 504 10 - 
python3 ./01Knapsack.py artificial/01_knap_un_75_150_22_efficiency.csv BottomUpDynamicProgramming c artificial/01_knap_un_75_150_22.csv 504 10 - 
python3 ./01Knapsack.py artificial/01_knap_un_75_150_22_efficiency.csv FullyPolyNomial c artificial/01_knap_un_75_150_22.csv 504 10 - 
python3 ./01Knapsack.py artificial/01_knap_un_75_150_22_efficiency.csv GeneticProgramming c artificial/01_knap_un_75_150_22.csv 504 10 - --sp1 10
python3 ./01Knapsack.py artificial/01_knap_un_75_150_22_efficiency.csv AntColony c artificial/01_knap_un_75_150_22.csv 504 10 50 --sp1 504 --sp2 0.75 
python3 ./01Knapsack.py artificial/01_knap_un_75_150_22_efficiency.csv Randomized c artificial/01_knap_un_75_150_22.csv 504 10 100 --sp1 0.2

# Artificial data
# 01_knap_un_75_150_22.csv
python3 ./01Knapsack.py artificial/01_knap_un_75_150_22_efficiency.csv BranchAndBound c artificial/01_knap_un_75_150_22.csv 504 100 - 
python3 ./01Knapsack.py artificial/01_knap_un_75_150_22_efficiency.csv RatioSortGreedy c artificial/01_knap_un_75_150_22.csv 504 100 - 
python3 ./01Knapsack.py artificial/01_knap_un_75_150_22_efficiency.csv ValueSortGreedy c artificial/01_knap_un_75_150_22.csv 504 100 - 
python3 ./01Knapsack.py artificial/01_knap_un_75_150_22_efficiency.csv WeightSortGreedy c artificial/01_knap_un_75_150_22.csv 504 100 - 
python3 ./01Knapsack.py artificial/01_knap_un_75_150_22_efficiency.csv RatiosortAndConvergeGreedy c artificial/01_knap_un_75_150_22.csv 504 100 - 
python3 ./01Knapsack.py artificial/01_knap_un_75_150_22_efficiency.csv TopDownDynamicProgramming c artificial/01_knap_un_75_150_22.csv 504 100 - 
python3 ./01Knapsack.py artificial/01_knap_un_75_150_22_efficiency.csv BottomUpDynamicProgramming c artificial/01_knap_un_75_150_22.csv 504 100 - 
python3 ./01Knapsack.py artificial/01_knap_un_75_150_22_efficiency.csv FullyPolyNomial c artificial/01_knap_un_75_150_22.csv 504 100 - 
python3 ./01Knapsack.py artificial/01_knap_un_75_150_22_efficiency.csv GeneticProgramming c artificial/01_knap_un_75_150_22.csv 504 100 - --sp1 10
python3 ./01Knapsack.py artificial/01_knap_un_75_150_22_efficiency.csv AntColony c artificial/01_knap_un_75_150_22.csv 504 100 50 --sp1 504 --sp2 0.75 
python3 ./01Knapsack.py artificial/01_knap_un_75_150_22_efficiency.csv Randomized c artificial/01_knap_un_75_150_22.csv 504 100 100 --sp1 0.2

# Artificial data
# 01_knap_un_75_150_22.csv
python3 ./01Knapsack.py artificial/01_knap_un_75_150_22_efficiency.csv BranchAndBound c artificial/01_knap_un_75_150_22.csv 504 1000 - 
python3 ./01Knapsack.py artificial/01_knap_un_75_150_22_efficiency.csv RatioSortGreedy c artificial/01_knap_un_75_150_22.csv 504 1000 - 
python3 ./01Knapsack.py artificial/01_knap_un_75_150_22_efficiency.csv ValueSortGreedy c artificial/01_knap_un_75_150_22.csv 504 1000 - 
python3 ./01Knapsack.py artificial/01_knap_un_75_150_22_efficiency.csv WeightSortGreedy c artificial/01_knap_un_75_150_22.csv 504 1000 - 
python3 ./01Knapsack.py artificial/01_knap_un_75_150_22_efficiency.csv RatiosortAndConvergeGreedy c artificial/01_knap_un_75_150_22.csv 504 1000 - 
python3 ./01Knapsack.py artificial/01_knap_un_75_150_22_efficiency.csv TopDownDynamicProgramming c artificial/01_knap_un_75_150_22.csv 504 1000 - 
python3 ./01Knapsack.py artificial/01_knap_un_75_150_22_efficiency.csv BottomUpDynamicProgramming c artificial/01_knap_un_75_150_22.csv 504 1000 - 
python3 ./01Knapsack.py artificial/01_knap_un_75_150_22_efficiency.csv FullyPolyNomial c artificial/01_knap_un_75_150_22.csv 504 1000 - 
python3 ./01Knapsack.py artificial/01_knap_un_75_150_22_efficiency.csv GeneticProgramming c artificial/01_knap_un_75_150_22.csv 504 1000 - --sp1 10
python3 ./01Knapsack.py artificial/01_knap_un_75_150_22_efficiency.csv AntColony c artificial/01_knap_un_75_150_22.csv 504 1000 50 --sp1 504 --sp2 0.75 
python3 ./01Knapsack.py artificial/01_knap_un_75_150_22_efficiency.csv Randomized c artificial/01_knap_un_75_150_22.csv 504 1000 100 --sp1 0.2

# 01_knap_un_75_150_22.csv
python3 ./01Knapsack.py artificial/01_knap_un_75_150_22_efficiency.csv BranchAndBound c artificial/01_knap_un_75_150_22.csv 504 10000 - 
python3 ./01Knapsack.py artificial/01_knap_un_75_150_22_efficiency.csv RatioSortGreedy c artificial/01_knap_un_75_150_22.csv 504 10000 - 
python3 ./01Knapsack.py artificial/01_knap_un_75_150_22_efficiency.csv ValueSortGreedy c artificial/01_knap_un_75_150_22.csv 504 10000 - 
python3 ./01Knapsack.py artificial/01_knap_un_75_150_22_efficiency.csv WeightSortGreedy c artificial/01_knap_un_75_150_22.csv 504 10000 - 
python3 ./01Knapsack.py artificial/01_knap_un_75_150_22_efficiency.csv RatiosortAndConvergeGreedy c artificial/01_knap_un_75_150_22.csv 504 10000 - 
python3 ./01Knapsack.py artificial/01_knap_un_75_150_22_efficiency.csv TopDownDynamicProgramming c artificial/01_knap_un_75_150_22.csv 504 10000 - 
python3 ./01Knapsack.py artificial/01_knap_un_75_150_22_efficiency.csv BottomUpDynamicProgramming c artificial/01_knap_un_75_150_22.csv 504 10000 - 
python3 ./01Knapsack.py artificial/01_knap_un_75_150_22_efficiency.csv FullyPolyNomial c artificial/01_knap_un_75_150_22.csv 504 10000 - 
python3 ./01Knapsack.py artificial/01_knap_un_75_150_22_efficiency.csv GeneticProgramming c artificial/01_knap_un_75_150_22.csv 504 10000 - --sp1 10
python3 ./01Knapsack.py artificial/01_knap_un_75_150_22_efficiency.csv AntColony c artificial/01_knap_un_75_150_22.csv 504 10000 50 --sp1 504 --sp2 0.75 
python3 ./01Knapsack.py artificial/01_knap_un_75_150_22_efficiency.csv Randomized c artificial/01_knap_un_75_150_22.csv 504 10000 100 --sp1 0.2

# 01_knap_wc_100_200_11.csv
python3 ./01Knapsack.py artificial/01_knap_wc_100_200_11_efficiency.csv BranchAndBound c artificial/01_knap_wc_100_200_11.csv 254 10 - 
python3 ./01Knapsack.py artificial/01_knap_wc_100_200_11_efficiency.csv RatioSortGreedy c artificial/01_knap_wc_100_200_11.csv 254 10 - 
python3 ./01Knapsack.py artificial/01_knap_wc_100_200_11_efficiency.csv ValueSortGreedy c artificial/01_knap_wc_100_200_11.csv 254 10 - 
python3 ./01Knapsack.py artificial/01_knap_wc_100_200_11_efficiency.csv WeightSortGreedy c artificial/01_knap_wc_100_200_11.csv 254 10 - 
python3 ./01Knapsack.py artificial/01_knap_wc_100_200_11_efficiency.csv RatiosortAndConvergeGreedy c artificial/01_knap_wc_100_200_11.csv 254 10 - 
python3 ./01Knapsack.py artificial/01_knap_wc_100_200_11_efficiency.csv TopDownDynamicProgramming c artificial/01_knap_wc_100_200_11.csv 254 10 - 
python3 ./01Knapsack.py artificial/01_knap_wc_100_200_11_efficiency.csv BottomUpDynamicProgramming c artificial/01_knap_wc_100_200_11.csv 254 10 - 
python3 ./01Knapsack.py artificial/01_knap_wc_100_200_11_efficiency.csv FullyPolyNomial c artificial/01_knap_wc_100_200_11.csv 254 10 - 
python3 ./01Knapsack.py artificial/01_knap_wc_100_200_11_efficiency.csv GeneticProgramming c artificial/01_knap_wc_100_200_11.csv 254 10 - --sp1 10
python3 ./01Knapsack.py artificial/01_knap_wc_100_200_11_efficiency.csv AntColony c artificial/01_knap_wc_100_200_11.csv 254 10 50 --sp1 254 --sp2 0.75 
python3 ./01Knapsack.py artificial/01_knap_wc_100_200_11_efficiency.csv Randomized c artificial/01_knap_wc_100_200_11.csv 254 10 100 --sp1 0.2

# Artificial data
# 01_knap_wc_100_200_11.csv
python3 ./01Knapsack.py artificial/01_knap_wc_100_200_11_efficiency.csv BranchAndBound c artificial/01_knap_wc_100_200_11.csv 254 100 - 
python3 ./01Knapsack.py artificial/01_knap_wc_100_200_11_efficiency.csv RatioSortGreedy c artificial/01_knap_wc_100_200_11.csv 254 100 - 
python3 ./01Knapsack.py artificial/01_knap_wc_100_200_11_efficiency.csv ValueSortGreedy c artificial/01_knap_wc_100_200_11.csv 254 100 - 
python3 ./01Knapsack.py artificial/01_knap_wc_100_200_11_efficiency.csv WeightSortGreedy c artificial/01_knap_wc_100_200_11.csv 254 100 - 
python3 ./01Knapsack.py artificial/01_knap_wc_100_200_11_efficiency.csv RatiosortAndConvergeGreedy c artificial/01_knap_wc_100_200_11.csv 254 100 - 
python3 ./01Knapsack.py artificial/01_knap_wc_100_200_11_efficiency.csv TopDownDynamicProgramming c artificial/01_knap_wc_100_200_11.csv 254 100 - 
python3 ./01Knapsack.py artificial/01_knap_wc_100_200_11_efficiency.csv BottomUpDynamicProgramming c artificial/01_knap_wc_100_200_11.csv 254 100 - 
python3 ./01Knapsack.py artificial/01_knap_wc_100_200_11_efficiency.csv FullyPolyNomial c artificial/01_knap_wc_100_200_11.csv 254 100 - 
python3 ./01Knapsack.py artificial/01_knap_wc_100_200_11_efficiency.csv GeneticProgramming c artificial/01_knap_wc_100_200_11.csv 254 100 - --sp1 10
python3 ./01Knapsack.py artificial/01_knap_wc_100_200_11_efficiency.csv AntColony c artificial/01_knap_wc_100_200_11.csv 254 100 50 --sp1 254 --sp2 0.75 
python3 ./01Knapsack.py artificial/01_knap_wc_100_200_11_efficiency.csv Randomized c artificial/01_knap_wc_100_200_11.csv 254 100 100 --sp1 0.2

# Artificial data
# 01_knap_wc_100_200_11.csv
python3 ./01Knapsack.py artificial/01_knap_wc_100_200_11_efficiency.csv BranchAndBound c artificial/01_knap_wc_100_200_11.csv 254 1000 - 
python3 ./01Knapsack.py artificial/01_knap_wc_100_200_11_efficiency.csv RatioSortGreedy c artificial/01_knap_wc_100_200_11.csv 254 1000 - 
python3 ./01Knapsack.py artificial/01_knap_wc_100_200_11_efficiency.csv ValueSortGreedy c artificial/01_knap_wc_100_200_11.csv 254 1000 - 
python3 ./01Knapsack.py artificial/01_knap_wc_100_200_11_efficiency.csv WeightSortGreedy c artificial/01_knap_wc_100_200_11.csv 254 1000 - 
python3 ./01Knapsack.py artificial/01_knap_wc_100_200_11_efficiency.csv RatiosortAndConvergeGreedy c artificial/01_knap_wc_100_200_11.csv 254 1000 - 
python3 ./01Knapsack.py artificial/01_knap_wc_100_200_11_efficiency.csv TopDownDynamicProgramming c artificial/01_knap_wc_100_200_11.csv 254 1000 - 
python3 ./01Knapsack.py artificial/01_knap_wc_100_200_11_efficiency.csv BottomUpDynamicProgramming c artificial/01_knap_wc_100_200_11.csv 254 1000 - 
python3 ./01Knapsack.py artificial/01_knap_wc_100_200_11_efficiency.csv FullyPolyNomial c artificial/01_knap_wc_100_200_11.csv 254 1000 - 
python3 ./01Knapsack.py artificial/01_knap_wc_100_200_11_efficiency.csv GeneticProgramming c artificial/01_knap_wc_100_200_11.csv 254 1000 - --sp1 10
python3 ./01Knapsack.py artificial/01_knap_wc_100_200_11_efficiency.csv AntColony c artificial/01_knap_wc_100_200_11.csv 254 1000 50 --sp1 254 --sp2 0.75 
python3 ./01Knapsack.py artificial/01_knap_wc_100_200_11_efficiency.csv Randomized c artificial/01_knap_wc_100_200_11.csv 254 1000 100 --sp1 0.2

# 01_knap_wc_100_200_11.csv
python3 ./01Knapsack.py artificial/01_knap_wc_100_200_11_efficiency.csv BranchAndBound c artificial/01_knap_wc_100_200_11.csv 254 10000 - 
python3 ./01Knapsack.py artificial/01_knap_wc_100_200_11_efficiency.csv RatioSortGreedy c artificial/01_knap_wc_100_200_11.csv 254 10000 - 
python3 ./01Knapsack.py artificial/01_knap_wc_100_200_11_efficiency.csv ValueSortGreedy c artificial/01_knap_wc_100_200_11.csv 254 10000 - 
python3 ./01Knapsack.py artificial/01_knap_wc_100_200_11_efficiency.csv WeightSortGreedy c artificial/01_knap_wc_100_200_11.csv 254 10000 - 
python3 ./01Knapsack.py artificial/01_knap_wc_100_200_11_efficiency.csv RatiosortAndConvergeGreedy c artificial/01_knap_wc_100_200_11.csv 254 10000 - 
python3 ./01Knapsack.py artificial/01_knap_wc_100_200_11_efficiency.csv TopDownDynamicProgramming c artificial/01_knap_wc_100_200_11.csv 254 10000 - 
python3 ./01Knapsack.py artificial/01_knap_wc_100_200_11_efficiency.csv BottomUpDynamicProgramming c artificial/01_knap_wc_100_200_11.csv 254 10000 - 
python3 ./01Knapsack.py artificial/01_knap_wc_100_200_11_efficiency.csv FullyPolyNomial c artificial/01_knap_wc_100_200_11.csv 254 10000 - 
python3 ./01Knapsack.py artificial/01_knap_wc_100_200_11_efficiency.csv GeneticProgramming c artificial/01_knap_wc_100_200_11.csv 254 10000 - --sp1 10
python3 ./01Knapsack.py artificial/01_knap_wc_100_200_11_efficiency.csv AntColony c artificial/01_knap_wc_100_200_11.csv 254 10000 50 --sp1 254 --sp2 0.75 
python3 ./01Knapsack.py artificial/01_knap_wc_100_200_11_efficiency.csv Randomized c artificial/01_knap_wc_100_200_11.csv 254 10000 100 --sp1 0.2

# 01_knap_wc_20_100_14.csv
python3 ./01Knapsack.py artificial/01_knap_wc_20_100_14_efficiency.csv BranchAndBound c artificial/01_knap_wc_20_100_14.csv 115 10 - 
python3 ./01Knapsack.py artificial/01_knap_wc_20_100_14_efficiency.csv RatioSortGreedy c artificial/01_knap_wc_20_100_14.csv 115 10 - 
python3 ./01Knapsack.py artificial/01_knap_wc_20_100_14_efficiency.csv ValueSortGreedy c artificial/01_knap_wc_20_100_14.csv 115 10 - 
python3 ./01Knapsack.py artificial/01_knap_wc_20_100_14_efficiency.csv WeightSortGreedy c artificial/01_knap_wc_20_100_14.csv 115 10 - 
python3 ./01Knapsack.py artificial/01_knap_wc_20_100_14_efficiency.csv RatiosortAndConvergeGreedy c artificial/01_knap_wc_20_100_14.csv 115 10 - 
python3 ./01Knapsack.py artificial/01_knap_wc_20_100_14_efficiency.csv TopDownDynamicProgramming c artificial/01_knap_wc_20_100_14.csv 115 10 - 
python3 ./01Knapsack.py artificial/01_knap_wc_20_100_14_efficiency.csv BottomUpDynamicProgramming c artificial/01_knap_wc_20_100_14.csv 115 10 - 
python3 ./01Knapsack.py artificial/01_knap_wc_20_100_14_efficiency.csv FullyPolyNomial c artificial/01_knap_wc_20_100_14.csv 115 10 - 
python3 ./01Knapsack.py artificial/01_knap_wc_20_100_14_efficiency.csv GeneticProgramming c artificial/01_knap_wc_20_100_14.csv 115 10 - --sp1 10
python3 ./01Knapsack.py artificial/01_knap_wc_20_100_14_efficiency.csv AntColony c artificial/01_knap_wc_20_100_14.csv 115 10 50 --sp1 115 --sp2 0.75 
python3 ./01Knapsack.py artificial/01_knap_wc_20_100_14_efficiency.csv Randomized c artificial/01_knap_wc_20_100_14.csv 115 10 100 --sp1 0.2

# Artificial data
# 01_knap_wc_20_100_14.csv
python3 ./01Knapsack.py artificial/01_knap_wc_20_100_14_efficiency.csv BranchAndBound c artificial/01_knap_wc_20_100_14.csv 115 100 - 
python3 ./01Knapsack.py artificial/01_knap_wc_20_100_14_efficiency.csv RatioSortGreedy c artificial/01_knap_wc_20_100_14.csv 115 100 - 
python3 ./01Knapsack.py artificial/01_knap_wc_20_100_14_efficiency.csv ValueSortGreedy c artificial/01_knap_wc_20_100_14.csv 115 100 - 
python3 ./01Knapsack.py artificial/01_knap_wc_20_100_14_efficiency.csv WeightSortGreedy c artificial/01_knap_wc_20_100_14.csv 115 100 - 
python3 ./01Knapsack.py artificial/01_knap_wc_20_100_14_efficiency.csv RatiosortAndConvergeGreedy c artificial/01_knap_wc_20_100_14.csv 115 100 - 
python3 ./01Knapsack.py artificial/01_knap_wc_20_100_14_efficiency.csv TopDownDynamicProgramming c artificial/01_knap_wc_20_100_14.csv 115 100 - 
python3 ./01Knapsack.py artificial/01_knap_wc_20_100_14_efficiency.csv BottomUpDynamicProgramming c artificial/01_knap_wc_20_100_14.csv 115 100 - 
python3 ./01Knapsack.py artificial/01_knap_wc_20_100_14_efficiency.csv FullyPolyNomial c artificial/01_knap_wc_20_100_14.csv 115 100 - 
python3 ./01Knapsack.py artificial/01_knap_wc_20_100_14_efficiency.csv GeneticProgramming c artificial/01_knap_wc_20_100_14.csv 115 100 - --sp1 10
python3 ./01Knapsack.py artificial/01_knap_wc_20_100_14_efficiency.csv AntColony c artificial/01_knap_wc_20_100_14.csv 115 100 50 --sp1 115 --sp2 0.75 
python3 ./01Knapsack.py artificial/01_knap_wc_20_100_14_efficiency.csv Randomized c artificial/01_knap_wc_20_100_14.csv 115 100 100 --sp1 0.2

# Artificial data
# 01_knap_wc_20_100_14.csv
python3 ./01Knapsack.py artificial/01_knap_wc_20_100_14_efficiency.csv BranchAndBound c artificial/01_knap_wc_20_100_14.csv 115 1000 - 
python3 ./01Knapsack.py artificial/01_knap_wc_20_100_14_efficiency.csv RatioSortGreedy c artificial/01_knap_wc_20_100_14.csv 115 1000 - 
python3 ./01Knapsack.py artificial/01_knap_wc_20_100_14_efficiency.csv ValueSortGreedy c artificial/01_knap_wc_20_100_14.csv 115 1000 - 
python3 ./01Knapsack.py artificial/01_knap_wc_20_100_14_efficiency.csv WeightSortGreedy c artificial/01_knap_wc_20_100_14.csv 115 1000 - 
python3 ./01Knapsack.py artificial/01_knap_wc_20_100_14_efficiency.csv RatiosortAndConvergeGreedy c artificial/01_knap_wc_20_100_14.csv 115 1000 - 
python3 ./01Knapsack.py artificial/01_knap_wc_20_100_14_efficiency.csv TopDownDynamicProgramming c artificial/01_knap_wc_20_100_14.csv 115 1000 - 
python3 ./01Knapsack.py artificial/01_knap_wc_20_100_14_efficiency.csv BottomUpDynamicProgramming c artificial/01_knap_wc_20_100_14.csv 115 1000 - 
python3 ./01Knapsack.py artificial/01_knap_wc_20_100_14_efficiency.csv FullyPolyNomial c artificial/01_knap_wc_20_100_14.csv 115 1000 - 
python3 ./01Knapsack.py artificial/01_knap_wc_20_100_14_efficiency.csv GeneticProgramming c artificial/01_knap_wc_20_100_14.csv 115 1000 - --sp1 10
python3 ./01Knapsack.py artificial/01_knap_wc_20_100_14_efficiency.csv AntColony c artificial/01_knap_wc_20_100_14.csv 115 1000 50 --sp1 115 --sp2 0.75 
python3 ./01Knapsack.py artificial/01_knap_wc_20_100_14_efficiency.csv Randomized c artificial/01_knap_wc_20_100_14.csv 115 1000 100 --sp1 0.2

# 01_knap_wc_20_100_14.csv
python3 ./01Knapsack.py artificial/01_knap_wc_20_100_14_efficiency.csv BranchAndBound c artificial/01_knap_wc_20_100_14.csv 115 10000 - 
python3 ./01Knapsack.py artificial/01_knap_wc_20_100_14_efficiency.csv RatioSortGreedy c artificial/01_knap_wc_20_100_14.csv 115 10000 - 
python3 ./01Knapsack.py artificial/01_knap_wc_20_100_14_efficiency.csv ValueSortGreedy c artificial/01_knap_wc_20_100_14.csv 115 10000 - 
python3 ./01Knapsack.py artificial/01_knap_wc_20_100_14_efficiency.csv WeightSortGreedy c artificial/01_knap_wc_20_100_14.csv 115 10000 - 
python3 ./01Knapsack.py artificial/01_knap_wc_20_100_14_efficiency.csv RatiosortAndConvergeGreedy c artificial/01_knap_wc_20_100_14.csv 115 10000 - 
python3 ./01Knapsack.py artificial/01_knap_wc_20_100_14_efficiency.csv TopDownDynamicProgramming c artificial/01_knap_wc_20_100_14.csv 115 10000 - 
python3 ./01Knapsack.py artificial/01_knap_wc_20_100_14_efficiency.csv BottomUpDynamicProgramming c artificial/01_knap_wc_20_100_14.csv 115 10000 - 
python3 ./01Knapsack.py artificial/01_knap_wc_20_100_14_efficiency.csv FullyPolyNomial c artificial/01_knap_wc_20_100_14.csv 115 10000 - 
python3 ./01Knapsack.py artificial/01_knap_wc_20_100_14_efficiency.csv GeneticProgramming c artificial/01_knap_wc_20_100_14.csv 115 10000 - --sp1 10
python3 ./01Knapsack.py artificial/01_knap_wc_20_100_14_efficiency.csv AntColony c artificial/01_knap_wc_20_100_14.csv 115 10000 50 --sp1 115 --sp2 0.75 
python3 ./01Knapsack.py artificial/01_knap_wc_20_100_14_efficiency.csv Randomized c artificial/01_knap_wc_20_100_14.csv 115 10000 100 --sp1 0.2

# 01_knap_wc_50_100_17.csv
python3 ./01Knapsack.py artificial/01_knap_wc_50_100_17_efficiency.csv BranchAndBound c artificial/01_knap_wc_50_100_17.csv 121 10 - 
python3 ./01Knapsack.py artificial/01_knap_wc_50_100_17_efficiency.csv RatioSortGreedy c artificial/01_knap_wc_50_100_17.csv 121 10 - 
python3 ./01Knapsack.py artificial/01_knap_wc_50_100_17_efficiency.csv ValueSortGreedy c artificial/01_knap_wc_50_100_17.csv 121 10 - 
python3 ./01Knapsack.py artificial/01_knap_wc_50_100_17_efficiency.csv WeightSortGreedy c artificial/01_knap_wc_50_100_17.csv 121 10 - 
python3 ./01Knapsack.py artificial/01_knap_wc_50_100_17_efficiency.csv RatiosortAndConvergeGreedy c artificial/01_knap_wc_50_100_17.csv 121 10 - 
python3 ./01Knapsack.py artificial/01_knap_wc_50_100_17_efficiency.csv TopDownDynamicProgramming c artificial/01_knap_wc_50_100_17.csv 121 10 - 
python3 ./01Knapsack.py artificial/01_knap_wc_50_100_17_efficiency.csv BottomUpDynamicProgramming c artificial/01_knap_wc_50_100_17.csv 121 10 - 
python3 ./01Knapsack.py artificial/01_knap_wc_50_100_17_efficiency.csv FullyPolyNomial c artificial/01_knap_wc_50_100_17.csv 121 10 - 
python3 ./01Knapsack.py artificial/01_knap_wc_50_100_17_efficiency.csv GeneticProgramming c artificial/01_knap_wc_50_100_17.csv 121 10 - --sp1 10
python3 ./01Knapsack.py artificial/01_knap_wc_50_100_17_efficiency.csv AntColony c artificial/01_knap_wc_50_100_17.csv 121 10 50 --sp1 121 --sp2 0.75 
python3 ./01Knapsack.py artificial/01_knap_wc_50_100_17_efficiency.csv Randomized c artificial/01_knap_wc_50_100_17.csv 121 10 100 --sp1 0.2

# Artificial data
# 01_knap_wc_50_100_17.csv
python3 ./01Knapsack.py artificial/01_knap_wc_50_100_17_efficiency.csv BranchAndBound c artificial/01_knap_wc_50_100_17.csv 121 100 - 
python3 ./01Knapsack.py artificial/01_knap_wc_50_100_17_efficiency.csv RatioSortGreedy c artificial/01_knap_wc_50_100_17.csv 121 100 - 
python3 ./01Knapsack.py artificial/01_knap_wc_50_100_17_efficiency.csv ValueSortGreedy c artificial/01_knap_wc_50_100_17.csv 121 100 - 
python3 ./01Knapsack.py artificial/01_knap_wc_50_100_17_efficiency.csv WeightSortGreedy c artificial/01_knap_wc_50_100_17.csv 121 100 - 
python3 ./01Knapsack.py artificial/01_knap_wc_50_100_17_efficiency.csv RatiosortAndConvergeGreedy c artificial/01_knap_wc_50_100_17.csv 121 100 - 
python3 ./01Knapsack.py artificial/01_knap_wc_50_100_17_efficiency.csv TopDownDynamicProgramming c artificial/01_knap_wc_50_100_17.csv 121 100 - 
python3 ./01Knapsack.py artificial/01_knap_wc_50_100_17_efficiency.csv BottomUpDynamicProgramming c artificial/01_knap_wc_50_100_17.csv 121 100 - 
python3 ./01Knapsack.py artificial/01_knap_wc_50_100_17_efficiency.csv FullyPolyNomial c artificial/01_knap_wc_50_100_17.csv 121 100 - 
python3 ./01Knapsack.py artificial/01_knap_wc_50_100_17_efficiency.csv GeneticProgramming c artificial/01_knap_wc_50_100_17.csv 121 100 - --sp1 10
python3 ./01Knapsack.py artificial/01_knap_wc_50_100_17_efficiency.csv AntColony c artificial/01_knap_wc_50_100_17.csv 121 100 50 --sp1 121 --sp2 0.75 
python3 ./01Knapsack.py artificial/01_knap_wc_50_100_17_efficiency.csv Randomized c artificial/01_knap_wc_50_100_17.csv 121 100 100 --sp1 0.2

# Artificial data
# 01_knap_wc_50_100_17.csv
python3 ./01Knapsack.py artificial/01_knap_wc_50_100_17_efficiency.csv BranchAndBound c artificial/01_knap_wc_50_100_17.csv 121 1000 - 
python3 ./01Knapsack.py artificial/01_knap_wc_50_100_17_efficiency.csv RatioSortGreedy c artificial/01_knap_wc_50_100_17.csv 121 1000 - 
python3 ./01Knapsack.py artificial/01_knap_wc_50_100_17_efficiency.csv ValueSortGreedy c artificial/01_knap_wc_50_100_17.csv 121 1000 - 
python3 ./01Knapsack.py artificial/01_knap_wc_50_100_17_efficiency.csv WeightSortGreedy c artificial/01_knap_wc_50_100_17.csv 121 1000 - 
python3 ./01Knapsack.py artificial/01_knap_wc_50_100_17_efficiency.csv RatiosortAndConvergeGreedy c artificial/01_knap_wc_50_100_17.csv 121 1000 - 
python3 ./01Knapsack.py artificial/01_knap_wc_50_100_17_efficiency.csv TopDownDynamicProgramming c artificial/01_knap_wc_50_100_17.csv 121 1000 - 
python3 ./01Knapsack.py artificial/01_knap_wc_50_100_17_efficiency.csv BottomUpDynamicProgramming c artificial/01_knap_wc_50_100_17.csv 121 1000 - 
python3 ./01Knapsack.py artificial/01_knap_wc_50_100_17_efficiency.csv FullyPolyNomial c artificial/01_knap_wc_50_100_17.csv 121 1000 - 
python3 ./01Knapsack.py artificial/01_knap_wc_50_100_17_efficiency.csv GeneticProgramming c artificial/01_knap_wc_50_100_17.csv 121 1000 - --sp1 10
python3 ./01Knapsack.py artificial/01_knap_wc_50_100_17_efficiency.csv AntColony c artificial/01_knap_wc_50_100_17.csv 121 1000 50 --sp1 121 --sp2 0.75 
python3 ./01Knapsack.py artificial/01_knap_wc_50_100_17_efficiency.csv Randomized c artificial/01_knap_wc_50_100_17.csv 121 1000 100 --sp1 0.2

# 01_knap_wc_50_100_17.csv
python3 ./01Knapsack.py artificial/01_knap_wc_50_100_17_efficiency.csv BranchAndBound c artificial/01_knap_wc_50_100_17.csv 121 10000 - 
python3 ./01Knapsack.py artificial/01_knap_wc_50_100_17_efficiency.csv RatioSortGreedy c artificial/01_knap_wc_50_100_17.csv 121 10000 - 
python3 ./01Knapsack.py artificial/01_knap_wc_50_100_17_efficiency.csv ValueSortGreedy c artificial/01_knap_wc_50_100_17.csv 121 10000 - 
python3 ./01Knapsack.py artificial/01_knap_wc_50_100_17_efficiency.csv WeightSortGreedy c artificial/01_knap_wc_50_100_17.csv 121 10000 - 
python3 ./01Knapsack.py artificial/01_knap_wc_50_100_17_efficiency.csv RatiosortAndConvergeGreedy c artificial/01_knap_wc_50_100_17.csv 121 10000 - 
python3 ./01Knapsack.py artificial/01_knap_wc_50_100_17_efficiency.csv TopDownDynamicProgramming c artificial/01_knap_wc_50_100_17.csv 121 10000 - 
python3 ./01Knapsack.py artificial/01_knap_wc_50_100_17_efficiency.csv BottomUpDynamicProgramming c artificial/01_knap_wc_50_100_17.csv 121 10000 - 
python3 ./01Knapsack.py artificial/01_knap_wc_50_100_17_efficiency.csv FullyPolyNomial c artificial/01_knap_wc_50_100_17.csv 121 10000 - 
python3 ./01Knapsack.py artificial/01_knap_wc_50_100_17_efficiency.csv GeneticProgramming c artificial/01_knap_wc_50_100_17.csv 121 10000 - --sp1 10
python3 ./01Knapsack.py artificial/01_knap_wc_50_100_17_efficiency.csv AntColony c artificial/01_knap_wc_50_100_17.csv 121 10000 50 --sp1 121 --sp2 0.75 
python3 ./01Knapsack.py artificial/01_knap_wc_50_100_17_efficiency.csv Randomized c artificial/01_knap_wc_50_100_17.csv 121 10000 100 --sp1 0.2

# 01_knap_wc_75_150_23.csv
python3 ./01Knapsack.py artificial/01_knap_wc_75_150_23_efficiency.csv BranchAndBound c artificial/01_knap_wc_75_150_23.csv 185 10 - 
python3 ./01Knapsack.py artificial/01_knap_wc_75_150_23_efficiency.csv RatioSortGreedy c artificial/01_knap_wc_75_150_23.csv 185 10 - 
python3 ./01Knapsack.py artificial/01_knap_wc_75_150_23_efficiency.csv ValueSortGreedy c artificial/01_knap_wc_75_150_23.csv 185 10 - 
python3 ./01Knapsack.py artificial/01_knap_wc_75_150_23_efficiency.csv WeightSortGreedy c artificial/01_knap_wc_75_150_23.csv 185 10 - 
python3 ./01Knapsack.py artificial/01_knap_wc_75_150_23_efficiency.csv RatiosortAndConvergeGreedy c artificial/01_knap_wc_75_150_23.csv 185 10 - 
python3 ./01Knapsack.py artificial/01_knap_wc_75_150_23_efficiency.csv TopDownDynamicProgramming c artificial/01_knap_wc_75_150_23.csv 185 10 - 
python3 ./01Knapsack.py artificial/01_knap_wc_75_150_23_efficiency.csv BottomUpDynamicProgramming c artificial/01_knap_wc_75_150_23.csv 185 10 - 
python3 ./01Knapsack.py artificial/01_knap_wc_75_150_23_efficiency.csv FullyPolyNomial c artificial/01_knap_wc_75_150_23.csv 185 10 - 
python3 ./01Knapsack.py artificial/01_knap_wc_75_150_23_efficiency.csv GeneticProgramming c artificial/01_knap_wc_75_150_23.csv 185 10 - --sp1 10
python3 ./01Knapsack.py artificial/01_knap_wc_75_150_23_efficiency.csv AntColony c artificial/01_knap_wc_75_150_23.csv 185 10 50 --sp1 185 --sp2 0.75 
python3 ./01Knapsack.py artificial/01_knap_wc_75_150_23_efficiency.csv Randomized c artificial/01_knap_wc_75_150_23.csv 185 10 100 --sp1 0.2

# Artificial data
# 01_knap_wc_75_150_23.csv
python3 ./01Knapsack.py artificial/01_knap_wc_75_150_23_efficiency.csv BranchAndBound c artificial/01_knap_wc_75_150_23.csv 185 100 - 
python3 ./01Knapsack.py artificial/01_knap_wc_75_150_23_efficiency.csv RatioSortGreedy c artificial/01_knap_wc_75_150_23.csv 185 100 - 
python3 ./01Knapsack.py artificial/01_knap_wc_75_150_23_efficiency.csv ValueSortGreedy c artificial/01_knap_wc_75_150_23.csv 185 100 - 
python3 ./01Knapsack.py artificial/01_knap_wc_75_150_23_efficiency.csv WeightSortGreedy c artificial/01_knap_wc_75_150_23.csv 185 100 - 
python3 ./01Knapsack.py artificial/01_knap_wc_75_150_23_efficiency.csv RatiosortAndConvergeGreedy c artificial/01_knap_wc_75_150_23.csv 185 100 - 
python3 ./01Knapsack.py artificial/01_knap_wc_75_150_23_efficiency.csv TopDownDynamicProgramming c artificial/01_knap_wc_75_150_23.csv 185 100 - 
python3 ./01Knapsack.py artificial/01_knap_wc_75_150_23_efficiency.csv BottomUpDynamicProgramming c artificial/01_knap_wc_75_150_23.csv 185 100 - 
python3 ./01Knapsack.py artificial/01_knap_wc_75_150_23_efficiency.csv FullyPolyNomial c artificial/01_knap_wc_75_150_23.csv 185 100 - 
python3 ./01Knapsack.py artificial/01_knap_wc_75_150_23_efficiency.csv GeneticProgramming c artificial/01_knap_wc_75_150_23.csv 185 100 - --sp1 10
python3 ./01Knapsack.py artificial/01_knap_wc_75_150_23_efficiency.csv AntColony c artificial/01_knap_wc_75_150_23.csv 185 100 50 --sp1 185 --sp2 0.75 
python3 ./01Knapsack.py artificial/01_knap_wc_75_150_23_efficiency.csv Randomized c artificial/01_knap_wc_75_150_23.csv 185 100 100 --sp1 0.2

# Artificial data
# 01_knap_wc_75_150_23.csv
python3 ./01Knapsack.py artificial/01_knap_wc_75_150_23_efficiency.csv BranchAndBound c artificial/01_knap_wc_75_150_23.csv 185 1000 - 
python3 ./01Knapsack.py artificial/01_knap_wc_75_150_23_efficiency.csv RatioSortGreedy c artificial/01_knap_wc_75_150_23.csv 185 1000 - 
python3 ./01Knapsack.py artificial/01_knap_wc_75_150_23_efficiency.csv ValueSortGreedy c artificial/01_knap_wc_75_150_23.csv 185 1000 - 
python3 ./01Knapsack.py artificial/01_knap_wc_75_150_23_efficiency.csv WeightSortGreedy c artificial/01_knap_wc_75_150_23.csv 185 1000 - 
python3 ./01Knapsack.py artificial/01_knap_wc_75_150_23_efficiency.csv RatiosortAndConvergeGreedy c artificial/01_knap_wc_75_150_23.csv 185 1000 - 
python3 ./01Knapsack.py artificial/01_knap_wc_75_150_23_efficiency.csv TopDownDynamicProgramming c artificial/01_knap_wc_75_150_23.csv 185 1000 - 
python3 ./01Knapsack.py artificial/01_knap_wc_75_150_23_efficiency.csv BottomUpDynamicProgramming c artificial/01_knap_wc_75_150_23.csv 185 1000 - 
python3 ./01Knapsack.py artificial/01_knap_wc_75_150_23_efficiency.csv FullyPolyNomial c artificial/01_knap_wc_75_150_23.csv 185 1000 - 
python3 ./01Knapsack.py artificial/01_knap_wc_75_150_23_efficiency.csv GeneticProgramming c artificial/01_knap_wc_75_150_23.csv 185 1000 - --sp1 10
python3 ./01Knapsack.py artificial/01_knap_wc_75_150_23_efficiency.csv AntColony c artificial/01_knap_wc_75_150_23.csv 185 1000 50 --sp1 185 --sp2 0.75 
python3 ./01Knapsack.py artificial/01_knap_wc_75_150_23_efficiency.csv Randomized c artificial/01_knap_wc_75_150_23.csv 185 1000 100 --sp1 0.2

# 01_knap_wc_75_150_23.csv
python3 ./01Knapsack.py artificial/01_knap_wc_75_150_23_efficiency.csv BranchAndBound c artificial/01_knap_wc_75_150_23.csv 185 10000 - 
python3 ./01Knapsack.py artificial/01_knap_wc_75_150_23_efficiency.csv RatioSortGreedy c artificial/01_knap_wc_75_150_23.csv 185 10000 - 
python3 ./01Knapsack.py artificial/01_knap_wc_75_150_23_efficiency.csv ValueSortGreedy c artificial/01_knap_wc_75_150_23.csv 185 10000 - 
python3 ./01Knapsack.py artificial/01_knap_wc_75_150_23_efficiency.csv WeightSortGreedy c artificial/01_knap_wc_75_150_23.csv 185 10000 - 
python3 ./01Knapsack.py artificial/01_knap_wc_75_150_23_efficiency.csv RatiosortAndConvergeGreedy c artificial/01_knap_wc_75_150_23.csv 185 10000 - 
python3 ./01Knapsack.py artificial/01_knap_wc_75_150_23_efficiency.csv TopDownDynamicProgramming c artificial/01_knap_wc_75_150_23.csv 185 10000 - 
python3 ./01Knapsack.py artificial/01_knap_wc_75_150_23_efficiency.csv BottomUpDynamicProgramming c artificial/01_knap_wc_75_150_23.csv 185 10000 - 
python3 ./01Knapsack.py artificial/01_knap_wc_75_150_23_efficiency.csv FullyPolyNomial c artificial/01_knap_wc_75_150_23.csv 185 10000 - 
python3 ./01Knapsack.py artificial/01_knap_wc_75_150_23_efficiency.csv GeneticProgramming c artificial/01_knap_wc_75_150_23.csv 185 10000 - --sp1 10
python3 ./01Knapsack.py artificial/01_knap_wc_75_150_23_efficiency.csv AntColony c artificial/01_knap_wc_75_150_23.csv 185 10000 50 --sp1 185 --sp2 0.75 
python3 ./01Knapsack.py artificial/01_knap_wc_75_150_23_efficiency.csv Randomized c artificial/01_knap_wc_75_150_23.csv 185 10000 100 --sp1 0.2
