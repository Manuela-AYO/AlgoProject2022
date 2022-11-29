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
python3 ./01Knapsack.py f2_running_time.csv AntColony t low-dimensional/f2_l-d_kp_20_878 1024 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- 100 --sp1 50 --sp2 0.5 
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
python3 ./01Knapsack.py f2_running_time.csv AntColony t low-dimensional/f2_l-d_kp_20_878 1024 - - --sp1 350
python3 ./01Knapsack.py f2_running_time.csv AntColony t low-dimensional/f2_l-d_kp_20_878 1024 - - --sp1 400
python3 ./01Knapsack.py f2_running_time.csv AntColony t low-dimensional/f2_l-d_kp_20_878 1024 - - --sp1 500


# Ant colony on number of ants 25 ,50,75,100,200
python3 ./01Knapsack.py # Ant colony on number of ants 25 ,50,75,100,200
python3 ./01Knapsack.py f2_running_time.csv AntColony t low-dimensional/f2_l-d_kp_20_878 1024 - 200 --sp1 25 --sp2 0.5 
python3 ./01Knapsack.py f2_running_time.csv AntColony t low-dimensional/f2_l-d_kp_20_878 1024 - 200 --sp1 50 --sp2 0.5 
python3 ./01Knapsack.py f2_running_time.csv AntColony t low-dimensional/f2_l-d_kp_20_878 1024 - 200 --sp1 75 --sp2 0.5
python3 ./01Knapsack.py f2_running_time.csv AntColony t low-dimensional/f2_l-d_kp_20_878 1024 - 200 --sp1 100 --sp2 0.5 
python3 ./01Knapsack.py f2_running_time.csv AntColony t low-dimensional/f2_l-d_kp_20_878 1024 - 200 --sp1 200 --sp2 0.5 

# Randomized on ratios 0.2,0.3,0.4,0.5
python3 ./01Knapsack.py f2_running_time.csv Randomized t low-dimensional/f2_l-d_kp_20_878 1024 - 200 --sp1 0.2
python3 ./01Knapsack.py f2_running_time.csv Randomized t low-dimensional/f2_l-d_kp_20_878 1024 - 200 --sp1 0.3 
python3 ./01Knapsack.py f2_running_time.csv Randomized t low-dimensional/f2_l-d_kp_20_878 1024 - 200 --sp1 0.4
python3 ./01Knapsack.py f2_running_time.csv Randomized t low-dimensional/f2_l-d_kp_20_878 1024 - 200 --sp1 0.5  AntColony t low-dimensional/f2_l-d_kp_20_878 1024 - 200 --sp1 25 --sp2 0.5 
python3 ./01Knapsack.py f2_running_time.csv AntColony t low-dimensional/f2_l-d_kp_20_878 1024 - 200 --sp1 50 --sp2 0.5 
python3 ./01Knapsack.py f2_running_time.csv AntColony t low-dimensional/f2_l-d_kp_20_878 1024 - 200 --sp1 75 --sp2 0.5
python3 ./01Knapsack.py f2_running_time.csv AntColony t low-dimensional/f2_l-d_kp_20_878 1024 - 200 --sp1 100 --sp2 0.5 
python3 ./01Knapsack.py f2_running_time.csv AntColony t low-dimensional/f2_l-d_kp_20_878 1024 - 200 --sp1 200 --sp2 0.5 

# Randomized on ratios 0.2,0.3,0.4,0.5
python3 ./01Knapsack.py f2_running_time.csv Randomized t low-dimensional/f2_l-d_kp_20_878 1024 - 200 --sp1 0.2
python3 ./01Knapsack.py f2_running_time.csv Randomized t low-dimensional/f2_l-d_kp_20_878 1024 - 200 --sp1 0.3 
python3 ./01Knapsack.py f2_running_time.csv Randomized t low-dimensional/f2_l-d_kp_20_878 1024 - 200 --sp1 0.4
python3 ./01Knapsack.py f2_running_time.csv Randomized t low-dimensional/f2_l-d_kp_20_878 1024 - 200 --sp1 0.5 


#low-dimensional/f3_l-d_kp_4_20
python3 ./01Knapsack.py f3_running_time.csv BruteForce t low-dimensional/f3_l-d_kp_4_20 35 - - 
python3 ./01Knapsack.py f3_running_time.csv BranchAndBound t low-dimensional/f3_l-d_kp_4_20 35 - - 
python3 ./01Knapsack.py f3_running_time.csv RatioSortGreedy t low-dimensional/f3_l-d_kp_4_20 35 - - 
python3 ./01Knapsack.py f3_running_time.csv ValueSortGreedy t low-dimensional/f3_l-d_kp_4_20 35 - - 
python3 ./01Knapsack.py f3_running_time.csv WeightSortGreedy t low-dimensional/f3_l-d_kp_4_20 35 - - 
python3 ./01Knapsack.py f3_running_time.csv RatiosortAndConvergeGreedy t low-dimensional/f3_l-d_kp_4_20 35 - - 
python3 ./01Knapsack.py f3_running_time.csv TopDownDynamicProgramming t low-dimensional/f3_l-d_kp_4_20 35 - - 
python3 ./01Knapsack.py f3_running_time.csv BottomUpDynamicProgramming t low-dimensional/f3_l-d_kp_4_20 35 - - 
python3 ./01Knapsack.py f3_running_time.csv FullyPolyNomial t low-dimensional/f3_l-d_kp_4_20 35 - - 
python3 ./01Knapsack.py f3_running_time.csv GeneticProgramming t low-dimensional/f3_l-d_kp_4_20 35 - - --sp1 50
python3 ./01Knapsack.py f3_running_time.csv AntColony t low-dimensional/f3_l-d_kp_4_20 35 - 50 --sp1 50 --sp2 0.5 
python3 ./01Knapsack.py f3_running_time.csv Randomized t low-dimensional/f3_l-d_kp_4_20 35 - 50 --sp1 0.1 

# we changed the number of individuals in genectic algorithm: 25, 75, 100, 200
# we changed the number of of iterations in ant colony: 25, 75, 100, 200
# we changed the number of iterations in randomized: 25, 75, 100, 200

python3 ./01Knapsack.py f3_running_time.csv GeneticProgramming t low-dimensional/f3_l-d_kp_4_20 35 - - --sp1 25
python3 ./01Knapsack.py f3_running_time.csv AntColony t low-dimensional/f3_l-d_kp_4_20 35 - 25 --sp1 50 --sp2 0.5 
python3 ./01Knapsack.py f3_running_time.csv Randomized t low-dimensional/f3_l-d_kp_4_20 35 - 25 
python3 ./01Knapsack.py f3_running_time.csv GeneticProgramming t low-dimensional/f3_l-d_kp_4_20 35 - - --sp1 75
python3 ./01Knapsack.py f3_running_time.csv AntColony t low-dimensional/f3_l-d_kp_4_20 35 - 75 --sp1 50 --sp2 0.5 
python3 ./01Knapsack.py f3_running_time.csv Randomized t low-dimensional/f3_l-d_kp_4_20 35 - 75 
python3 ./01Knapsack.py f3_running_time.csv GeneticProgramming t low-dimensional/f3_l-d_kp_4_20 35 - - --sp1 100
python3 ./01Knapsack.py f3_running_time.csv AntColony t low-dimensional/f3_l-d_kp_4_20 35 - 100 --sp1 50 --sp2 0.5 
python3 ./01Knapsack.py f3_running_time.csv Randomized t low-dimensional/f3_l-d_kp_4_20 35 - 100 
python3 ./01Knapsack.py f3_running_time.csv GeneticProgramming t low-dimensional/f3_l-d_kp_4_20 35 - - --sp1 200
python3 ./01Knapsack.py f3_running_time.csv AntColony t low-dimensional/f3_l-d_kp_4_20 35 - 200 --sp1 50 --sp2 0.5 
python3 ./01Knapsack.py f3_running_time.csv Randomized t low-dimensional/f3_l-d_kp_4_20 35 - 200 

# Genetic Programming on 250,300,350,400,500
python3 ./01Knapsack.py f3_running_time.csv GeneticProgramming t low-dimensional/f3_l-d_kp_4_20 35 - - --sp1 250
python3 ./01Knapsack.py f3_running_time.csv GeneticProgramming t low-dimensional/f3_l-d_kp_4_20 35 - - --sp1 300
python3 ./01Knapsack.py f3_running_time.csv GeneticProgramming t low-dimensional/f3_l-d_kp_4_20 35 - - --sp1 350
python3 ./01Knapsack.py f3_running_time.csv GeneticProgramming t low-dimensional/f3_l-d_kp_4_20 35 - - --sp1 400
python3 ./01Knapsack.py f3_running_time.csv GeneticProgramming t low-dimensional/f3_l-d_kp_4_20 35 - - --sp1 500

