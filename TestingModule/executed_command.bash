#!/bin/bash
# low_dimensional/f1_l-d_kp_10_269
python3 ./01Knapsack.py running_time.csv BruteForce t low-dimensional/f1_l-d_kp_10_269 295 - - 
python3 ./01Knapsack.py running_time.csv BranchAndBound t low-dimensional/f1_l-d_kp_10_269 295 - - 
python3 ./01Knapsack.py running_time.csv RatioSortGreedy t low-dimensional/f1_l-d_kp_10_269 295 - - 
python3 ./01Knapsack.py running_time.csv ValueSortGreedy t low-dimensional/f1_l-d_kp_10_269 295 - - 
python3 ./01Knapsack.py running_time.csv WeightSortGreedy t low-dimensional/f1_l-d_kp_10_269 295 - - 
python3 ./01Knapsack.py running_time.csv RatiosortAndConvergeGreedy t low-dimensional/f1_l-d_kp_10_269 295 - - 
python3 ./01Knapsack.py running_time.csv TopDownDynamicProgramming t low-dimensional/f1_l-d_kp_10_269 295 - - 
python3 ./01Knapsack.py running_time.csv BottomUpDynamicProgramming t low-dimensional/f1_l-d_kp_10_269 295 - - 
python3 ./01Knapsack.py running_time.csv FullyPolyNomial t low-dimensional/f1_l-d_kp_10_269 295 - - 
python3 ./01Knapsack.py running_time.csv GeneticProgramming t low-dimensional/f1_l-d_kp_10_269 295 - - --sp1 50
python3 ./01Knapsack.py running_time.csv AntColony t low-dimensional/f1_l-d_kp_10_269 295 - 50 --sp1 50 --sp2 0.5 
python3 ./01Knapsack.py running_time.csv Randomized t low-dimensional/f1_l-d_kp_10_269 295 - 50 --sp1 0.1 

# we changed the number of individuals in genectic algorithm: 25, 75, 100, 200
# we changed the number of of iterations in ant colony: 25, 75, 100, 200
# we changed the number of iterations in randomized: 25, 75, 100, 200

python3 ./01Knapsack.py running_time.csv GeneticProgramming t low-dimensional/f1_l-d_kp_10_269 295 - - --sp1 25
python3 ./01Knapsack.py running_time.csv AntColony t low-dimensional/f1_l-d_kp_10_269 295 - 25 --sp1 50 --sp2 0.5 
python3 ./01Knapsack.py running_time.csv Randomized t low-dimensional/f1_l-d_kp_10_269 295 - 25 
python3 ./01Knapsack.py running_time.csv GeneticProgramming t low-dimensional/f1_l-d_kp_10_269 295 - - --sp1 75
python3 ./01Knapsack.py running_time.csv AntColony t low-dimensional/f1_l-d_kp_10_269 295 - 75 --sp1 50 --sp2 0.5 
python3 ./01Knapsack.py running_time.csv Randomized t low-dimensional/f1_l-d_kp_10_269 295 - 75 
python3 ./01Knapsack.py running_time.csv GeneticProgramming t low-dimensional/f1_l-d_kp_10_269 295 - - --sp1 100
python3 ./01Knapsack.py running_time.csv AntColony t low-dimensional/f1_l-d_kp_10_269 295 - 100 --sp1 50 --sp2 0.5 
python3 ./01Knapsack.py running_time.csv Randomized t low-dimensional/f1_l-d_kp_10_269 295 - 100 
python3 ./01Knapsack.py running_time.csv GeneticProgramming t low-dimensional/f1_l-d_kp_10_269 295 - - --sp1 200
python3 ./01Knapsack.py running_time.csv AntColony t low-dimensional/f1_l-d_kp_10_269 295 - 200 --sp1 50 --sp2 0.5 
python3 ./01Knapsack.py running_time.csv Randomized t low-dimensional/f1_l-d_kp_10_269 295 - 200 

# Genetic Programming on 250,300,350,400,500
python3 ./01Knapsack.py running_time.csv GeneticProgramming t low-dimensional/f1_l-d_kp_10_269 295 - - --sp1 250
python3 ./01Knapsack.py running_time.csv GeneticProgramming t low-dimensional/f1_l-d_kp_10_269 295 - - --sp1 300
python3 ./01Knapsack.py running_time.csv GeneticProgramming t low-dimensional/f1_l-d_kp_10_269 295 - - --sp1 350
python3 ./01Knapsack.py running_time.csv GeneticProgramming t low-dimensional/f1_l-d_kp_10_269 295 - - --sp1 400
python3 ./01Knapsack.py running_time.csv GeneticProgramming t low-dimensional/f1_l-d_kp_10_269 295 - - --sp1 500


