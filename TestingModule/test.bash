#!/bin/bash
# low_dimensional/f1_l-d_kp_10_269
python ./01Knapsack.py running_time.csv BruteForce t low-dimensional/f1_l-d_kp_10_269 295
python ./01Knapsack.py running_time.csv BranchAndBound t low-dimensional/f1_l-d_kp_10_269 295
python ./01Knapsack.py running_time.csv RatioSortGreedy t low-dimensional/f1_l-d_kp_10_269 295
python ./01Knapsack.py running_time.csv ValueSortGreedy t low-dimensional/f1_l-d_kp_10_269 295
python ./01Knapsack.py running_time.csv WeightSortGreedy t low-dimensional/f1_l-d_kp_10_269 295
python ./01Knapsack.py running_time.csv RatiosortAndConvergeGreedy t low-dimensional/f1_l-d_kp_10_269 295
python ./01Knapsack.py running_time.csv TopDownDynamicProgramming t low-dimensional/f1_l-d_kp_10_269 295
python ./01Knapsack.py running_time.csv BottomUpDynamicProgramming t low-dimensional/f1_l-d_kp_10_269 295
python ./01Knapsack.py running_time.csv FullyPolyNomial t low-dimensional/f1_l-d_kp_10_269 295
python ./01Knapsack.py running_time.csv GeneticProgramming t low-dimensional/f1_l-d_kp_10_269 295 - - 50
python ./01Knapsack.py running_time.csv AntColony t low-dimensional/f1_l-d_kp_10_269 295 - 50 50 0.5 
python ./01Knapsack.py running_time.csv Randomized t low-dimensional/f1_l-d_kp_10_269 295 - 50 0.1 