# Ant colony on 250,300,350,400,500
python3 ./01Knapsack.py f3_running_time.csv AntColony t low-dimensional/f3_l-d_kp_4_20 35 - 250 --sp1 100
python3 ./01Knapsack.py f3_running_time.csv AntColony t low-dimensional/f3_l-d_kp_4_20 35 - 300 --sp1 100
python3 ./01Knapsack.py f3_running_time.csv AntColony t low-dimensional/f3_l-d_kp_4_20 35 - 350 --sp1 100
python3 ./01Knapsack.py f3_running_time.csv AntColony t low-dimensional/f3_l-d_kp_4_20 35 - 400 --sp1 100
python3 ./01Knapsack.py f3_running_time.csv AntColony t low-dimensional/f3_l-d_kp_4_20 35 - 500 --sp1 100

# Ant colony on number of ants 25,50,75,100,200
python3 ./01Knapsack.py f3_running_time.csv AntColony t low-dimensional/f3_l-d_kp_4_20 35 - 200 --sp1 25 --sp2 0.5 
python3 ./01Knapsack.py f3_running_time.csv AntColony t low-dimensional/f3_l-d_kp_4_20 35 - 200 --sp1 50 --sp2 0.5 
python3 ./01Knapsack.py f3_running_time.csv AntColony t low-dimensional/f3_l-d_kp_4_20 35 - 200 --sp1 75 --sp2 0.5
python3 ./01Knapsack.py f3_running_time.csv AntColony t low-dimensional/f3_l-d_kp_4_20 35 - 200 --sp1 100 --sp2 0.5 
python3 ./01Knapsack.py f3_running_time.csv AntColony t low-dimensional/f3_l-d_kp_4_20 35 - 200 --sp1 200 --sp2 0.5 

# Randomized on ratios 0.2,0.3,0.4,0.5
python3 ./01Knapsack.py f3_running_time.csv Randomized t low-dimensional/f3_l-d_kp_4_20 35 - 200 --sp1 0.2
python3 ./01Knapsack.py f3_running_time.csv Randomized t low-dimensional/f3_l-d_kp_4_20 35 - 200 --sp1 0.3 
python3 ./01Knapsack.py f3_running_time.csv Randomized t low-dimensional/f3_l-d_kp_4_20 35 - 200 --sp1 0.4
python3 ./01Knapsack.py f3_running_time.csv Randomized t low-dimensional/f3_l-d_kp_4_20 35 - 200 --sp1 0.5  


#low-dimensional/f4_l-d_kp_4_11
python3 ./01Knapsack.py f4_running_time.csv BruteForce t low-dimensional/f4_l-d_kp_4_11 23 - - 
python3 ./01Knapsack.py f4_running_time.csv BranchAndBound t low-dimensional/f4_l-d_kp_4_11 23 - - 
python3 ./01Knapsack.py f4_running_time.csv RatioSortGreedy t low-dimensional/f4_l-d_kp_4_11 23 - - 
python3 ./01Knapsack.py f4_running_time.csv ValueSortGreedy t low-dimensional/f4_l-d_kp_4_11 23 - - 
python3 ./01Knapsack.py f4_running_time.csv WeightSortGreedy t low-dimensional/f4_l-d_kp_4_11 23 - - 
python3 ./01Knapsack.py f4_running_time.csv RatiosortAndConvergeGreedy t low-dimensional/f4_l-d_kp_4_11 23 - - 
python3 ./01Knapsack.py f4_running_time.csv TopDownDynamicProgramming t low-dimensional/f4_l-d_kp_4_11 23 - - 
python3 ./01Knapsack.py f4_running_time.csv BottomUpDynamicProgramming t low-dimensional/f4_l-d_kp_4_11 23 - - 
python3 ./01Knapsack.py f4_running_time.csv FullyPolyNomial t low-dimensional/f4_l-d_kp_4_11 23 - - 
python3 ./01Knapsack.py f4_running_time.csv GeneticProgramming t low-dimensional/f4_l-d_kp_4_11 23 - - --sp1 50
python3 ./01Knapsack.py f4_running_time.csv AntColony t low-dimensional/f4_l-d_kp_4_11 23 - 50 --sp1 50 --sp2 0.5 
python3 ./01Knapsack.py f4_running_time.csv Randomized t low-dimensional/f4_l-d_kp_4_11 23 - 50 --sp1 0.1 

# we changed the number of individuals in genectic algorithm: 25, 75, 100, 200
# we changed the number of of iterations in ant colony: 25, 75, 100, 200
# we changed the number of iterations in randomized: 25, 75, 100, 200

python3 ./01Knapsack.py f4_running_time.csv GeneticProgramming t low-dimensional/f4_l-d_kp_4_11 23 - - --sp1 25
python3 ./01Knapsack.py f4_running_time.csv AntColony t low-dimensional/f4_l-d_kp_4_11 23 - 25 --sp1 50 --sp2 0.5 
python3 ./01Knapsack.py f4_running_time.csv Randomized t low-dimensional/f4_l-d_kp_4_11 23 - 25 
python3 ./01Knapsack.py f4_running_time.csv GeneticProgramming t low-dimensional/f4_l-d_kp_4_11 23 - - --sp1 75
python3 ./01Knapsack.py f4_running_time.csv AntColony t low-dimensional/f4_l-d_kp_4_11 23 - 75 --sp1 50 --sp2 0.5 
python3 ./01Knapsack.py f4_running_time.csv Randomized t low-dimensional/f4_l-d_kp_4_11 23 - 75 
python3 ./01Knapsack.py f4_running_time.csv GeneticProgramming t low-dimensional/f4_l-d_kp_4_11 23 - - --sp1 100
python3 ./01Knapsack.py f4_running_time.csv AntColony t low-dimensional/f4_l-d_kp_4_11 23 - 100 --sp1 50 --sp2 0.5 
python3 ./01Knapsack.py f4_running_time.csv Randomized t low-dimensional/f4_l-d_kp_4_11 23 - 100 
python3 ./01Knapsack.py f4_running_time.csv GeneticProgramming t low-dimensional/f4_l-d_kp_4_11 23 - - --sp1 200
python3 ./01Knapsack.py f4_running_time.csv AntColony t low-dimensional/f4_l-d_kp_4_11 23 - 200 --sp1 50 --sp2 0.5 
python3 ./01Knapsack.py f4_running_time.csv Randomized t low-dimensional/f4_l-d_kp_4_11 23 - 200 

# Genetic Programming on 250,300,350,400,500
python3 ./01Knapsack.py f4_running_time.csv GeneticProgramming t low-dimensional/f4_l-d_kp_4_11 23 - - --sp1 250
python3 ./01Knapsack.py f4_running_time.csv GeneticProgramming t low-dimensional/f4_l-d_kp_4_11 23 - - --sp1 300
python3 ./01Knapsack.py f4_running_time.csv GeneticProgramming t low-dimensional/f4_l-d_kp_4_11 23 - - --sp1 350
python3 ./01Knapsack.py f4_running_time.csv GeneticProgramming t low-dimensional/f4_l-d_kp_4_11 23 - - --sp1 400
python3 ./01Knapsack.py f4_running_time.csv GeneticProgramming t low-dimensional/f4_l-d_kp_4_11 23 - - --sp1 500

# Ant colony on 250,300,350,400,500
python3 ./01Knapsack.py f4_running_time.csv AntColony t low-dimensional/f4_l-d_kp_4_11 23 - 250 --sp1 100
python3 ./01Knapsack.py f4_running_time.csv AntColony t low-dimensional/f4_l-d_kp_4_11 23 - 300 --sp1 100
python3 ./01Knapsack.py f4_running_time.csv AntColony t low-dimensional/f4_l-d_kp_4_11 23 - 350 --sp1 100
python3 ./01Knapsack.py f4_running_time.csv AntColony t low-dimensional/f4_l-d_kp_4_11 23 - 400 --sp1 100
python3 ./01Knapsack.py f4_running_time.csv AntColony t low-dimensional/f4_l-d_kp_4_11 23 - 500 --sp1 100

# Ant colony on number of ants 25,50,75,100,200
python3 ./01Knapsack.py f4_running_time.csv AntColony t low-dimensional/f4_l-d_kp_4_11 23 - 200 --sp1 25 --sp2 0.5 
python3 ./01Knapsack.py f4_running_time.csv AntColony t low-dimensional/f4_l-d_kp_4_11 23 - 200 --sp1 50 --sp2 0.5 
python3 ./01Knapsack.py f4_running_time.csv AntColony t low-dimensional/f4_l-d_kp_4_11 23 - 200 --sp1 75 --sp2 0.5
python3 ./01Knapsack.py f4_running_time.csv AntColony t low-dimensional/f4_l-d_kp_4_11 23 - 200 --sp1 100 --sp2 0.5 
python3 ./01Knapsack.py f4_running_time.csv AntColony t low-dimensional/f4_l-d_kp_4_11 23 - 200 --sp1 200 --sp2 0.5 