# Ant colony on 250,300,350,400,500
python3 ./01Knapsack.py running_time.csv AntColony t low-dimensional/f1_l-d_kp_10_269 295 - - --sp1 250
python3 ./01Knapsack.py running_time.csv AntColony t low-dimensional/f1_l-d_kp_10_269 295 - - --sp1 300
python3 ./01Knapsack.py running_time.csv AntColony t low-dimensional/f1_l-d_kp_10_269 295 - - --sp1 350
python3 ./01Knapsack.py running_time.csv AntColony t low-dimensional/f1_l-d_kp_10_269 295 - - --sp1 400
python3 ./01Knapsack.py running_time.csv AntColony t low-dimensional/f1_l-d_kp_10_269 295 - - --sp1 500


# Randomized on 250,300,350,400,500
python3 ./01Knapsack.py running_time.csv Randomized t low-dimensional/f1_l-d_kp_10_269 295 - - --sp1 250
python3 ./01Knapsack.py running_time.csv Randomized t low-dimensional/f1_l-d_kp_10_269 295 - - --sp1 300
python3 ./01Knapsack.py running_time.csv Randomized t low-dimensional/f1_l-d_kp_10_269 295 - - --sp1 350
python3 ./01Knapsack.py running_time.csv Randomized t low-dimensional/f1_l-d_kp_10_269 295 - - --sp1 400
python3 ./01Knapsack.py running_time.csv Randomized t low-dimensional/f1_l-d_kp_10_269 295 - - --sp1 500

# Ant colony on number of ants 25 ,50,75,100,200
python3 ./01Knapsack.py running_time.csv AntColony t low-dimensional/f1_l-d_kp_10_269 295 - 200 --sp1 25 --sp2 0.5 
python3 ./01Knapsack.py running_time.csv AntColony t low-dimensional/f1_l-d_kp_10_269 295 - 200 --sp1 50 --sp2 0.5 
python3 ./01Knapsack.py running_time.csv AntColony t low-dimensional/f1_l-d_kp_10_269 295 - 200 --sp1 75 --sp2 0.5
python3 ./01Knapsack.py running_time.csv AntColony t low-dimensional/f1_l-d_kp_10_269 295 - 200 --sp1 100 --sp2 0.5 
python3 ./01Knapsack.py running_time.csv AntColony t low-dimensional/f1_l-d_kp_10_269 295 - 200 --sp1 200 --sp2 0.5 

# Randomized on ratios 0.2,0.3,0.4,0.5
python3 ./01Knapsack.py running_time.csv Randomized t low-dimensional/f1_l-d_kp_10_269 295 - 200 --sp1 0.2
python3 ./01Knapsack.py running_time.csv Randomized t low-dimensional/f1_l-d_kp_10_269 295 - 200 --sp1 0.3 
python3 ./01Knapsack.py running_time.csv Randomized t low-dimensional/f1_l-d_kp_10_269 295 - 200 --sp1 0.4
python3 ./01Knapsack.py running_time.csv Randomized t low-dimensional/f1_l-d_kp_10_269 295 - 200 --sp1 0.5 


