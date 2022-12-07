#!/bin/bash

python3 TestingModule/01Knapsack.py REPORT.csv BruteForce t low-dimensional/f1_l-d_kp_10_269 295 - - 
python3 TestingModule/01Knapsack.py REPORT.csv BranchAndBound t low-dimensional/f1_l-d_kp_10_269 295 - - 
python3 TestingModule/01Knapsack.py REPORT.csv RatioSortGreedy t low-dimensional/f1_l-d_kp_10_269 295 - - 
python3 TestingModule/01Knapsack.py REPORT.csv ValueSortGreedy t low-dimensional/f1_l-d_kp_10_269 295 - - 
python3 TestingModule/01Knapsack.py REPORT.csv WeightSortGreedy t low-dimensional/f1_l-d_kp_10_269 295 - - 
python3 TestingModule/01Knapsack.py REPORT.csv RatiosortAndConvergeGreedy t low-dimensional/f1_l-d_kp_10_269 295 - - 
python3 TestingModule/01Knapsack.py REPORT.csv TopDownDynamicProgramming t low-dimensional/f1_l-d_kp_10_269 295 - - 
python3 TestingModule/01Knapsack.py REPORT.csv BottomUpDynamicProgramming t low-dimensional/f1_l-d_kp_10_269 295 - - 
python3 TestingModule/01Knapsack.py REPORT.csv FullyPolyNomial t low-dimensional/f1_l-d_kp_10_269 295 - - 
python3 TestingModule/01Knapsack.py REPORT.csv GeneticProgramming t low-dimensional/f1_l-d_kp_10_269 295 - - --sp1 50
python3 TestingModule/01Knapsack.py REPORT.csv AntColony t low-dimensional/f1_l-d_kp_10_269 295 - 50 --sp1 50 --sp2 0.5 
python3 TestingModule/01Knapsack.py REPORT.csv Randomized t low-dimensional/f1_l-d_kp_10_269 295 - 50 --sp1 0.1 