# Randomized on ratios 0.2,0.3,0.4,0.5
python3 ./01Knapsack.py f4_running_time.csv Randomized t low-dimensional/f4_l-d_kp_4_11 23 - 200 --sp1 0.2
python3 ./01Knapsack.py f4_running_time.csv Randomized t low-dimensional/f4_l-d_kp_4_11 23 - 200 --sp1 0.3 
python3 ./01Knapsack.py f4_running_time.csv Randomized t low-dimensional/f4_l-d_kp_4_11 23 - 200 --sp1 0.4
python3 ./01Knapsack.py f4_running_time.csv Randomized t low-dimensional/f4_l-d_kp_4_11 23 - 200 --sp1 0.5  


#!/bin/bash

#low-dimensional/f6_l-d_kp_10_60
python3 ./01Knapsack.py f6_running_time.csv BruteForce t low-dimensional/f6_l-d_kp_10_60 52 - - 
python3 ./01Knapsack.py f6_running_time.csv BranchAndBound t low-dimensional/f6_l-d_kp_10_60 52 - - 
python3 ./01Knapsack.py f6_running_time.csv RatioSortGreedy t low-dimensional/f6_l-d_kp_10_60 52 - - 
python3 ./01Knapsack.py f6_running_time.csv ValueSortGreedy t low-dimensional/f6_l-d_kp_10_60 52 - - 
python3 ./01Knapsack.py f6_running_time.csv WeightSortGreedy t low-dimensional/f6_l-d_kp_10_60 52 - - 
python3 ./01Knapsack.py f6_running_time.csv RatiosortAndConvergeGreedy t low-dimensional/f6_l-d_kp_10_60 52 - - 
python3 ./01Knapsack.py f6_running_time.csv TopDownDynamicProgramming t low-dimensional/f6_l-d_kp_10_60 52 - - 
python3 ./01Knapsack.py f6_running_time.csv BottomUpDynamicProgramming t low-dimensional/f6_l-d_kp_10_60 52 - - 
python3 ./01Knapsack.py f6_running_time.csv FullyPolyNomial t low-dimensional/f6_l-d_kp_10_60 52 - - 
python3 ./01Knapsack.py f6_running_time.csv GeneticProgramming t low-dimensional/f6_l-d_kp_10_60 52 - - --sp1 50
python3 ./01Knapsack.py f6_running_time.csv AntColony t low-dimensional/f6_l-d_kp_10_60 52 - 50 --sp1 50 --sp2 0.5 
python3 ./01Knapsack.py f6_running_time.csv Randomized t low-dimensional/f6_l-d_kp_10_60 52 - 50 --sp1 0.1 

# we changed the number of individuals in genectic algorithm: 25, 75, 100, 200
# we changed the number of of iterations in ant colony: 25, 75, 100, 200
# we changed the number of iterations in randomized: 25, 75, 100, 200

python3 ./01Knapsack.py f6_running_time.csv GeneticProgramming t low-dimensional/f6_l-d_kp_10_60 52 - - --sp1 25
python3 ./01Knapsack.py f6_running_time.csv AntColony t low-dimensional/f6_l-d_kp_10_60 52 - 25 --sp1 50 --sp2 0.5 
python3 ./01Knapsack.py f6_running_time.csv Randomized t low-dimensional/f6_l-d_kp_10_60 52 - 25 
python3 ./01Knapsack.py f6_running_time.csv GeneticProgramming t low-dimensional/f6_l-d_kp_10_60 52 - - --sp1 75
python3 ./01Knapsack.py f6_running_time.csv AntColony t low-dimensional/f6_l-d_kp_10_60 52 - 75 --sp1 50 --sp2 0.5 
python3 ./01Knapsack.py f6_running_time.csv Randomized t low-dimensional/f6_l-d_kp_10_60 52 - 75 
python3 ./01Knapsack.py f6_running_time.csv GeneticProgramming t low-dimensional/f6_l-d_kp_10_60 52 - - --sp1 100
python3 ./01Knapsack.py f6_running_time.csv AntColony t low-dimensional/f6_l-d_kp_10_60 52 - 100 --sp1 50 --sp2 0.5 
python3 ./01Knapsack.py f6_running_time.csv Randomized t low-dimensional/f6_l-d_kp_10_60 52 - 100 
python3 ./01Knapsack.py f6_running_time.csv GeneticProgramming t low-dimensional/f6_l-d_kp_10_60 52 - - --sp1 200
python3 ./01Knapsack.py f6_running_time.csv AntColony t low-dimensional/f6_l-d_kp_10_60 52 - 200 --sp1 50 --sp2 0.5 
python3 ./01Knapsack.py f6_running_time.csv Randomized t low-dimensional/f6_l-d_kp_10_60 52 - 200 

# Genetic Programming on 250,300,350,400,500
python3 ./01Knapsack.py f6_running_time.csv GeneticProgramming t low-dimensional/f6_l-d_kp_10_60 52 - - --sp1 250
python3 ./01Knapsack.py f6_running_time.csv GeneticProgramming t low-dimensional/f6_l-d_kp_10_60 52 - - --sp1 300
python3 ./01Knapsack.py f6_running_time.csv GeneticProgramming t low-dimensional/f6_l-d_kp_10_60 52 - - --sp1 350
python3 ./01Knapsack.py f6_running_time.csv GeneticProgramming t low-dimensional/f6_l-d_kp_10_60 52 - - --sp1 400
python3 ./01Knapsack.py f6_running_time.csv GeneticProgramming t low-dimensional/f6_l-d_kp_10_60 52 - - --sp1 500

# Ant colony on 250,300,350,400,500
python3 ./01Knapsack.py f6_running_time.csv AntColony t low-dimensional/f6_l-d_kp_10_60 52 - 250 --sp1 100
python3 ./01Knapsack.py f6_running_time.csv AntColony t low-dimensional/f6_l-d_kp_10_60 52 - 300 --sp1 100
python3 ./01Knapsack.py f6_running_time.csv AntColony t low-dimensional/f6_l-d_kp_10_60 52 - 350 --sp1 100
python3 ./01Knapsack.py f6_running_time.csv AntColony t low-dimensional/f6_l-d_kp_10_60 52 - 400 --sp1 100
python3 ./01Knapsack.py f6_running_time.csv AntColony t low-dimensional/f6_l-d_kp_10_60 52 - 500 --sp1 100

# Ant colony on number of ants 25,50,75,100,200
python3 ./01Knapsack.py f6_running_time.csv AntColony t low-dimensional/f6_l-d_kp_10_60 52 - 200 --sp1 25 --sp2 0.5 
python3 ./01Knapsack.py f6_running_time.csv AntColony t low-dimensional/f6_l-d_kp_10_60 52 - 200 --sp1 50 --sp2 0.5 
python3 ./01Knapsack.py f6_running_time.csv AntColony t low-dimensional/f6_l-d_kp_10_60 52 - 200 --sp1 75 --sp2 0.5
python3 ./01Knapsack.py f6_running_time.csv AntColony t low-dimensional/f6_l-d_kp_10_60 52 - 200 --sp1 100 --sp2 0.5 
python3 ./01Knapsack.py f6_running_time.csv AntColony t low-dimensional/f6_l-d_kp_10_60 52 - 200 --sp1 200 --sp2 0.5 

# Randomized on ratios 0.2,0.3,0.4,0.5
python3 ./01Knapsack.py f6_running_time.csv Randomized t low-dimensional/f6_l-d_kp_10_60 52 - 200 --sp1 0.2
python3 ./01Knapsack.py f6_running_time.csv Randomized t low-dimensional/f6_l-d_kp_10_60 52 - 200 --sp1 0.3 
python3 ./01Knapsack.py f6_running_time.csv Randomized t low-dimensional/f6_l-d_kp_10_60 52 - 200 --sp1 0.4
python3 ./01Knapsack.py f6_running_time.csv Randomized t low-dimensional/f6_l-d_kp_10_60 52 - 200 --sp1 0.5  

#!/bin/bash

#low-dimensional/f7_l-d_kp_7_50
python3 ./01Knapsack.py f7_running_time.csv BruteForce t low-dimensional/f7_l-d_kp_7_50 107 - - 
python3 ./01Knapsack.py f7_running_time.csv BranchAndBound t low-dimensional/f7_l-d_kp_7_50 107 - - 
python3 ./01Knapsack.py f7_running_time.csv RatioSortGreedy t low-dimensional/f7_l-d_kp_7_50 107 - - 
python3 ./01Knapsack.py f7_running_time.csv ValueSortGreedy t low-dimensional/f7_l-d_kp_7_50 107 - - 
python3 ./01Knapsack.py f7_running_time.csv WeightSortGreedy t low-dimensional/f7_l-d_kp_7_50 107 - - 
python3 ./01Knapsack.py f7_running_time.csv RatiosortAndConvergeGreedy t low-dimensional/f7_l-d_kp_7_50 107 - - 
python3 ./01Knapsack.py f7_running_time.csv TopDownDynamicProgramming t low-dimensional/f7_l-d_kp_7_50 107 - - 
python3 ./01Knapsack.py f7_running_time.csv BottomUpDynamicProgramming t low-dimensional/f7_l-d_kp_7_50 107 - - 
python3 ./01Knapsack.py f7_running_time.csv FullyPolyNomial t low-dimensional/f7_l-d_kp_7_50 107 - - 
python3 ./01Knapsack.py f7_running_time.csv GeneticProgramming t low-dimensional/f7_l-d_kp_7_50 107 - - --sp1 50
python3 ./01Knapsack.py f7_running_time.csv AntColony t low-dimensional/f7_l-d_kp_7_50 107 - 50 --sp1 50 --sp2 0.5 
python3 ./01Knapsack.py f7_running_time.csv Randomized t low-dimensional/f7_l-d_kp_7_50 107 - 50 --sp1 0.1 

