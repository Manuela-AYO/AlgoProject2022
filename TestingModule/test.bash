#!/bin/bash

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
