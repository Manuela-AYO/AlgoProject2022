#!/bin/bash

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
python3 ./01Knapsack.py f3_running_time.csv AntColony t low-dimensional/f3_l-d_kp_4_20 35 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- 100 --sp1 50 --sp2 0.5 
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
python3 ./01Knapsack.py f3_running_time.csv AntColony t low-dimensional/f3_l-d_kp_4_20 35 - - --sp1 250
python3 ./01Knapsack.py f3_running_time.csv AntColony t low-dimensional/f3_l-d_kp_4_20 35 - - --sp1 300
python3 ./01Knapsack.py f3_running_time.csv AntColony t low-dimensional/f3_l-d_kp_4_20 35 - - --sp1 350
python3 ./01Knapsack.py f3_running_time.csv AntColony t low-dimensional/f3_l-d_kp_4_20 35 - - --sp1 400
python3 ./01Knapsack.py f3_running_time.csv AntColony t low-dimensional/f3_l-d_kp_4_20 35 - - --sp1 500

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