# we changed the number of individuals in genectic algorithm: 25, 75, 100, 200
# we changed the number of of iterations in ant colony: 25, 75, 100, 200
# we changed the number of iterations in randomized: 25, 75, 100, 200

python3 ./01Knapsack.py f7_running_time.csv GeneticProgramming t low-dimensional/f7_l-d_kp_7_50 107 - - --sp1 25
python3 ./01Knapsack.py f7_running_time.csv AntColony t low-dimensional/f7_l-d_kp_7_50 107 - 25 --sp1 50 --sp2 0.5 
python3 ./01Knapsack.py f7_running_time.csv Randomized t low-dimensional/f7_l-d_kp_7_50 107 - 25 
python3 ./01Knapsack.py f7_running_time.csv GeneticProgramming t low-dimensional/f7_l-d_kp_7_50 107 - - --sp1 75
python3 ./01Knapsack.py f7_running_time.csv AntColony t low-dimensional/f7_l-d_kp_7_50 107 - 75 --sp1 50 --sp2 0.5 
python3 ./01Knapsack.py f7_running_time.csv Randomized t low-dimensional/f7_l-d_kp_7_50 107 - 75 
python3 ./01Knapsack.py f7_running_time.csv GeneticProgramming t low-dimensional/f7_l-d_kp_7_50 107 - - --sp1 100
python3 ./01Knapsack.py f7_running_time.csv AntColony t low-dimensional/f7_l-d_kp_7_50 107 - 100 --sp1 50 --sp2 0.5 
python3 ./01Knapsack.py f7_running_time.csv Randomized t low-dimensional/f7_l-d_kp_7_50 107 - 100 
python3 ./01Knapsack.py f7_running_time.csv GeneticProgramming t low-dimensional/f7_l-d_kp_7_50 107 - - --sp1 200
python3 ./01Knapsack.py f7_running_time.csv AntColony t low-dimensional/f7_l-d_kp_7_50 107 - 200 --sp1 50 --sp2 0.5 
python3 ./01Knapsack.py f7_running_time.csv Randomized t low-dimensional/f7_l-d_kp_7_50 107 - 200 

# Genetic Programming on 250,300,350,400,500
python3 ./01Knapsack.py f7_running_time.csv GeneticProgramming t low-dimensional/f7_l-d_kp_7_50 107 - - --sp1 250
python3 ./01Knapsack.py f7_running_time.csv GeneticProgramming t low-dimensional/f7_l-d_kp_7_50 107 - - --sp1 300
python3 ./01Knapsack.py f7_running_time.csv GeneticProgramming t low-dimensional/f7_l-d_kp_7_50 107 - - --sp1 350
python3 ./01Knapsack.py f7_running_time.csv GeneticProgramming t low-dimensional/f7_l-d_kp_7_50 107 - - --sp1 400
python3 ./01Knapsack.py f7_running_time.csv GeneticProgramming t low-dimensional/f7_l-d_kp_7_50 107 - - --sp1 500

# Ant colony on 250,300,350,400,500
python3 ./01Knapsack.py f7_running_time.csv AntColony t low-dimensional/f7_l-d_kp_7_50 107 - 250 --sp1 100
python3 ./01Knapsack.py f7_running_time.csv AntColony t low-dimensional/f7_l-d_kp_7_50 107 - 300 --sp1 100
python3 ./01Knapsack.py f7_running_time.csv AntColony t low-dimensional/f7_l-d_kp_7_50 107 - 350 --sp1 100
python3 ./01Knapsack.py f7_running_time.csv AntColony t low-dimensional/f7_l-d_kp_7_50 107 - 400 --sp1 100
python3 ./01Knapsack.py f7_running_time.csv AntColony t low-dimensional/f7_l-d_kp_7_50 107 - 500 --sp1 100

# Ant colony on number of ants 25,50,75,100,200
python3 ./01Knapsack.py f7_running_time.csv AntColony t low-dimensional/f7_l-d_kp_7_50 107 - 200 --sp1 25 --sp2 0.5 
python3 ./01Knapsack.py f7_running_time.csv AntColony t low-dimensional/f7_l-d_kp_7_50 107 - 200 --sp1 50 --sp2 0.5 
python3 ./01Knapsack.py f7_running_time.csv AntColony t low-dimensional/f7_l-d_kp_7_50 107 - 200 --sp1 75 --sp2 0.5
python3 ./01Knapsack.py f7_running_time.csv AntColony t low-dimensional/f7_l-d_kp_7_50 107 - 200 --sp1 100 --sp2 0.5 
python3 ./01Knapsack.py f7_running_time.csv AntColony t low-dimensional/f7_l-d_kp_7_50 107 - 200 --sp1 200 --sp2 0.5 

# Randomized on ratios 0.2,0.3,0.4,0.5
python3 ./01Knapsack.py f7_running_time.csv Randomized t low-dimensional/f7_l-d_kp_7_50 107 - 200 --sp1 0.2
python3 ./01Knapsack.py f7_running_time.csv Randomized t low-dimensional/f7_l-d_kp_7_50 107 - 200 --sp1 0.3 
python3 ./01Knapsack.py f7_running_time.csv Randomized t low-dimensional/f7_l-d_kp_7_50 107 - 200 --sp1 0.4
python3 ./01Knapsack.py f7_running_time.csv Randomized t low-dimensional/f7_l-d_kp_7_50 107 - 200 --sp1 0.5  

#low-dimensional/f9_l-d_kp_5_80
python3 ./01Knapsack.py f9_running_time.csv BruteForce t low-dimensional/f9_l-d_kp_5_80 130 - - 
python3 ./01Knapsack.py f9_running_time.csv BranchAndBound t low-dimensional/f9_l-d_kp_5_80 130 - - 
python3 ./01Knapsack.py f9_running_time.csv RatioSortGreedy t low-dimensional/f9_l-d_kp_5_80 130 - - 
python3 ./01Knapsack.py f9_running_time.csv ValueSortGreedy t low-dimensional/f9_l-d_kp_5_80 130 - - 
python3 ./01Knapsack.py f9_running_time.csv WeightSortGreedy t low-dimensional/f9_l-d_kp_5_80 130 - - 
python3 ./01Knapsack.py f9_running_time.csv RatiosortAndConvergeGreedy t low-dimensional/f9_l-d_kp_5_80 130 - - 
python3 ./01Knapsack.py f9_running_time.csv TopDownDynamicProgramming t low-dimensional/f9_l-d_kp_5_80 130 - - 
python3 ./01Knapsack.py f9_running_time.csv BottomUpDynamicProgramming t low-dimensional/f9_l-d_kp_5_80 130 - - 
python3 ./01Knapsack.py f9_running_time.csv FullyPolyNomial t low-dimensional/f9_l-d_kp_5_80 130 - - 
python3 ./01Knapsack.py f9_running_time.csv GeneticProgramming t low-dimensional/f9_l-d_kp_5_80 130 - - --sp1 50
python3 ./01Knapsack.py f9_running_time.csv AntColony t low-dimensional/f9_l-d_kp_5_80 130 - 50 --sp1 50 --sp2 0.5 
python3 ./01Knapsack.py f9_running_time.csv Randomized t low-dimensional/f9_l-d_kp_5_80 130 - 50 --sp1 0.1 

# we changed the number of individuals in genectic algorithm: 25, 75, 100, 200
# we changed the number of of iterations in ant colony: 25, 75, 100, 200
# we changed the number of iterations in randomized: 25, 75, 100, 200

python3 ./01Knapsack.py f9_running_time.csv GeneticProgramming t low-dimensional/f9_l-d_kp_5_80 130 - - --sp1 25
python3 ./01Knapsack.py f9_running_time.csv AntColony t low-dimensional/f9_l-d_kp_5_80 130 - 25 --sp1 50 --sp2 0.5 
python3 ./01Knapsack.py f9_running_time.csv Randomized t low-dimensional/f9_l-d_kp_5_80 130 - 25 
python3 ./01Knapsack.py f9_running_time.csv GeneticProgramming t low-dimensional/f9_l-d_kp_5_80 130 - - --sp1 75
python3 ./01Knapsack.py f9_running_time.csv AntColony t low-dimensional/f9_l-d_kp_5_80 130 - 75 --sp1 50 --sp2 0.5 
python3 ./01Knapsack.py f9_running_time.csv Randomized t low-dimensional/f9_l-d_kp_5_80 130 - 75 
python3 ./01Knapsack.py f9_running_time.csv GeneticProgramming t low-dimensional/f9_l-d_kp_5_80 130 - - --sp1 100
python3 ./01Knapsack.py f9_running_time.csv AntColony t low-dimensional/f9_l-d_kp_5_80 130 - 100 --sp1 50 --sp2 0.5 
python3 ./01Knapsack.py f9_running_time.csv Randomized t low-dimensional/f9_l-d_kp_5_80 130 - 100 
python3 ./01Knapsack.py f9_running_time.csv GeneticProgramming t low-dimensional/f9_l-d_kp_5_80 130 - - --sp1 200
python3 ./01Knapsack.py f9_running_time.csv AntColony t low-dimensional/f9_l-d_kp_5_80 130 - 200 --sp1 50 --sp2 0.5 
python3 ./01Knapsack.py f9_running_time.csv Randomized t low-dimensional/f9_l-d_kp_5_80 130 - 200 