# low_dimensional/f2_l-d_kp_20_878
python3 ./01Knapsack.py f2_running_time.csv BruteForce t low-dimensional/f2_l-d_kp_20_878 1024 - - 
python3 ./01Knapsack.py f2_running_time.csv BranchAndBound t low-dimensional/f2_l-d_kp_20_878 1024 - - 
python3 ./01Knapsack.py f2_running_time.csv RatioSortGreedy t low-dimensional/f2_l-d_kp_20_878 1024 - - 
python3 ./01Knapsack.py f2_running_time.csv ValueSortGreedy t low-dimensional/f2_l-d_kp_20_878 1024 - - 
python3 ./01Knapsack.py f2_running_time.csv WeightSortGreedy t low-dimensional/f2_l-d_kp_20_878 1024 - - 
python3 ./01Knapsack.py f2_running_time.csv RatiosortAndConvergeGreedy t low-dimensional/f2_l-d_kp_20_878 1024 - - 
python3 ./01Knapsack.py f2_running_time.csv TopDownDynamicProgramming t low-dimensional/f2_l-d_kp_20_878 1024 - - 
python3 ./01Knapsack.py f2_running_time.csv BottomUpDynamicProgramming t low-dimensional/f2_l-d_kp_20_878 1024 - - 
python3 ./01Knapsack.py f2_running_time.csv FullyPolyNomial t low-dimensional/f2_l-d_kp_20_878 1024 - - 
python3 ./01Knapsack.py f2_running_time.csv GeneticProgramming t low-dimensional/f2_l-d_kp_20_878 1024 - - --sp1 50
python3 ./01Knapsack.py f2_running_time.csv AntColony t low-dimensional/f2_l-d_kp_20_878 1024 - 50 --sp1 50 --sp2 0.5 
python3 ./01Knapsack.py f2_running_time.csv Randomized t low-dimensional/f2_l-d_kp_20_878 1024 - 50 --sp1 0.1 

# we changed the number of individuals in genectic algorithm: 25, 75, 100, 200
# we changed the number of of iterations in ant colony: 25, 75, 100, 200
# we changed the number of iterations in randomized: 25, 75, 100, 200

python3 ./01Knapsack.py f2_running_time.csv GeneticProgramming t low-dimensional/f2_l-d_kp_20_878 1024 - - --sp1 25
python3 ./01Knapsack.py f2_running_time.csv AntColony t low-dimensional/f2_l-d_kp_20_878 1024 - 25 --sp1 50 --sp2 0.5 
python3 ./01Knapsack.py f2_running_time.csv Randomized t low-dimensional/f2_l-d_kp_20_878 1024 - 25 
python3 ./01Knapsack.py f2_running_time.csv GeneticProgramming t low-dimensional/f2_l-d_kp_20_878 1024 - - --sp1 75
python3 ./01Knapsack.py f2_running_time.csv AntColony t low-dimensional/f2_l-d_kp_20_878 1024 - 75 --sp1 50 --sp2 0.5 
python3 ./01Knapsack.py f2_running_time.csv Randomized t low-dimensional/f2_l-d_kp_20_878 1024 - 75 
python3 ./01Knapsack.py f2_running_time.csv GeneticProgramming t low-dimensional/f2_l-d_kp_20_878 1024 - - --sp1 100
python3 ./01Knapsack.py f2_running_time.csv AntColony t low-dimensional/f2_l-d_kp_20_878 1024 - 100 --sp1 50 --sp2 0.5 
python3 ./01Knapsack.py f2_running_time.csv Randomized t low-dimensional/f2_l-d_kp_20_878 1024 - 100 
python3 ./01Knapsack.py f2_running_time.csv GeneticProgramming t low-dimensional/f2_l-d_kp_20_878 1024 - - --sp1 200
python3 ./01Knapsack.py f2_running_time.csv AntColony t low-dimensional/f2_l-d_kp_20_878 1024 - 200 --sp1 50 --sp2 0.5 
python3 ./01Knapsack.py f2_running_time.csv Randomized t low-dimensional/f2_l-d_kp_20_878 1024 - 200 

# Genetic Programming on 250,300,350,400,500
python3 ./01Knapsack.py f2_running_time.csv GeneticProgramming t low-dimensional/f2_l-d_kp_20_878 1024 - - --sp1 250
python3 ./01Knapsack.py f2_running_time.csv GeneticProgramming t low-dimensional/f2_l-d_kp_20_878 1024 - - --sp1 300
python3 ./01Knapsack.py f2_running_time.csv GeneticProgramming t low-dimensional/f2_l-d_kp_20_878 1024 - - --sp1 350
python3 ./01Knapsack.py f2_running_time.csv GeneticProgramming t low-dimensional/f2_l-d_kp_20_878 1024 - - --sp1 400
python3 ./01Knapsack.py f2_running_time.csv GeneticProgramming t low-dimensional/f2_l-d_kp_20_878 1024 - - --sp1 500


# Ant colony on 250,300,350,400,500
python3 ./01Knapsack.py f2_running_time.csv AntColony t low-dimensional/f2_l-d_kp_20_878 1024 - - --sp1 250
python3 ./01Knapsack.py f2_running_time.csv AntColony t low-dimensional/f2_l-d_kp_20_878 1024 - - --sp1 300