# Genetic Programming on 250,300,350,400,500
python3 ./01Knapsack.py f9_running_time.csv GeneticProgramming t low-dimensional/f9_l-d_kp_5_80 130 - - --sp1 250
python3 ./01Knapsack.py f9_running_time.csv GeneticProgramming t low-dimensional/f9_l-d_kp_5_80 130 - - --sp1 300
python3 ./01Knapsack.py f9_running_time.csv GeneticProgramming t low-dimensional/f9_l-d_kp_5_80 130 - - --sp1 350
python3 ./01Knapsack.py f9_running_time.csv GeneticProgramming t low-dimensional/f9_l-d_kp_5_80 130 - - --sp1 400
python3 ./01Knapsack.py f9_running_time.csv GeneticProgramming t low-dimensional/f9_l-d_kp_5_80 130 - - --sp1 500

# Ant colony on 250,300,350,400,500
python3 ./01Knapsack.py f9_running_time.csv AntColony t low-dimensional/f9_l-d_kp_5_80 130 - 250 --sp1 100
python3 ./01Knapsack.py f9_running_time.csv AntColony t low-dimensional/f9_l-d_kp_5_80 130 - 300 --sp1 100
python3 ./01Knapsack.py f9_running_time.csv AntColony t low-dimensional/f9_l-d_kp_5_80 130 - 350 --sp1 100
python3 ./01Knapsack.py f9_running_time.csv AntColony t low-dimensional/f9_l-d_kp_5_80 130 - 400 --sp1 100
python3 ./01Knapsack.py f9_running_time.csv AntColony t low-dimensional/f9_l-d_kp_5_80 130 - 500 --sp1 100

# Ant colony on number of ants 25,50,75,100,200
python3 ./01Knapsack.py f9_running_time.csv AntColony t low-dimensional/f9_l-d_kp_5_80 130 - 200 --sp1 25 --sp2 0.5 
python3 ./01Knapsack.py f9_running_time.csv AntColony t low-dimensional/f9_l-d_kp_5_80 130 - 200 --sp1 50 --sp2 0.5 
python3 ./01Knapsack.py f9_running_time.csv AntColony t low-dimensional/f9_l-d_kp_5_80 130 - 200 --sp1 75 --sp2 0.5
python3 ./01Knapsack.py f9_running_time.csv AntColony t low-dimensional/f9_l-d_kp_5_80 130 - 200 --sp1 100 --sp2 0.5 
python3 ./01Knapsack.py f9_running_time.csv AntColony t low-dimensional/f9_l-d_kp_5_80 130 - 200 --sp1 200 --sp2 0.5 

# Randomized on ratios 0.2,0.3,0.4,0.5
python3 ./01Knapsack.py f9_running_time.csv Randomized t low-dimensional/f9_l-d_kp_5_80 130 - 200 --sp1 0.2
python3 ./01Knapsack.py f9_running_time.csv Randomized t low-dimensional/f9_l-d_kp_5_80 130 - 200 --sp1 0.3 
python3 ./01Knapsack.py f9_running_time.csv Randomized t low-dimensional/f9_l-d_kp_5_80 130 - 200 --sp1 0.4
python3 ./01Knapsack.py f9_running_time.csv Randomized t low-dimensional/f9_l-d_kp_5_80 130 - 200 --sp1 0.5  

#low-dimensional/f10_l-d_kp_20_879
python3 ./01Knapsack.py f10_running_time.csv BruteForce t low-dimensional/f10_l-d_kp_20_879 1025 - - 
python3 ./01Knapsack.py f10_running_time.csv BranchAndBound t low-dimensional/f10_l-d_kp_20_879 1025 - - 
python3 ./01Knapsack.py f10_running_time.csv RatioSortGreedy t low-dimensional/f10_l-d_kp_20_879 1025 - - 
python3 ./01Knapsack.py f10_running_time.csv ValueSortGreedy t low-dimensional/f10_l-d_kp_20_879 1025 - - 
python3 ./01Knapsack.py f10_running_time.csv WeightSortGreedy t low-dimensional/f10_l-d_kp_20_879 1025 - - 
python3 ./01Knapsack.py f10_running_time.csv RatiosortAndConvergeGreedy t low-dimensional/f10_l-d_kp_20_879 1025 - - 
python3 ./01Knapsack.py f10_running_time.csv TopDownDynamicProgramming t low-dimensional/f10_l-d_kp_20_879 1025 - - 
python3 ./01Knapsack.py f10_running_time.csv BottomUpDynamicProgramming t low-dimensional/f10_l-d_kp_20_879 1025 - - 
python3 ./01Knapsack.py f10_running_time.csv FullyPolyNomial t low-dimensional/f10_l-d_kp_20_879 1025 - - 
python3 ./01Knapsack.py f10_running_time.csv GeneticProgramming t low-dimensional/f10_l-d_kp_20_879 1025 - - --sp1 50
python3 ./01Knapsack.py f10_running_time.csv AntColony t low-dimensional/f10_l-d_kp_20_879 1025 - 50 --sp1 50 --sp2 0.5 
python3 ./01Knapsack.py f10_running_time.csv Randomized t low-dimensional/f10_l-d_kp_20_879 1025 - 50 --sp1 0.1 

# we changed the number of individuals in genectic algorithm: 25, 75, 100, 200
# we changed the number of of iterations in ant colony: 25, 75, 100, 200
# we changed the number of iterations in randomized: 25, 75, 100, 200

python3 ./01Knapsack.py f10_running_time.csv GeneticProgramming t low-dimensional/f10_l-d_kp_20_879 1025 - - --sp1 25
python3 ./01Knapsack.py f10_running_time.csv AntColony t low-dimensional/f10_l-d_kp_20_879 1025 - 25 --sp1 50 --sp2 0.5 
python3 ./01Knapsack.py f10_running_time.csv Randomized t low-dimensional/f10_l-d_kp_20_879 1025 - 25 
python3 ./01Knapsack.py f10_running_time.csv GeneticProgramming t low-dimensional/f10_l-d_kp_20_879 1025 - - --sp1 75
python3 ./01Knapsack.py f10_running_time.csv AntColony t low-dimensional/f10_l-d_kp_20_879 1025 - 75 --sp1 50 --sp2 0.5 
python3 ./01Knapsack.py f10_running_time.csv Randomized t low-dimensional/f10_l-d_kp_20_879 1025 - 75 
python3 ./01Knapsack.py f10_running_time.csv GeneticProgramming t low-dimensional/f10_l-d_kp_20_879 1025 - - --sp1 100
python3 ./01Knapsack.py f10_running_time.csv AntColony t low-dimensional/f10_l-d_kp_20_879 1025 - 100 --sp1 50 --sp2 0.5 
python3 ./01Knapsack.py f10_running_time.csv Randomized t low-dimensional/f10_l-d_kp_20_879 1025 - 100 
python3 ./01Knapsack.py f10_running_time.csv GeneticProgramming t low-dimensional/f10_l-d_kp_20_879 1025 - - --sp1 200
python3 ./01Knapsack.py f10_running_time.csv AntColony t low-dimensional/f10_l-d_kp_20_879 1025 - 200 --sp1 50 --sp2 0.5 
python3 ./01Knapsack.py f10_running_time.csv Randomized t low-dimensional/f10_l-d_kp_20_879 1025 - 200 

# Genetic Programming on 250,300,350,400,500
python3 ./01Knapsack.py f10_running_time.csv GeneticProgramming t low-dimensional/f10_l-d_kp_20_879 1025 - - --sp1 250
python3 ./01Knapsack.py f10_running_time.csv GeneticProgramming t low-dimensional/f10_l-d_kp_20_879 1025 - - --sp1 300
python3 ./01Knapsack.py f10_running_time.csv GeneticProgramming t low-dimensional/f10_l-d_kp_20_879 1025 - - --sp1 350
python3 ./01Knapsack.py f10_running_time.csv GeneticProgramming t low-dimensional/f10_l-d_kp_20_879 1025 - - --sp1 400
python3 ./01Knapsack.py f10_running_time.csv GeneticProgramming t low-dimensional/f10_l-d_kp_20_879 1025 - - --sp1 500

# Ant colony on 250,300,350,400,500
python3 ./01Knapsack.py f10_running_time.csv AntColony t low-dimensional/f10_l-d_kp_20_879 1025 - 250 --sp1 100
python3 ./01Knapsack.py f10_running_time.csv AntColony t low-dimensional/f10_l-d_kp_20_879 1025 - 300 --sp1 100
python3 ./01Knapsack.py f10_running_time.csv AntColony t low-dimensional/f10_l-d_kp_20_879 1025 - 350 --sp1 100
python3 ./01Knapsack.py f10_running_time.csv AntColony t low-dimensional/f10_l-d_kp_20_879 1025 - 400 --sp1 100
python3 ./01Knapsack.py f10_running_time.csv AntColony t low-dimensional/f10_l-d_kp_20_879 1025 - 500 --sp1 100

# Ant colony on number of ants 25,50,75,100,200
python3 ./01Knapsack.py f10_running_time.csv AntColony t low-dimensional/f10_l-d_kp_20_879 1025 - 200 --sp1 25 --sp2 0.5 
python3 ./01Knapsack.py f10_running_time.csv AntColony t low-dimensional/f10_l-d_kp_20_879 1025 - 200 --sp1 50 --sp2 0.5 
python3 ./01Knapsack.py f10_running_time.csv AntColony t low-dimensional/f10_l-d_kp_20_879 1025 - 200 --sp1 75 --sp2 0.5
python3 ./01Knapsack.py f10_running_time.csv AntColony t low-dimensional/f10_l-d_kp_20_879 1025 - 200 --sp1 100 --sp2 0.5 
python3 ./01Knapsack.py f10_running_time.csv AntColony t low-dimensional/f10_l-d_kp_20_879 1025 - 200 --sp1 200 --sp2 0.5 

# Randomized on ratios 0.2,0.3,0.4,0.5
python3 ./01Knapsack.py f10_running_time.csv Randomized t low-dimensional/f10_l-d_kp_20_879 1025 - 200 --sp1 0.2
python3 ./01Knapsack.py f10_running_time.csv Randomized t low-dimensional/f10_l-d_kp_20_879 1025 - 200 --sp1 0.3 
python3 ./01Knapsack.py f10_running_time.csv Randomized t low-dimensional/f10_l-d_kp_20_879 1025 - 200 --sp1 0.4
python3 ./01Knapsack.py f10_running_time.csv Randomized t low-dimensional/f10_l-d_kp_20_879 1025 - 200 --sp1 0.5  

#!/bin/bash

# large_scale/knapPI_1_200_1000_1
python3 ./01Knapsack.py knapPI_1_200_1000_1_running_time.csv BranchAndBound t large_scale/knapPI_1_200_1000_1 11238 - - 
python3 ./01Knapsack.py knapPI_1_200_1000_1_running_time.csv RatioSortGreedy t large_scale/knapPI_1_200_1000_1 11238 - - 
python3 ./01Knapsack.py knapPI_1_200_1000_1_running_time.csv ValueSortGreedy t large_scale/knapPI_1_200_1000_1 11238 - - 
python3 ./01Knapsack.py knapPI_1_200_1000_1_running_time.csv WeightSortGreedy t large_scale/knapPI_1_200_1000_1 11238 - - 
python3 ./01Knapsack.py knapPI_1_200_1000_1_running_time.csv RatiosortAndConvergeGreedy t large_scale/knapPI_1_200_1000_1 11238 - - 
python3 ./01Knapsack.py knapPI_1_200_1000_1_running_time.csv TopDownDynamicProgramming t large_scale/knapPI_1_200_1000_1 11238 - - 
python3 ./01Knapsack.py knapPI_1_200_1000_1_running_time.csv BottomUpDynamicProgramming t large_scale/knapPI_1_200_1000_1 11238 - - 
python3 ./01Knapsack.py knapPI_1_200_1000_1_running_time.csv FullyPolyNomial t large_scale/knapPI_1_200_1000_1 11238 - - 
python3 ./01Knapsack.py knapPI_1_200_1000_1_running_time.csv GeneticProgramming t large_scale/knapPI_1_200_1000_1 11238 - - --sp1 50
python3 ./01Knapsack.py knapPI_1_200_1000_1_running_time.csv AntColony t large_scale/knapPI_1_200_1000_1 11238 - 50 --sp1 50 --sp2 0.5 
python3 ./01Knapsack.py knapPI_1_200_1000_1_running_time.csv Randomized t large_scale/knapPI_1_200_1000_1 11238 - 50 --sp1 0.1 

# we changed the number of individuals in genectic algorithm: 25, 75, 100, 200
# we changed the number of of iterations in ant colony: 25, 75, 100, 200
# we changed the number of iterations in randomized: 25, 75, 100, 200

python3 ./01Knapsack.py knapPI_1_200_1000_1_running_time.csv GeneticProgramming t large_scale/knapPI_1_200_1000_1 11238 - - --sp1 25
python3 ./01Knapsack.py knapPI_1_200_1000_1_running_time.csv AntColony t large_scale/knapPI_1_200_1000_1 11238 - 25 --sp1 50 --sp2 0.5 
python3 ./01Knapsack.py knapPI_1_200_1000_1_running_time.csv Randomized t large_scale/knapPI_1_200_1000_1 11238 - 25 
python3 ./01Knapsack.py knapPI_1_200_1000_1_running_time.csv GeneticProgramming t large_scale/knapPI_1_200_1000_1 11238 - - --sp1 75
python3 ./01Knapsack.py knapPI_1_200_1000_1_running_time.csv AntColony t large_scale/knapPI_1_200_1000_1 11238 - 75 --sp1 50 --sp2 0.5 
python3 ./01Knapsack.py knapPI_1_200_1000_1_running_time.csv Randomized t large_scale/knapPI_1_200_1000_1 11238 - 75 
python3 ./01Knapsack.py knapPI_1_200_1000_1_running_time.csv GeneticProgramming t large_scale/knapPI_1_200_1000_1 11238 - - --sp1 100
python3 ./01Knapsack.py knapPI_1_200_1000_1_running_time.csv AntColony t large_scale/knapPI_1_200_1000_1 11238 - 100 --sp1 50 --sp2 0.5 
python3 ./01Knapsack.py knapPI_1_200_1000_1_running_time.csv Randomized t large_scale/knapPI_1_200_1000_1 11238 - 100 
python3 ./01Knapsack.py knapPI_1_200_1000_1_running_time.csv GeneticProgramming t large_scale/knapPI_1_200_1000_1 11238 - - --sp1 200
python3 ./01Knapsack.py knapPI_1_200_1000_1_running_time.csv AntColony t large_scale/knapPI_1_200_1000_1 11238 - 200 --sp1 50 --sp2 0.5 
python3 ./01Knapsack.py knapPI_1_200_1000_1_running_time.csv Randomized t large_scale/knapPI_1_200_1000_1 11238 - 200 

# Genetic Programming on 250,300,350,400,500
python3 ./01Knapsack.py knapPI_1_200_1000_1_running_time.csv GeneticProgramming t large_scale/knapPI_1_200_1000_1 11238 - - --sp1 250
python3 ./01Knapsack.py knapPI_1_200_1000_1_running_time.csv GeneticProgramming t large_scale/knapPI_1_200_1000_1 11238 - - --sp1 300
python3 ./01Knapsack.py knapPI_1_200_1000_1_running_time.csv GeneticProgramming t large_scale/knapPI_1_200_1000_1 11238 - - --sp1 350
python3 ./01Knapsack.py knapPI_1_200_1000_1_running_time.csv GeneticProgramming t large_scale/knapPI_1_200_1000_1 11238 - - --sp1 400
python3 ./01Knapsack.py knapPI_1_200_1000_1_running_time.csv GeneticProgramming t large_scale/knapPI_1_200_1000_1 11238 - - --sp1 500

# Ant colony on 250,300,350,400,500
python3 ./01Knapsack.py knapPI_1_200_1000_1_running_time.csv AntColony t large_scale/knapPI_1_200_1000_1 11238 - 250 --sp1 100
python3 ./01Knapsack.py knapPI_1_200_1000_1_running_time.csv AntColony t large_scale/knapPI_1_200_1000_1 11238 - 300 --sp1 100
python3 ./01Knapsack.py knapPI_1_200_1000_1_running_time.csv AntColony t large_scale/knapPI_1_200_1000_1 11238 - 350 --sp1 100
python3 ./01Knapsack.py knapPI_1_200_1000_1_running_time.csv AntColony t large_scale/knapPI_1_200_1000_1 11238 - 400 --sp1 100
python3 ./01Knapsack.py knapPI_1_200_1000_1_running_time.csv AntColony t large_scale/knapPI_1_200_1000_1 11238 - 500 --sp1 100

# Ant colony on number of ants 25,50,75,100,200
python3 ./01Knapsack.py knapPI_1_200_1000_1_running_time.csv AntColony t large_scale/knapPI_1_200_1000_1 11238 - 200 --sp1 25 --sp2 0.5 
python3 ./01Knapsack.py knapPI_1_200_1000_1_running_time.csv AntColony t large_scale/knapPI_1_200_1000_1 11238 - 200 --sp1 50 --sp2 0.5 
python3 ./01Knapsack.py knapPI_1_200_1000_1_running_time.csv AntColony t large_scale/knapPI_1_200_1000_1 11238 - 200 --sp1 75 --sp2 0.5
python3 ./01Knapsack.py knapPI_1_200_1000_1_running_time.csv AntColony t large_scale/knapPI_1_200_1000_1 11238 - 200 --sp1 100 --sp2 0.5 
python3 ./01Knapsack.py knapPI_1_200_1000_1_running_time.csv AntColony t large_scale/knapPI_1_200_1000_1 11238 - 200 --sp1 200 --sp2 0.5 

# Randomized on ratios 0.2,0.3,0.4,0.5
python3 ./01Knapsack.py knapPI_1_200_1000_1_running_time.csv Randomized t large_scale/knapPI_1_200_1000_1 11238 - 200 --sp1 0.2
python3 ./01Knapsack.py knapPI_1_200_1000_1_running_time.csv Randomized t large_scale/knapPI_1_200_1000_1 11238 - 200 --sp1 0.3 
python3 ./01Knapsack.py knapPI_1_200_1000_1_running_time.csv Randomized t large_scale/knapPI_1_200_1000_1 11238 - 200 --sp1 0.4
python3 ./01Knapsack.py knapPI_1_200_1000_1_running_time.csv Randomized t large_scale/knapPI_1_200_1000_1 11238 - 200 --sp1 0.5  

# large_scale/knapPI_2_5000_1000_1
python3 ./01Knapsack.py knapPI_2_5000_1000_1_running_time.csv BranchAndBound t large_scale/knapPI_2_5000_1000_1 44356 - - 
python3 ./01Knapsack.py knapPI_2_5000_1000_1_running_time.csv RatioSortGreedy t large_scale/knapPI_2_5000_1000_1 44356 - - 
python3 ./01Knapsack.py knapPI_2_5000_1000_1_running_time.csv ValueSortGreedy t large_scale/knapPI_2_5000_1000_1 44356 - - 
python3 ./01Knapsack.py knapPI_2_5000_1000_1_running_time.csv WeightSortGreedy t large_scale/knapPI_2_5000_1000_1 44356 - - 
python3 ./01Knapsack.py knapPI_2_5000_1000_1_running_time.csv RatiosortAndConvergeGreedy t large_scale/knapPI_2_5000_1000_1 44356 - - 
python3 ./01Knapsack.py knapPI_2_5000_1000_1_running_time.csv TopDownDynamicProgramming t large_scale/knapPI_2_5000_1000_1 44356 - - 
python3 ./01Knapsack.py knapPI_2_5000_1000_1_running_time.csv BottomUpDynamicProgramming t large_scale/knapPI_2_5000_1000_1 44356 - - 
python3 ./01Knapsack.py knapPI_2_5000_1000_1_running_time.csv FullyPolyNomial t large_scale/knapPI_2_5000_1000_1 44356 - - 
python3 ./01Knapsack.py knapPI_2_5000_1000_1_running_time.csv GeneticProgramming t large_scale/knapPI_2_5000_1000_1 44356 - - --sp1 50
python3 ./01Knapsack.py knapPI_2_5000_1000_1_running_time.csv AntColony t large_scale/knapPI_2_5000_1000_1 44356 - 50 --sp1 50 --sp2 0.5 
python3 ./01Knapsack.py knapPI_2_5000_1000_1_running_time.csv Randomized t large_scale/knapPI_2_5000_1000_1 44356 - 50 --sp1 0.1 

# we changed the number of individuals in genectic algorithm: 25, 75, 100, 200
# we changed the number of of iterations in ant colony: 25, 75, 100, 200
# we changed the number of iterations in randomized: 25, 75, 100, 200

python3 ./01Knapsack.py knapPI_2_5000_1000_1_running_time.csv GeneticProgramming t large_scale/knapPI_2_5000_1000_1 44356 - - --sp1 25
python3 ./01Knapsack.py knapPI_2_5000_1000_1_running_time.csv AntColony t large_scale/knapPI_2_5000_1000_1 44356 - 25 --sp1 50 --sp2 0.5 
python3 ./01Knapsack.py knapPI_2_5000_1000_1_running_time.csv Randomized t large_scale/knapPI_2_5000_1000_1 44356 - 25 
python3 ./01Knapsack.py knapPI_2_5000_1000_1_running_time.csv GeneticProgramming t large_scale/knapPI_2_5000_1000_1 44356 - - --sp1 75
python3 ./01Knapsack.py knapPI_2_5000_1000_1_running_time.csv AntColony t large_scale/knapPI_2_5000_1000_1 44356 - 75 --sp1 50 --sp2 0.5 
python3 ./01Knapsack.py knapPI_2_5000_1000_1_running_time.csv Randomized t large_scale/knapPI_2_5000_1000_1 44356 - 75 
python3 ./01Knapsack.py knapPI_2_5000_1000_1_running_time.csv GeneticProgramming t large_scale/knapPI_2_5000_1000_1 44356 - - --sp1 100
python3 ./01Knapsack.py knapPI_2_5000_1000_1_running_time.csv AntColony t large_scale/knapPI_2_5000_1000_1 44356 - 100 --sp1 50 --sp2 0.5 
python3 ./01Knapsack.py knapPI_2_5000_1000_1_running_time.csv Randomized t large_scale/knapPI_2_5000_1000_1 44356 - 100 
python3 ./01Knapsack.py knapPI_2_5000_1000_1_running_time.csv GeneticProgramming t large_scale/knapPI_2_5000_1000_1 44356 - - --sp1 200
python3 ./01Knapsack.py knapPI_2_5000_1000_1_running_time.csv AntColony t large_scale/knapPI_2_5000_1000_1 44356 - 200 --sp1 50 --sp2 0.5 
python3 ./01Knapsack.py knapPI_2_5000_1000_1_running_time.csv Randomized t large_scale/knapPI_2_5000_1000_1 44356 - 200 

# Genetic Programming on 250,300,350,400,500
python3 ./01Knapsack.py knapPI_2_5000_1000_1_running_time.csv GeneticProgramming t large_scale/knapPI_2_5000_1000_1 44356 - - --sp1 250
python3 ./01Knapsack.py knapPI_2_5000_1000_1_running_time.csv GeneticProgramming t large_scale/knapPI_2_5000_1000_1 44356 - - --sp1 300
python3 ./01Knapsack.py knapPI_2_5000_1000_1_running_time.csv GeneticProgramming t large_scale/knapPI_2_5000_1000_1 44356 - - --sp1 350
python3 ./01Knapsack.py knapPI_2_5000_1000_1_running_time.csv GeneticProgramming t large_scale/knapPI_2_5000_1000_1 44356 - - --sp1 400
python3 ./01Knapsack.py knapPI_2_5000_1000_1_running_time.csv GeneticProgramming t large_scale/knapPI_2_5000_1000_1 44356 - - --sp1 500

# Ant colony on 250,300,350,400,500
python3 ./01Knapsack.py knapPI_2_5000_1000_1_running_time.csv AntColony t large_scale/knapPI_2_5000_1000_1 44356 - 250 --sp1 100
python3 ./01Knapsack.py knapPI_2_5000_1000_1_running_time.csv AntColony t large_scale/knapPI_2_5000_1000_1 44356 - 300 --sp1 100
python3 ./01Knapsack.py knapPI_2_5000_1000_1_running_time.csv AntColony t large_scale/knapPI_2_5000_1000_1 44356 - 350 --sp1 100
python3 ./01Knapsack.py knapPI_2_5000_1000_1_running_time.csv AntColony t large_scale/knapPI_2_5000_1000_1 44356 - 400 --sp1 100
python3 ./01Knapsack.py knapPI_2_5000_1000_1_running_time.csv AntColony t large_scale/knapPI_2_5000_1000_1 44356 - 500 --sp1 100

# Ant colony on number of ants 25,50,75,100,200
python3 ./01Knapsack.py knapPI_2_5000_1000_1_running_time.csv AntColony t large_scale/knapPI_2_5000_1000_1 44356 - 200 --sp1 25 --sp2 0.5 
python3 ./01Knapsack.py knapPI_2_5000_1000_1_running_time.csv AntColony t large_scale/knapPI_2_5000_1000_1 44356 - 200 --sp1 50 --sp2 0.5 
python3 ./01Knapsack.py knapPI_2_5000_1000_1_running_time.csv AntColony t large_scale/knapPI_2_5000_1000_1 44356 - 200 --sp1 75 --sp2 0.5
python3 ./01Knapsack.py knapPI_2_5000_1000_1_running_time.csv AntColony t large_scale/knapPI_2_5000_1000_1 44356 - 200 --sp1 100 --sp2 0.5 
python3 ./01Knapsack.py knapPI_2_5000_1000_1_running_time.csv AntColony t large_scale/knapPI_2_5000_1000_1 44356 - 200 --sp1 200 --sp2 0.5 

# Randomized on ratios 0.2,0.3,0.4,0.5
python3 ./01Knapsack.py knapPI_2_5000_1000_1_running_time.csv Randomized t large_scale/knapPI_2_5000_1000_1 44356 - 200 --sp1 0.2
python3 ./01Knapsack.py knapPI_2_5000_1000_1_running_time.csv Randomized t large_scale/knapPI_2_5000_1000_1 44356 - 200 --sp1 0.3 
python3 ./01Knapsack.py knapPI_2_5000_1000_1_running_time.csv Randomized t large_scale/knapPI_2_5000_1000_1 44356 - 200 --sp1 0.4
python3 ./01Knapsack.py knapPI_2_5000_1000_1_running_time.csv Randomized t large_scale/knapPI_2_5000_1000_1 44356 - 200 --sp1 0.5   

# large_scale/knapPI_3_5000_1000_1
python3 ./01Knapsack.py knapPI_3_5000_1000_1_running_time.csv BranchAndBound t large_scale/knapPI_3_5000_1000_1 72505 - - 
python3 ./01Knapsack.py knapPI_3_5000_1000_1_running_time.csv RatioSortGreedy t large_scale/knapPI_3_5000_1000_1 72505 - - 
python3 ./01Knapsack.py knapPI_3_5000_1000_1_running_time.csv ValueSortGreedy t large_scale/knapPI_3_5000_1000_1 72505 - - 
python3 ./01Knapsack.py knapPI_3_5000_1000_1_running_time.csv WeightSortGreedy t large_scale/knapPI_3_5000_1000_1 72505 - - 
python3 ./01Knapsack.py knapPI_3_5000_1000_1_running_time.csv RatiosortAndConvergeGreedy t large_scale/knapPI_3_5000_1000_1 72505 - - 
python3 ./01Knapsack.py knapPI_3_5000_1000_1_running_time.csv TopDownDynamicProgramming t large_scale/knapPI_3_5000_1000_1 72505 - - 
python3 ./01Knapsack.py knapPI_3_5000_1000_1_running_time.csv BottomUpDynamicProgramming t large_scale/knapPI_3_5000_1000_1 72505 - - 
python3 ./01Knapsack.py knapPI_3_5000_1000_1_running_time.csv FullyPolyNomial t large_scale/knapPI_3_5000_1000_1 72505 - - 
python3 ./01Knapsack.py knapPI_3_5000_1000_1_running_time.csv GeneticProgramming t large_scale/knapPI_3_5000_1000_1 72505 - - --sp1 50
python3 ./01Knapsack.py knapPI_3_5000_1000_1_running_time.csv AntColony t large_scale/knapPI_3_5000_1000_1 72505 - 50 --sp1 50 --sp2 0.5 
python3 ./01Knapsack.py knapPI_3_5000_1000_1_running_time.csv Randomized t large_scale/knapPI_3_5000_1000_1 72505 - 50 --sp1 0.1 

# we changed the number of individuals in genectic algorithm: 25, 75, 100, 200
# we changed the number of of iterations in ant colony: 25, 75, 100, 200
# we changed the number of iterations in randomized: 25, 75, 100, 200

python3 ./01Knapsack.py knapPI_3_5000_1000_1_running_time.csv GeneticProgramming t large_scale/knapPI_3_5000_1000_1 72505 - - --sp1 25
python3 ./01Knapsack.py knapPI_3_5000_1000_1_running_time.csv AntColony t large_scale/knapPI_3_5000_1000_1 72505 - 25 --sp1 50 --sp2 0.5 
python3 ./01Knapsack.py knapPI_3_5000_1000_1_running_time.csv Randomized t large_scale/knapPI_3_5000_1000_1 72505 - 25 
python3 ./01Knapsack.py knapPI_3_5000_1000_1_running_time.csv GeneticProgramming t large_scale/knapPI_3_5000_1000_1 72505 - - --sp1 75
python3 ./01Knapsack.py knapPI_3_5000_1000_1_running_time.csv AntColony t large_scale/knapPI_3_5000_1000_1 72505 - 75 --sp1 50 --sp2 0.5 
python3 ./01Knapsack.py knapPI_3_5000_1000_1_running_time.csv Randomized t large_scale/knapPI_3_5000_1000_1 72505 - 75 
python3 ./01Knapsack.py knapPI_3_5000_1000_1_running_time.csv GeneticProgramming t large_scale/knapPI_3_5000_1000_1 72505 - - --sp1 100
python3 ./01Knapsack.py knapPI_3_5000_1000_1_running_time.csv AntColony t large_scale/knapPI_3_5000_1000_1 72505 - 100 --sp1 50 --sp2 0.5 
python3 ./01Knapsack.py knapPI_3_5000_1000_1_running_time.csv Randomized t large_scale/knapPI_3_5000_1000_1 72505 - 100 
python3 ./01Knapsack.py knapPI_3_5000_1000_1_running_time.csv GeneticProgramming t large_scale/knapPI_3_5000_1000_1 72505 - - --sp1 200
python3 ./01Knapsack.py knapPI_3_5000_1000_1_running_time.csv AntColony t large_scale/knapPI_3_5000_1000_1 72505 - 200 --sp1 50 --sp2 0.5 
python3 ./01Knapsack.py knapPI_3_5000_1000_1_running_time.csv Randomized t large_scale/knapPI_3_5000_1000_1 72505 - 200 

# Genetic Programming on 250,300,350,400,500
python3 ./01Knapsack.py knapPI_3_5000_1000_1_running_time.csv GeneticProgramming t large_scale/knapPI_3_5000_1000_1 72505 - - --sp1 250
python3 ./01Knapsack.py knapPI_3_5000_1000_1_running_time.csv GeneticProgramming t large_scale/knapPI_3_5000_1000_1 72505 - - --sp1 300
python3 ./01Knapsack.py knapPI_3_5000_1000_1_running_time.csv GeneticProgramming t large_scale/knapPI_3_5000_1000_1 72505 - - --sp1 350
python3 ./01Knapsack.py knapPI_3_5000_1000_1_running_time.csv GeneticProgramming t large_scale/knapPI_3_5000_1000_1 72505 - - --sp1 400
python3 ./01Knapsack.py knapPI_3_5000_1000_1_running_time.csv GeneticProgramming t large_scale/knapPI_3_5000_1000_1 72505 - - --sp1 500

# Ant colony on 250,300,350,400,500
python3 ./01Knapsack.py knapPI_3_5000_1000_1_running_time.csv AntColony t large_scale/knapPI_3_5000_1000_1 72505 - 250 --sp1 100
python3 ./01Knapsack.py knapPI_3_5000_1000_1_running_time.csv AntColony t large_scale/knapPI_3_5000_1000_1 72505 - 300 --sp1 100
python3 ./01Knapsack.py knapPI_3_5000_1000_1_running_time.csv AntColony t large_scale/knapPI_3_5000_1000_1 72505 - 350 --sp1 100
python3 ./01Knapsack.py knapPI_3_5000_1000_1_running_time.csv AntColony t large_scale/knapPI_3_5000_1000_1 72505 - 400 --sp1 100
python3 ./01Knapsack.py knapPI_3_5000_1000_1_running_time.csv AntColony t large_scale/knapPI_3_5000_1000_1 72505 - 500 --sp1 100

# Ant colony on number of ants 25,50,75,100,200
python3 ./01Knapsack.py knapPI_3_5000_1000_1_running_time.csv AntColony t large_scale/knapPI_3_5000_1000_1 72505 - 200 --sp1 25 --sp2 0.5 
python3 ./01Knapsack.py knapPI_3_5000_1000_1_running_time.csv AntColony t large_scale/knapPI_3_5000_1000_1 72505 - 200 --sp1 50 --sp2 0.5 
python3 ./01Knapsack.py knapPI_3_5000_1000_1_running_time.csv AntColony t large_scale/knapPI_3_5000_1000_1 72505 - 200 --sp1 75 --sp2 0.5
python3 ./01Knapsack.py knapPI_3_5000_1000_1_running_time.csv AntColony t large_scale/knapPI_3_5000_1000_1 72505 - 200 --sp1 100 --sp2 0.5 
python3 ./01Knapsack.py knapPI_3_5000_1000_1_running_time.csv AntColony t large_scale/knapPI_3_5000_1000_1 72505 - 200 --sp1 200 --sp2 0.5 

# Randomized on ratios 0.2,0.3,0.4,0.5
python3 ./01Knapsack.py knapPI_3_5000_1000_1_running_time.csv Randomized t large_scale/knapPI_3_5000_1000_1 72505 - 200 --sp1 0.2
python3 ./01Knapsack.py knapPI_3_5000_1000_1_running_time.csv Randomized t large_scale/knapPI_3_5000_1000_1 72505 - 200 --sp1 0.3 
python3 ./01Knapsack.py knapPI_3_5000_1000_1_running_time.csv Randomized t large_scale/knapPI_3_5000_1000_1 72505 - 200 --sp1 0.4
python3 ./01Knapsack.py knapPI_3_5000_1000_1_running_time.csv Randomized t large_scale/knapPI_3_5000_1000_1 72505 - 200 --sp1 0.5  



