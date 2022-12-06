# large_scale/knapPI_1_200_1000_1
python3 ./01Knapsack.py knapPI_1_200_1000_1_running_time.csv BranchAndBound t large_scale/knapPI_1_200_1000_1 72505 - - 
python3 ./01Knapsack.py knapPI_1_200_1000_1_running_time.csv RatioSortGreedy t large_scale/knapPI_1_200_1000_1 72505 - - 
python3 ./01Knapsack.py knapPI_1_200_1000_1_running_time.csv ValueSortGreedy t large_scale/knapPI_1_200_1000_1 72505 - - 
python3 ./01Knapsack.py knapPI_1_200_1000_1_running_time.csv WeightSortGreedy t large_scale/knapPI_1_200_1000_1 72505 - - 
python3 ./01Knapsack.py knapPI_1_200_1000_1_running_time.csv RatiosortAndConvergeGreedy t large_scale/knapPI_1_200_1000_1 72505 - - 
python3 ./01Knapsack.py knapPI_1_200_1000_1_running_time.csv TopDownDynamicProgramming t large_scale/knapPI_1_200_1000_1 72505 - - 
python3 ./01Knapsack.py knapPI_1_200_1000_1_running_time.csv BottomUpDynamicProgramming t large_scale/knapPI_1_200_1000_1 72505 - - 
python3 ./01Knapsack.py knapPI_1_200_1000_1_running_time.csv FullyPolyNomial t large_scale/knapPI_1_200_1000_1 72505 - - 
python3 ./01Knapsack.py knapPI_1_200_1000_1_running_time.csv GeneticProgramming t large_scale/knapPI_1_200_1000_1 72505 - - --sp1 50
python3 ./01Knapsack.py knapPI_1_200_1000_1_running_time.csv AntColony t large_scale/knapPI_1_200_1000_1 72505 - 50 --sp1 50 --sp2 0.5 
python3 ./01Knapsack.py knapPI_1_200_1000_1_running_time.csv Randomized t large_scale/knapPI_1_200_1000_1 72505 - 50 --sp1 0.1 

# we changed the number of individuals in genectic algorithm: 25, 75, 100, 200
# we changed the number of of iterations in ant colony: 25, 75, 100, 200
# we changed the number of iterations in randomized: 25, 75, 100, 200

python3 ./01Knapsack.py knapPI_1_200_1000_1_running_time.csv GeneticProgramming t large_scale/knapPI_1_200_1000_1 72505 - - --sp1 25
python3 ./01Knapsack.py knapPI_1_200_1000_1_running_time.csv AntColony t large_scale/knapPI_1_200_1000_1 72505 - 25 --sp1 50 --sp2 0.5 
python3 ./01Knapsack.py knapPI_1_200_1000_1_running_time.csv Randomized t large_scale/knapPI_1_200_1000_1 72505 - 25 
python3 ./01Knapsack.py knapPI_1_200_1000_1_running_time.csv GeneticProgramming t large_scale/knapPI_1_200_1000_1 72505 - - --sp1 75
python3 ./01Knapsack.py knapPI_1_200_1000_1_running_time.csv AntColony t large_scale/knapPI_1_200_1000_1 72505 - 75 --sp1 50 --sp2 0.5 
python3 ./01Knapsack.py knapPI_1_200_1000_1_running_time.csv Randomized t large_scale/knapPI_1_200_1000_1 72505 - 75 
python3 ./01Knapsack.py knapPI_1_200_1000_1_running_time.csv GeneticProgramming t large_scale/knapPI_1_200_1000_1 72505 - - --sp1 100
python3 ./01Knapsack.py knapPI_1_200_1000_1_running_time.csv AntColony t large_scale/knapPI_1_200_1000_1 72505 - 100 --sp1 50 --sp2 0.5 
python3 ./01Knapsack.py knapPI_1_200_1000_1_running_time.csv Randomized t large_scale/knapPI_1_200_1000_1 72505 - 100 
python3 ./01Knapsack.py knapPI_1_200_1000_1_running_time.csv GeneticProgramming t large_scale/knapPI_1_200_1000_1 72505 - - --sp1 200
python3 ./01Knapsack.py knapPI_1_200_1000_1_running_time.csv AntColony t large_scale/knapPI_1_200_1000_1 72505 - 200 --sp1 50 --sp2 0.5 
python3 ./01Knapsack.py knapPI_1_200_1000_1_running_time.csv Randomized t large_scale/knapPI_1_200_1000_1 72505 - 200 

# Genetic Programming on 250,300,350,400,500
python3 ./01Knapsack.py knapPI_1_200_1000_1_running_time.csv GeneticProgramming t large_scale/knapPI_1_200_1000_1 72505 - - --sp1 250
python3 ./01Knapsack.py knapPI_1_200_1000_1_running_time.csv GeneticProgramming t large_scale/knapPI_1_200_1000_1 72505 - - --sp1 300
python3 ./01Knapsack.py knapPI_1_200_1000_1_running_time.csv GeneticProgramming t large_scale/knapPI_1_200_1000_1 72505 - - --sp1 350
python3 ./01Knapsack.py knapPI_1_200_1000_1_running_time.csv GeneticProgramming t large_scale/knapPI_1_200_1000_1 72505 - - --sp1 400
python3 ./01Knapsack.py knapPI_1_200_1000_1_running_time.csv GeneticProgramming t large_scale/knapPI_1_200_1000_1 72505 - - --sp1 500

# Ant colony on 250,300,350,400,500
python3 ./01Knapsack.py knapPI_1_200_1000_1_running_time.csv AntColony t large_scale/knapPI_1_200_1000_1 72505 - 250 --sp1 100
python3 ./01Knapsack.py knapPI_1_200_1000_1_running_time.csv AntColony t large_scale/knapPI_1_200_1000_1 72505 - 300 --sp1 100
python3 ./01Knapsack.py knapPI_1_200_1000_1_running_time.csv AntColony t large_scale/knapPI_1_200_1000_1 72505 - 350 --sp1 100
python3 ./01Knapsack.py knapPI_1_200_1000_1_running_time.csv AntColony t large_scale/knapPI_1_200_1000_1 72505 - 400 --sp1 100
python3 ./01Knapsack.py knapPI_1_200_1000_1_running_time.csv AntColony t large_scale/knapPI_1_200_1000_1 72505 - 500 --sp1 100

# Ant colony on number of ants 25,50,75,100,200
python3 ./01Knapsack.py knapPI_1_200_1000_1_running_time.csv AntColony t large_scale/knapPI_1_200_1000_1 72505 - 200 --sp1 25 --sp2 0.5 
python3 ./01Knapsack.py knapPI_1_200_1000_1_running_time.csv AntColony t large_scale/knapPI_1_200_1000_1 72505 - 200 --sp1 50 --sp2 0.5 
python3 ./01Knapsack.py knapPI_1_200_1000_1_running_time.csv AntColony t large_scale/knapPI_1_200_1000_1 72505 - 200 --sp1 75 --sp2 0.5
python3 ./01Knapsack.py knapPI_1_200_1000_1_running_time.csv AntColony t large_scale/knapPI_1_200_1000_1 72505 - 200 --sp1 100 --sp2 0.5 
python3 ./01Knapsack.py knapPI_1_200_1000_1_running_time.csv AntColony t large_scale/knapPI_1_200_1000_1 72505 - 200 --sp1 200 --sp2 0.5 

# Randomized on ratios 0.2,0.3,0.4,0.5
python3 ./01Knapsack.py knapPI_1_200_1000_1_running_time.csv Randomized t large_scale/knapPI_1_200_1000_1 72505 - 200 --sp1 0.2
python3 ./01Knapsack.py knapPI_1_200_1000_1_running_time.csv Randomized t large_scale/knapPI_1_200_1000_1 72505 - 200 --sp1 0.3 
python3 ./01Knapsack.py knapPI_1_200_1000_1_running_time.csv Randomized t large_scale/knapPI_1_200_1000_1 72505 - 200 --sp1 0.4
python3 ./01Knapsack.py knapPI_1_200_1000_1_running_time.csv Randomized t large_scale/knapPI_1_200_1000_1 72505 - 200 --sp1 0.5 


# large_scale/knapPI_1_1000_1000_1
python3 ./01Knapsack.py knapPI_1_1000_1000_1_running_time.csv BranchAndBound t large_scale/knapPI_1_1000_1000_1 72505 - - 
python3 ./01Knapsack.py knapPI_1_1000_1000_1_running_time.csv RatioSortGreedy t large_scale/knapPI_1_1000_1000_1 72505 - - 
python3 ./01Knapsack.py knapPI_1_1000_1000_1_running_time.csv ValueSortGreedy t large_scale/knapPI_1_1000_1000_1 72505 - - 
python3 ./01Knapsack.py knapPI_1_1000_1000_1_running_time.csv WeightSortGreedy t large_scale/knapPI_1_1000_1000_1 72505 - - 
python3 ./01Knapsack.py knapPI_1_1000_1000_1_running_time.csv RatiosortAndConvergeGreedy t large_scale/knapPI_1_1000_1000_1 72505 - - 
python3 ./01Knapsack.py knapPI_1_1000_1000_1_running_time.csv TopDownDynamicProgramming t large_scale/knapPI_1_1000_1000_1 72505 - - 
python3 ./01Knapsack.py knapPI_1_1000_1000_1_running_time.csv BottomUpDynamicProgramming t large_scale/knapPI_1_1000_1000_1 72505 - - 
python3 ./01Knapsack.py knapPI_1_1000_1000_1_running_time.csv FullyPolyNomial t large_scale/knapPI_1_1000_1000_1 72505 - - 
python3 ./01Knapsack.py knapPI_1_1000_1000_1_running_time.csv GeneticProgramming t large_scale/knapPI_1_1000_1000_1 72505 - - --sp1 50
python3 ./01Knapsack.py knapPI_1_1000_1000_1_running_time.csv AntColony t large_scale/knapPI_1_1000_1000_1 72505 - 50 --sp1 50 --sp2 0.5 
python3 ./01Knapsack.py knapPI_1_1000_1000_1_running_time.csv Randomized t large_scale/knapPI_1_1000_1000_1 72505 - 50 --sp1 0.1 

# we changed the number of individuals in genectic algorithm: 25, 75, 100, 200
# we changed the number of of iterations in ant colony: 25, 75, 100, 200
# we changed the number of iterations in randomized: 25, 75, 100, 200

python3 ./01Knapsack.py knapPI_1_1000_1000_1_running_time.csv GeneticProgramming t large_scale/knapPI_1_1000_1000_1 72505 - - --sp1 25
python3 ./01Knapsack.py knapPI_1_1000_1000_1_running_time.csv AntColony t large_scale/knapPI_1_1000_1000_1 72505 - 25 --sp1 50 --sp2 0.5 
python3 ./01Knapsack.py knapPI_1_1000_1000_1_running_time.csv Randomized t large_scale/knapPI_1_1000_1000_1 72505 - 25 
python3 ./01Knapsack.py knapPI_1_1000_1000_1_running_time.csv GeneticProgramming t large_scale/knapPI_1_1000_1000_1 72505 - - --sp1 75
python3 ./01Knapsack.py knapPI_1_1000_1000_1_running_time.csv AntColony t large_scale/knapPI_1_1000_1000_1 72505 - 75 --sp1 50 --sp2 0.5 
python3 ./01Knapsack.py knapPI_1_1000_1000_1_running_time.csv Randomized t large_scale/knapPI_1_1000_1000_1 72505 - 75 
python3 ./01Knapsack.py knapPI_1_1000_1000_1_running_time.csv GeneticProgramming t large_scale/knapPI_1_1000_1000_1 72505 - - --sp1 100
python3 ./01Knapsack.py knapPI_1_1000_1000_1_running_time.csv AntColony t large_scale/knapPI_1_1000_1000_1 72505 - 100 --sp1 50 --sp2 0.5 
python3 ./01Knapsack.py knapPI_1_1000_1000_1_running_time.csv Randomized t large_scale/knapPI_1_1000_1000_1 72505 - 100 
python3 ./01Knapsack.py knapPI_1_1000_1000_1_running_time.csv GeneticProgramming t large_scale/knapPI_1_1000_1000_1 72505 - - --sp1 200
python3 ./01Knapsack.py knapPI_1_1000_1000_1_running_time.csv AntColony t large_scale/knapPI_1_1000_1000_1 72505 - 200 --sp1 50 --sp2 0.5 
python3 ./01Knapsack.py knapPI_1_1000_1000_1_running_time.csv Randomized t large_scale/knapPI_1_1000_1000_1 72505 - 200 

# Genetic Programming on 250,300,350,400,500
python3 ./01Knapsack.py knapPI_1_1000_1000_1_running_time.csv GeneticProgramming t large_scale/knapPI_1_1000_1000_1 72505 - - --sp1 250
python3 ./01Knapsack.py knapPI_1_1000_1000_1_running_time.csv GeneticProgramming t large_scale/knapPI_1_1000_1000_1 72505 - - --sp1 300
python3 ./01Knapsack.py knapPI_1_1000_1000_1_running_time.csv GeneticProgramming t large_scale/knapPI_1_1000_1000_1 72505 - - --sp1 350
python3 ./01Knapsack.py knapPI_1_1000_1000_1_running_time.csv GeneticProgramming t large_scale/knapPI_1_1000_1000_1 72505 - - --sp1 400
python3 ./01Knapsack.py knapPI_1_1000_1000_1_running_time.csv GeneticProgramming t large_scale/knapPI_1_1000_1000_1 72505 - - --sp1 500

# Ant colony on 250,300,350,400,500
python3 ./01Knapsack.py knapPI_1_1000_1000_1_running_time.csv AntColony t large_scale/knapPI_1_1000_1000_1 72505 - 250 --sp1 100
python3 ./01Knapsack.py knapPI_1_1000_1000_1_running_time.csv AntColony t large_scale/knapPI_1_1000_1000_1 72505 - 300 --sp1 100
python3 ./01Knapsack.py knapPI_1_1000_1000_1_running_time.csv AntColony t large_scale/knapPI_1_1000_1000_1 72505 - 350 --sp1 100
python3 ./01Knapsack.py knapPI_1_1000_1000_1_running_time.csv AntColony t large_scale/knapPI_1_1000_1000_1 72505 - 400 --sp1 100
python3 ./01Knapsack.py knapPI_1_1000_1000_1_running_time.csv AntColony t large_scale/knapPI_1_1000_1000_1 72505 - 500 --sp1 100

# Ant colony on number of ants 25,50,75,100,200
python3 ./01Knapsack.py knapPI_1_1000_1000_1_running_time.csv AntColony t large_scale/knapPI_1_1000_1000_1 72505 - 200 --sp1 25 --sp2 0.5 
python3 ./01Knapsack.py knapPI_1_1000_1000_1_running_time.csv AntColony t large_scale/knapPI_1_1000_1000_1 72505 - 200 --sp1 50 --sp2 0.5 
python3 ./01Knapsack.py knapPI_1_1000_1000_1_running_time.csv AntColony t large_scale/knapPI_1_1000_1000_1 72505 - 200 --sp1 75 --sp2 0.5
python3 ./01Knapsack.py knapPI_1_1000_1000_1_running_time.csv AntColony t large_scale/knapPI_1_1000_1000_1 72505 - 200 --sp1 100 --sp2 0.5 
python3 ./01Knapsack.py knapPI_1_1000_1000_1_running_time.csv AntColony t large_scale/knapPI_1_1000_1000_1 72505 - 200 --sp1 200 --sp2 0.5 

# Randomized on ratios 0.2,0.3,0.4,0.5
python3 ./01Knapsack.py knapPI_1_1000_1000_1_running_time.csv Randomized t large_scale/knapPI_1_1000_1000_1 72505 - 200 --sp1 0.2
python3 ./01Knapsack.py knapPI_1_1000_1000_1_running_time.csv Randomized t large_scale/knapPI_1_1000_1000_1 72505 - 200 --sp1 0.3 
python3 ./01Knapsack.py knapPI_1_1000_1000_1_running_time.csv Randomized t large_scale/knapPI_1_1000_1000_1 72505 - 200 --sp1 0.4
python3 ./01Knapsack.py knapPI_1_1000_1000_1_running_time.csv Randomized t large_scale/knapPI_1_1000_1000_1 72505 - 200 --sp1 0.5 

# large_scale/knapPI_1_2000_1000_1
python3 ./01Knapsack.py knapPI_1_2000_1000_1_running_time.csv BranchAndBound t large_scale/knapPI_1_2000_1000_1 72505 - - 
python3 ./01Knapsack.py knapPI_1_2000_1000_1_running_time.csv RatioSortGreedy t large_scale/knapPI_1_2000_1000_1 72505 - - 
python3 ./01Knapsack.py knapPI_1_2000_1000_1_running_time.csv ValueSortGreedy t large_scale/knapPI_1_2000_1000_1 72505 - - 
python3 ./01Knapsack.py knapPI_1_2000_1000_1_running_time.csv WeightSortGreedy t large_scale/knapPI_1_2000_1000_1 72505 - - 
python3 ./01Knapsack.py knapPI_1_2000_1000_1_running_time.csv RatiosortAndConvergeGreedy t large_scale/knapPI_1_2000_1000_1 72505 - - 
python3 ./01Knapsack.py knapPI_1_2000_1000_1_running_time.csv TopDownDynamicProgramming t large_scale/knapPI_1_2000_1000_1 72505 - - 
python3 ./01Knapsack.py knapPI_1_2000_1000_1_running_time.csv BottomUpDynamicProgramming t large_scale/knapPI_1_2000_1000_1 72505 - - 
python3 ./01Knapsack.py knapPI_1_2000_1000_1_running_time.csv FullyPolyNomial t large_scale/knapPI_1_2000_1000_1 72505 - - 
python3 ./01Knapsack.py knapPI_1_2000_1000_1_running_time.csv GeneticProgramming t large_scale/knapPI_1_2000_1000_1 72505 - - --sp1 50
python3 ./01Knapsack.py knapPI_1_2000_1000_1_running_time.csv AntColony t large_scale/knapPI_1_2000_1000_1 72505 - 50 --sp1 50 --sp2 0.5 
python3 ./01Knapsack.py knapPI_1_2000_1000_1_running_time.csv Randomized t large_scale/knapPI_1_2000_1000_1 72505 - 50 --sp1 0.1 

# we changed the number of individuals in genectic algorithm: 25, 75, 100, 200
# we changed the number of of iterations in ant colony: 25, 75, 100, 200
# we changed the number of iterations in randomized: 25, 75, 100, 200

python3 ./01Knapsack.py knapPI_1_2000_1000_1_running_time.csv GeneticProgramming t large_scale/knapPI_1_2000_1000_1 72505 - - --sp1 25
python3 ./01Knapsack.py knapPI_1_2000_1000_1_running_time.csv AntColony t large_scale/knapPI_1_2000_1000_1 72505 - 25 --sp1 50 --sp2 0.5 
python3 ./01Knapsack.py knapPI_1_2000_1000_1_running_time.csv Randomized t large_scale/knapPI_1_2000_1000_1 72505 - 25 
python3 ./01Knapsack.py knapPI_1_2000_1000_1_running_time.csv GeneticProgramming t large_scale/knapPI_1_2000_1000_1 72505 - - --sp1 75
python3 ./01Knapsack.py knapPI_1_2000_1000_1_running_time.csv AntColony t large_scale/knapPI_1_2000_1000_1 72505 - 75 --sp1 50 --sp2 0.5 
python3 ./01Knapsack.py knapPI_1_2000_1000_1_running_time.csv Randomized t large_scale/knapPI_1_2000_1000_1 72505 - 75 
python3 ./01Knapsack.py knapPI_1_2000_1000_1_running_time.csv GeneticProgramming t large_scale/knapPI_1_2000_1000_1 72505 - - --sp1 100
python3 ./01Knapsack.py knapPI_1_2000_1000_1_running_time.csv AntColony t large_scale/knapPI_1_2000_1000_1 72505 - 100 --sp1 50 --sp2 0.5 
python3 ./01Knapsack.py knapPI_1_2000_1000_1_running_time.csv Randomized t large_scale/knapPI_1_2000_1000_1 72505 - 100 
python3 ./01Knapsack.py knapPI_1_2000_1000_1_running_time.csv GeneticProgramming t large_scale/knapPI_1_2000_1000_1 72505 - - --sp1 200
python3 ./01Knapsack.py knapPI_1_2000_1000_1_running_time.csv AntColony t large_scale/knapPI_1_2000_1000_1 72505 - 200 --sp1 50 --sp2 0.5 
python3 ./01Knapsack.py knapPI_1_2000_1000_1_running_time.csv Randomized t large_scale/knapPI_1_2000_1000_1 72505 - 200 

# Genetic Programming on 250,300,350,400,500
python3 ./01Knapsack.py knapPI_1_2000_1000_1_running_time.csv GeneticProgramming t large_scale/knapPI_1_2000_1000_1 72505 - - --sp1 250
python3 ./01Knapsack.py knapPI_1_2000_1000_1_running_time.csv GeneticProgramming t large_scale/knapPI_1_2000_1000_1 72505 - - --sp1 300
python3 ./01Knapsack.py knapPI_1_2000_1000_1_running_time.csv GeneticProgramming t large_scale/knapPI_1_2000_1000_1 72505 - - --sp1 350
python3 ./01Knapsack.py knapPI_1_2000_1000_1_running_time.csv GeneticProgramming t large_scale/knapPI_1_2000_1000_1 72505 - - --sp1 400
python3 ./01Knapsack.py knapPI_1_2000_1000_1_running_time.csv GeneticProgramming t large_scale/knapPI_1_2000_1000_1 72505 - - --sp1 500

# Ant colony on 250,300,350,400,500
python3 ./01Knapsack.py knapPI_1_2000_1000_1_running_time.csv AntColony t large_scale/knapPI_1_2000_1000_1 72505 - 250 --sp1 100
python3 ./01Knapsack.py knapPI_1_2000_1000_1_running_time.csv AntColony t large_scale/knapPI_1_2000_1000_1 72505 - 300 --sp1 100
python3 ./01Knapsack.py knapPI_1_2000_1000_1_running_time.csv AntColony t large_scale/knapPI_1_2000_1000_1 72505 - 350 --sp1 100
python3 ./01Knapsack.py knapPI_1_2000_1000_1_running_time.csv AntColony t large_scale/knapPI_1_2000_1000_1 72505 - 400 --sp1 100
python3 ./01Knapsack.py knapPI_1_2000_1000_1_running_time.csv AntColony t large_scale/knapPI_1_2000_1000_1 72505 - 500 --sp1 100

# Ant colony on number of ants 25,50,75,100,200
python3 ./01Knapsack.py knapPI_1_2000_1000_1_running_time.csv AntColony t large_scale/knapPI_1_2000_1000_1 72505 - 200 --sp1 25 --sp2 0.5 
python3 ./01Knapsack.py knapPI_1_2000_1000_1_running_time.csv AntColony t large_scale/knapPI_1_2000_1000_1 72505 - 200 --sp1 50 --sp2 0.5 
python3 ./01Knapsack.py knapPI_1_2000_1000_1_running_time.csv AntColony t large_scale/knapPI_1_2000_1000_1 72505 - 200 --sp1 75 --sp2 0.5
python3 ./01Knapsack.py knapPI_1_2000_1000_1_running_time.csv AntColony t large_scale/knapPI_1_2000_1000_1 72505 - 200 --sp1 100 --sp2 0.5 
python3 ./01Knapsack.py knapPI_1_2000_1000_1_running_time.csv AntColony t large_scale/knapPI_1_2000_1000_1 72505 - 200 --sp1 200 --sp2 0.5 

# Randomized on ratios 0.2,0.3,0.4,0.5
python3 ./01Knapsack.py knapPI_1_2000_1000_1_running_time.csv Randomized t large_scale/knapPI_1_2000_1000_1 72505 - 200 --sp1 0.2
python3 ./01Knapsack.py knapPI_1_2000_1000_1_running_time.csv Randomized t large_scale/knapPI_1_2000_1000_1 72505 - 200 --sp1 0.3 
python3 ./01Knapsack.py knapPI_1_2000_1000_1_running_time.csv Randomized t large_scale/knapPI_1_2000_1000_1 72505 - 200 --sp1 0.4
python3 ./01Knapsack.py knapPI_1_2000_1000_1_running_time.csv Randomized t large_scale/knapPI_1_2000_1000_1 72505 - 200 --sp1 0.5 

############################################################ 2

# large_scale/knapPI_2_200_1000_1
python3 ./01Knapsack.py knapPI_2_200_1000_1_running_time.csv BranchAndBound t large_scale/knapPI_2_200_1000_1 72505 - - 
python3 ./01Knapsack.py knapPI_2_200_1000_1_running_time.csv RatioSortGreedy t large_scale/knapPI_2_200_1000_1 72505 - - 
python3 ./01Knapsack.py knapPI_2_200_1000_1_running_time.csv ValueSortGreedy t large_scale/knapPI_2_200_1000_1 72505 - - 
python3 ./01Knapsack.py knapPI_2_200_1000_1_running_time.csv WeightSortGreedy t large_scale/knapPI_2_200_1000_1 72505 - - 
python3 ./01Knapsack.py knapPI_2_200_1000_1_running_time.csv RatiosortAndConvergeGreedy t large_scale/knapPI_2_200_1000_1 72505 - - 
python3 ./01Knapsack.py knapPI_2_200_1000_1_running_time.csv TopDownDynamicProgramming t large_scale/knapPI_2_200_1000_1 72505 - - 
python3 ./01Knapsack.py knapPI_2_200_1000_1_running_time.csv BottomUpDynamicProgramming t large_scale/knapPI_2_200_1000_1 72505 - - 
python3 ./01Knapsack.py knapPI_2_200_1000_1_running_time.csv FullyPolyNomial t large_scale/knapPI_2_200_1000_1 72505 - - 
python3 ./01Knapsack.py knapPI_2_200_1000_1_running_time.csv GeneticProgramming t large_scale/knapPI_2_200_1000_1 72505 - - --sp1 50
python3 ./01Knapsack.py knapPI_2_200_1000_1_running_time.csv AntColony t large_scale/knapPI_2_200_1000_1 72505 - 50 --sp1 50 --sp2 0.5 
python3 ./01Knapsack.py knapPI_2_200_1000_1_running_time.csv Randomized t large_scale/knapPI_2_200_1000_1 72505 - 50 --sp1 0.1 

# we changed the number of individuals in genectic algorithm: 25, 75, 100, 200
# we changed the number of of iterations in ant colony: 25, 75, 100, 200
# we changed the number of iterations in randomized: 25, 75, 100, 200

python3 ./01Knapsack.py knapPI_2_200_1000_1_running_time.csv GeneticProgramming t large_scale/knapPI_2_200_1000_1 72505 - - --sp1 25
python3 ./01Knapsack.py knapPI_2_200_1000_1_running_time.csv AntColony t large_scale/knapPI_2_200_1000_1 72505 - 25 --sp1 50 --sp2 0.5 
python3 ./01Knapsack.py knapPI_2_200_1000_1_running_time.csv Randomized t large_scale/knapPI_2_200_1000_1 72505 - 25 
python3 ./01Knapsack.py knapPI_2_200_1000_1_running_time.csv GeneticProgramming t large_scale/knapPI_2_200_1000_1 72505 - - --sp1 75
python3 ./01Knapsack.py knapPI_2_200_1000_1_running_time.csv AntColony t large_scale/knapPI_2_200_1000_1 72505 - 75 --sp1 50 --sp2 0.5 
python3 ./01Knapsack.py knapPI_2_200_1000_1_running_time.csv Randomized t large_scale/knapPI_2_200_1000_1 72505 - 75 
python3 ./01Knapsack.py knapPI_2_200_1000_1_running_time.csv GeneticProgramming t large_scale/knapPI_2_200_1000_1 72505 - - --sp1 100
python3 ./01Knapsack.py knapPI_2_200_1000_1_running_time.csv AntColony t large_scale/knapPI_2_200_1000_1 72505 - 100 --sp1 50 --sp2 0.5 
python3 ./01Knapsack.py knapPI_2_200_1000_1_running_time.csv Randomized t large_scale/knapPI_2_200_1000_1 72505 - 100 
python3 ./01Knapsack.py knapPI_2_200_1000_1_running_time.csv GeneticProgramming t large_scale/knapPI_2_200_1000_1 72505 - - --sp1 200
python3 ./01Knapsack.py knapPI_2_200_1000_1_running_time.csv AntColony t large_scale/knapPI_2_200_1000_1 72505 - 200 --sp1 50 --sp2 0.5 
python3 ./01Knapsack.py knapPI_2_200_1000_1_running_time.csv Randomized t large_scale/knapPI_2_200_1000_1 72505 - 200 

# Genetic Programming on 250,300,350,400,500
python3 ./01Knapsack.py knapPI_2_200_1000_1_running_time.csv GeneticProgramming t large_scale/knapPI_2_200_1000_1 72505 - - --sp1 250
python3 ./01Knapsack.py knapPI_2_200_1000_1_running_time.csv GeneticProgramming t large_scale/knapPI_2_200_1000_1 72505 - - --sp1 300
python3 ./01Knapsack.py knapPI_2_200_1000_1_running_time.csv GeneticProgramming t large_scale/knapPI_2_200_1000_1 72505 - - --sp1 350
python3 ./01Knapsack.py knapPI_2_200_1000_1_running_time.csv GeneticProgramming t large_scale/knapPI_2_200_1000_1 72505 - - --sp1 400
python3 ./01Knapsack.py knapPI_2_200_1000_1_running_time.csv GeneticProgramming t large_scale/knapPI_2_200_1000_1 72505 - - --sp1 500

# Ant colony on 250,300,350,400,500
python3 ./01Knapsack.py knapPI_2_200_1000_1_running_time.csv AntColony t large_scale/knapPI_2_200_1000_1 72505 - 250 --sp1 100
python3 ./01Knapsack.py knapPI_2_200_1000_1_running_time.csv AntColony t large_scale/knapPI_2_200_1000_1 72505 - 300 --sp1 100
python3 ./01Knapsack.py knapPI_2_200_1000_1_running_time.csv AntColony t large_scale/knapPI_2_200_1000_1 72505 - 350 --sp1 100
python3 ./01Knapsack.py knapPI_2_200_1000_1_running_time.csv AntColony t large_scale/knapPI_2_200_1000_1 72505 - 400 --sp1 100
python3 ./01Knapsack.py knapPI_2_200_1000_1_running_time.csv AntColony t large_scale/knapPI_2_200_1000_1 72505 - 500 --sp1 100

# Ant colony on number of ants 25,50,75,100,200
python3 ./01Knapsack.py knapPI_2_200_1000_1_running_time.csv AntColony t large_scale/knapPI_2_200_1000_1 72505 - 200 --sp1 25 --sp2 0.5 
python3 ./01Knapsack.py knapPI_2_200_1000_1_running_time.csv AntColony t large_scale/knapPI_2_200_1000_1 72505 - 200 --sp1 50 --sp2 0.5 
python3 ./01Knapsack.py knapPI_2_200_1000_1_running_time.csv AntColony t large_scale/knapPI_2_200_1000_1 72505 - 200 --sp1 75 --sp2 0.5
python3 ./01Knapsack.py knapPI_2_200_1000_1_running_time.csv AntColony t large_scale/knapPI_2_200_1000_1 72505 - 200 --sp1 100 --sp2 0.5 
python3 ./01Knapsack.py knapPI_2_200_1000_1_running_time.csv AntColony t large_scale/knapPI_2_200_1000_1 72505 - 200 --sp1 200 --sp2 0.5 

# Randomized on ratios 0.2,0.3,0.4,0.5
python3 ./01Knapsack.py knapPI_2_200_1000_1_running_time.csv Randomized t large_scale/knapPI_2_200_1000_1 72505 - 200 --sp1 0.2
python3 ./01Knapsack.py knapPI_2_200_1000_1_running_time.csv Randomized t large_scale/knapPI_2_200_1000_1 72505 - 200 --sp1 0.3 
python3 ./01Knapsack.py knapPI_2_200_1000_1_running_time.csv Randomized t large_scale/knapPI_2_200_1000_1 72505 - 200 --sp1 0.4
python3 ./01Knapsack.py knapPI_2_200_1000_1_running_time.csv Randomized t large_scale/knapPI_2_200_1000_1 72505 - 200 --sp1 0.5 


# large_scale/knapPI_2_1000_1000_1
python3 ./01Knapsack.py knapPI_2_1000_1000_1_running_time.csv BranchAndBound t large_scale/knapPI_2_1000_1000_1 72505 - - 
python3 ./01Knapsack.py knapPI_2_1000_1000_1_running_time.csv RatioSortGreedy t large_scale/knapPI_2_1000_1000_1 72505 - - 
python3 ./01Knapsack.py knapPI_2_1000_1000_1_running_time.csv ValueSortGreedy t large_scale/knapPI_2_1000_1000_1 72505 - - 
python3 ./01Knapsack.py knapPI_2_1000_1000_1_running_time.csv WeightSortGreedy t large_scale/knapPI_2_1000_1000_1 72505 - - 
python3 ./01Knapsack.py knapPI_2_1000_1000_1_running_time.csv RatiosortAndConvergeGreedy t large_scale/knapPI_2_1000_1000_1 72505 - - 
python3 ./01Knapsack.py knapPI_2_1000_1000_1_running_time.csv TopDownDynamicProgramming t large_scale/knapPI_2_1000_1000_1 72505 - - 
python3 ./01Knapsack.py knapPI_2_1000_1000_1_running_time.csv BottomUpDynamicProgramming t large_scale/knapPI_2_1000_1000_1 72505 - - 
python3 ./01Knapsack.py knapPI_2_1000_1000_1_running_time.csv FullyPolyNomial t large_scale/knapPI_2_1000_1000_1 72505 - - 
python3 ./01Knapsack.py knapPI_2_1000_1000_1_running_time.csv GeneticProgramming t large_scale/knapPI_2_1000_1000_1 72505 - - --sp1 50
python3 ./01Knapsack.py knapPI_2_1000_1000_1_running_time.csv AntColony t large_scale/knapPI_2_1000_1000_1 72505 - 50 --sp1 50 --sp2 0.5 
python3 ./01Knapsack.py knapPI_2_1000_1000_1_running_time.csv Randomized t large_scale/knapPI_2_1000_1000_1 72505 - 50 --sp1 0.1 

# we changed the number of individuals in genectic algorithm: 25, 75, 100, 200
# we changed the number of of iterations in ant colony: 25, 75, 100, 200
# we changed the number of iterations in randomized: 25, 75, 100, 200

python3 ./01Knapsack.py knapPI_2_1000_1000_1_running_time.csv GeneticProgramming t large_scale/knapPI_2_1000_1000_1 72505 - - --sp1 25
python3 ./01Knapsack.py knapPI_2_1000_1000_1_running_time.csv AntColony t large_scale/knapPI_2_1000_1000_1 72505 - 25 --sp1 50 --sp2 0.5 
python3 ./01Knapsack.py knapPI_2_1000_1000_1_running_time.csv Randomized t large_scale/knapPI_2_1000_1000_1 72505 - 25 
python3 ./01Knapsack.py knapPI_2_1000_1000_1_running_time.csv GeneticProgramming t large_scale/knapPI_2_1000_1000_1 72505 - - --sp1 75
python3 ./01Knapsack.py knapPI_2_1000_1000_1_running_time.csv AntColony t large_scale/knapPI_2_1000_1000_1 72505 - 75 --sp1 50 --sp2 0.5 
python3 ./01Knapsack.py knapPI_2_1000_1000_1_running_time.csv Randomized t large_scale/knapPI_2_1000_1000_1 72505 - 75 
python3 ./01Knapsack.py knapPI_2_1000_1000_1_running_time.csv GeneticProgramming t large_scale/knapPI_2_1000_1000_1 72505 - - --sp1 100
python3 ./01Knapsack.py knapPI_2_1000_1000_1_running_time.csv AntColony t large_scale/knapPI_2_1000_1000_1 72505 - 100 --sp1 50 --sp2 0.5 
python3 ./01Knapsack.py knapPI_2_1000_1000_1_running_time.csv Randomized t large_scale/knapPI_2_1000_1000_1 72505 - 100 
python3 ./01Knapsack.py knapPI_2_1000_1000_1_running_time.csv GeneticProgramming t large_scale/knapPI_2_1000_1000_1 72505 - - --sp1 200
python3 ./01Knapsack.py knapPI_2_1000_1000_1_running_time.csv AntColony t large_scale/knapPI_2_1000_1000_1 72505 - 200 --sp1 50 --sp2 0.5 
python3 ./01Knapsack.py knapPI_2_1000_1000_1_running_time.csv Randomized t large_scale/knapPI_2_1000_1000_1 72505 - 200 

# Genetic Programming on 250,300,350,400,500
python3 ./01Knapsack.py knapPI_2_1000_1000_1_running_time.csv GeneticProgramming t large_scale/knapPI_2_1000_1000_1 72505 - - --sp1 250
python3 ./01Knapsack.py knapPI_2_1000_1000_1_running_time.csv GeneticProgramming t large_scale/knapPI_2_1000_1000_1 72505 - - --sp1 300
python3 ./01Knapsack.py knapPI_2_1000_1000_1_running_time.csv GeneticProgramming t large_scale/knapPI_2_1000_1000_1 72505 - - --sp1 350
python3 ./01Knapsack.py knapPI_2_1000_1000_1_running_time.csv GeneticProgramming t large_scale/knapPI_2_1000_1000_1 72505 - - --sp1 400
python3 ./01Knapsack.py knapPI_2_1000_1000_1_running_time.csv GeneticProgramming t large_scale/knapPI_2_1000_1000_1 72505 - - --sp1 500

# Ant colony on 250,300,350,400,500
python3 ./01Knapsack.py knapPI_2_1000_1000_1_running_time.csv AntColony t large_scale/knapPI_2_1000_1000_1 72505 - 250 --sp1 100
python3 ./01Knapsack.py knapPI_2_1000_1000_1_running_time.csv AntColony t large_scale/knapPI_2_1000_1000_1 72505 - 300 --sp1 100
python3 ./01Knapsack.py knapPI_2_1000_1000_1_running_time.csv AntColony t large_scale/knapPI_2_1000_1000_1 72505 - 350 --sp1 100
python3 ./01Knapsack.py knapPI_2_1000_1000_1_running_time.csv AntColony t large_scale/knapPI_2_1000_1000_1 72505 - 400 --sp1 100
python3 ./01Knapsack.py knapPI_2_1000_1000_1_running_time.csv AntColony t large_scale/knapPI_2_1000_1000_1 72505 - 500 --sp1 100

# Ant colony on number of ants 25,50,75,100,200
python3 ./01Knapsack.py knapPI_2_1000_1000_1_running_time.csv AntColony t large_scale/knapPI_2_1000_1000_1 72505 - 200 --sp1 25 --sp2 0.5 
python3 ./01Knapsack.py knapPI_2_1000_1000_1_running_time.csv AntColony t large_scale/knapPI_2_1000_1000_1 72505 - 200 --sp1 50 --sp2 0.5 
python3 ./01Knapsack.py knapPI_2_1000_1000_1_running_time.csv AntColony t large_scale/knapPI_2_1000_1000_1 72505 - 200 --sp1 75 --sp2 0.5
python3 ./01Knapsack.py knapPI_2_1000_1000_1_running_time.csv AntColony t large_scale/knapPI_2_1000_1000_1 72505 - 200 --sp1 100 --sp2 0.5 
python3 ./01Knapsack.py knapPI_2_1000_1000_1_running_time.csv AntColony t large_scale/knapPI_2_1000_1000_1 72505 - 200 --sp1 200 --sp2 0.5 

# Randomized on ratios 0.2,0.3,0.4,0.5
python3 ./01Knapsack.py knapPI_2_1000_1000_1_running_time.csv Randomized t large_scale/knapPI_2_1000_1000_1 72505 - 200 --sp1 0.2
python3 ./01Knapsack.py knapPI_2_1000_1000_1_running_time.csv Randomized t large_scale/knapPI_2_1000_1000_1 72505 - 200 --sp1 0.3 
python3 ./01Knapsack.py knapPI_2_1000_1000_1_running_time.csv Randomized t large_scale/knapPI_2_1000_1000_1 72505 - 200 --sp1 0.4
python3 ./01Knapsack.py knapPI_2_1000_1000_1_running_time.csv Randomized t large_scale/knapPI_2_1000_1000_1 72505 - 200 --sp1 0.5 

# large_scale/knapPI_2_2000_1000_1
python3 ./01Knapsack.py knapPI_2_2000_1000_1_running_time.csv BranchAndBound t large_scale/knapPI_2_2000_1000_1 72505 - - 
python3 ./01Knapsack.py knapPI_2_2000_1000_1_running_time.csv RatioSortGreedy t large_scale/knapPI_2_2000_1000_1 72505 - - 
python3 ./01Knapsack.py knapPI_2_2000_1000_1_running_time.csv ValueSortGreedy t large_scale/knapPI_2_2000_1000_1 72505 - - 
python3 ./01Knapsack.py knapPI_2_2000_1000_1_running_time.csv WeightSortGreedy t large_scale/knapPI_2_2000_1000_1 72505 - - 
python3 ./01Knapsack.py knapPI_2_2000_1000_1_running_time.csv RatiosortAndConvergeGreedy t large_scale/knapPI_2_2000_1000_1 72505 - - 
python3 ./01Knapsack.py knapPI_2_2000_1000_1_running_time.csv TopDownDynamicProgramming t large_scale/knapPI_2_2000_1000_1 72505 - - 
python3 ./01Knapsack.py knapPI_2_2000_1000_1_running_time.csv BottomUpDynamicProgramming t large_scale/knapPI_2_2000_1000_1 72505 - - 
python3 ./01Knapsack.py knapPI_2_2000_1000_1_running_time.csv FullyPolyNomial t large_scale/knapPI_2_2000_1000_1 72505 - - 
python3 ./01Knapsack.py knapPI_2_2000_1000_1_running_time.csv GeneticProgramming t large_scale/knapPI_2_2000_1000_1 72505 - - --sp1 50
python3 ./01Knapsack.py knapPI_2_2000_1000_1_running_time.csv AntColony t large_scale/knapPI_2_2000_1000_1 72505 - 50 --sp1 50 --sp2 0.5 
python3 ./01Knapsack.py knapPI_2_2000_1000_1_running_time.csv Randomized t large_scale/knapPI_2_2000_1000_1 72505 - 50 --sp1 0.1 

# we changed the number of individuals in genectic algorithm: 25, 75, 100, 200
# we changed the number of of iterations in ant colony: 25, 75, 100, 200
# we changed the number of iterations in randomized: 25, 75, 100, 200

python3 ./01Knapsack.py knapPI_2_2000_1000_1_running_time.csv GeneticProgramming t large_scale/knapPI_2_2000_1000_1 72505 - - --sp1 25
python3 ./01Knapsack.py knapPI_2_2000_1000_1_running_time.csv AntColony t large_scale/knapPI_2_2000_1000_1 72505 - 25 --sp1 50 --sp2 0.5 
python3 ./01Knapsack.py knapPI_2_2000_1000_1_running_time.csv Randomized t large_scale/knapPI_2_2000_1000_1 72505 - 25 
python3 ./01Knapsack.py knapPI_2_2000_1000_1_running_time.csv GeneticProgramming t large_scale/knapPI_2_2000_1000_1 72505 - - --sp1 75
python3 ./01Knapsack.py knapPI_2_2000_1000_1_running_time.csv AntColony t large_scale/knapPI_2_2000_1000_1 72505 - 75 --sp1 50 --sp2 0.5 
python3 ./01Knapsack.py knapPI_2_2000_1000_1_running_time.csv Randomized t large_scale/knapPI_2_2000_1000_1 72505 - 75 
python3 ./01Knapsack.py knapPI_2_2000_1000_1_running_time.csv GeneticProgramming t large_scale/knapPI_2_2000_1000_1 72505 - - --sp1 100
python3 ./01Knapsack.py knapPI_2_2000_1000_1_running_time.csv AntColony t large_scale/knapPI_2_2000_1000_1 72505 - 100 --sp1 50 --sp2 0.5 
python3 ./01Knapsack.py knapPI_2_2000_1000_1_running_time.csv Randomized t large_scale/knapPI_2_2000_1000_1 72505 - 100 
python3 ./01Knapsack.py knapPI_2_2000_1000_1_running_time.csv GeneticProgramming t large_scale/knapPI_2_2000_1000_1 72505 - - --sp1 200
python3 ./01Knapsack.py knapPI_2_2000_1000_1_running_time.csv AntColony t large_scale/knapPI_2_2000_1000_1 72505 - 200 --sp1 50 --sp2 0.5 
python3 ./01Knapsack.py knapPI_2_2000_1000_1_running_time.csv Randomized t large_scale/knapPI_2_2000_1000_1 72505 - 200 

# Genetic Programming on 250,300,350,400,500
python3 ./01Knapsack.py knapPI_2_2000_1000_1_running_time.csv GeneticProgramming t large_scale/knapPI_2_2000_1000_1 72505 - - --sp1 250
python3 ./01Knapsack.py knapPI_2_2000_1000_1_running_time.csv GeneticProgramming t large_scale/knapPI_2_2000_1000_1 72505 - - --sp1 300
python3 ./01Knapsack.py knapPI_2_2000_1000_1_running_time.csv GeneticProgramming t large_scale/knapPI_2_2000_1000_1 72505 - - --sp1 350
python3 ./01Knapsack.py knapPI_2_2000_1000_1_running_time.csv GeneticProgramming t large_scale/knapPI_2_2000_1000_1 72505 - - --sp1 400
python3 ./01Knapsack.py knapPI_2_2000_1000_1_running_time.csv GeneticProgramming t large_scale/knapPI_2_2000_1000_1 72505 - - --sp1 500

# Ant colony on 250,300,350,400,500
python3 ./01Knapsack.py knapPI_2_2000_1000_1_running_time.csv AntColony t large_scale/knapPI_2_2000_1000_1 72505 - 250 --sp1 100
python3 ./01Knapsack.py knapPI_2_2000_1000_1_running_time.csv AntColony t large_scale/knapPI_2_2000_1000_1 72505 - 300 --sp1 100
python3 ./01Knapsack.py knapPI_2_2000_1000_1_running_time.csv AntColony t large_scale/knapPI_2_2000_1000_1 72505 - 350 --sp1 100
python3 ./01Knapsack.py knapPI_2_2000_1000_1_running_time.csv AntColony t large_scale/knapPI_2_2000_1000_1 72505 - 400 --sp1 100
python3 ./01Knapsack.py knapPI_2_2000_1000_1_running_time.csv AntColony t large_scale/knapPI_2_2000_1000_1 72505 - 500 --sp1 100

# Ant colony on number of ants 25,50,75,100,200
python3 ./01Knapsack.py knapPI_2_2000_1000_1_running_time.csv AntColony t large_scale/knapPI_2_2000_1000_1 72505 - 200 --sp1 25 --sp2 0.5 
python3 ./01Knapsack.py knapPI_2_2000_1000_1_running_time.csv AntColony t large_scale/knapPI_2_2000_1000_1 72505 - 200 --sp1 50 --sp2 0.5 
python3 ./01Knapsack.py knapPI_2_2000_1000_1_running_time.csv AntColony t large_scale/knapPI_2_2000_1000_1 72505 - 200 --sp1 75 --sp2 0.5
python3 ./01Knapsack.py knapPI_2_2000_1000_1_running_time.csv AntColony t large_scale/knapPI_2_2000_1000_1 72505 - 200 --sp1 100 --sp2 0.5 
python3 ./01Knapsack.py knapPI_2_2000_1000_1_running_time.csv AntColony t large_scale/knapPI_2_2000_1000_1 72505 - 200 --sp1 200 --sp2 0.5 

# Randomized on ratios 0.2,0.3,0.4,0.5
python3 ./01Knapsack.py knapPI_2_2000_1000_1_running_time.csv Randomized t large_scale/knapPI_2_2000_1000_1 72505 - 200 --sp1 0.2
python3 ./01Knapsack.py knapPI_2_2000_1000_1_running_time.csv Randomized t large_scale/knapPI_2_2000_1000_1 72505 - 200 --sp1 0.3 
python3 ./01Knapsack.py knapPI_2_2000_1000_1_running_time.csv Randomized t large_scale/knapPI_2_2000_1000_1 72505 - 200 --sp1 0.4
python3 ./01Knapsack.py knapPI_2_2000_1000_1_running_time.csv Randomized t large_scale/knapPI_2_2000_1000_1 72505 - 200 --sp1 0.5 


################################################## 3

# large_scale/knapPI_3_200_1000_1
python3 ./01Knapsack.py knapPI_3_200_1000_1_running_time.csv BranchAndBound t large_scale/knapPI_3_200_1000_1 72505 - - 
python3 ./01Knapsack.py knapPI_3_200_1000_1_running_time.csv RatioSortGreedy t large_scale/knapPI_3_200_1000_1 72505 - - 
python3 ./01Knapsack.py knapPI_3_200_1000_1_running_time.csv ValueSortGreedy t large_scale/knapPI_3_200_1000_1 72505 - - 
python3 ./01Knapsack.py knapPI_3_200_1000_1_running_time.csv WeightSortGreedy t large_scale/knapPI_3_200_1000_1 72505 - - 
python3 ./01Knapsack.py knapPI_3_200_1000_1_running_time.csv RatiosortAndConvergeGreedy t large_scale/knapPI_3_200_1000_1 72505 - - 
python3 ./01Knapsack.py knapPI_3_200_1000_1_running_time.csv TopDownDynamicProgramming t large_scale/knapPI_3_200_1000_1 72505 - - 
python3 ./01Knapsack.py knapPI_3_200_1000_1_running_time.csv BottomUpDynamicProgramming t large_scale/knapPI_3_200_1000_1 72505 - - 
python3 ./01Knapsack.py knapPI_3_200_1000_1_running_time.csv FullyPolyNomial t large_scale/knapPI_3_200_1000_1 72505 - - 
python3 ./01Knapsack.py knapPI_3_200_1000_1_running_time.csv GeneticProgramming t large_scale/knapPI_3_200_1000_1 72505 - - --sp1 50
python3 ./01Knapsack.py knapPI_3_200_1000_1_running_time.csv AntColony t large_scale/knapPI_3_200_1000_1 72505 - 50 --sp1 50 --sp2 0.5 
python3 ./01Knapsack.py knapPI_3_200_1000_1_running_time.csv Randomized t large_scale/knapPI_3_200_1000_1 72505 - 50 --sp1 0.1 

# we changed the number of individuals in genectic algorithm: 25, 75, 100, 200
# we changed the number of of iterations in ant colony: 25, 75, 100, 200
# we changed the number of iterations in randomized: 25, 75, 100, 200

python3 ./01Knapsack.py knapPI_3_200_1000_1_running_time.csv GeneticProgramming t large_scale/knapPI_3_200_1000_1 72505 - - --sp1 25
python3 ./01Knapsack.py knapPI_3_200_1000_1_running_time.csv AntColony t large_scale/knapPI_3_200_1000_1 72505 - 25 --sp1 50 --sp2 0.5 
python3 ./01Knapsack.py knapPI_3_200_1000_1_running_time.csv Randomized t large_scale/knapPI_3_200_1000_1 72505 - 25 
python3 ./01Knapsack.py knapPI_3_200_1000_1_running_time.csv GeneticProgramming t large_scale/knapPI_3_200_1000_1 72505 - - --sp1 75
python3 ./01Knapsack.py knapPI_3_200_1000_1_running_time.csv AntColony t large_scale/knapPI_3_200_1000_1 72505 - 75 --sp1 50 --sp2 0.5 
python3 ./01Knapsack.py knapPI_3_200_1000_1_running_time.csv Randomized t large_scale/knapPI_3_200_1000_1 72505 - 75 
python3 ./01Knapsack.py knapPI_3_200_1000_1_running_time.csv GeneticProgramming t large_scale/knapPI_3_200_1000_1 72505 - - --sp1 100
python3 ./01Knapsack.py knapPI_3_200_1000_1_running_time.csv AntColony t large_scale/knapPI_3_200_1000_1 72505 - 100 --sp1 50 --sp2 0.5 
python3 ./01Knapsack.py knapPI_3_200_1000_1_running_time.csv Randomized t large_scale/knapPI_3_200_1000_1 72505 - 100 
python3 ./01Knapsack.py knapPI_3_200_1000_1_running_time.csv GeneticProgramming t large_scale/knapPI_3_200_1000_1 72505 - - --sp1 200
python3 ./01Knapsack.py knapPI_3_200_1000_1_running_time.csv AntColony t large_scale/knapPI_3_200_1000_1 72505 - 200 --sp1 50 --sp2 0.5 
python3 ./01Knapsack.py knapPI_3_200_1000_1_running_time.csv Randomized t large_scale/knapPI_3_200_1000_1 72505 - 200 

# Genetic Programming on 250,300,350,400,500
python3 ./01Knapsack.py knapPI_3_200_1000_1_running_time.csv GeneticProgramming t large_scale/knapPI_3_200_1000_1 72505 - - --sp1 250
python3 ./01Knapsack.py knapPI_3_200_1000_1_running_time.csv GeneticProgramming t large_scale/knapPI_3_200_1000_1 72505 - - --sp1 300
python3 ./01Knapsack.py knapPI_3_200_1000_1_running_time.csv GeneticProgramming t large_scale/knapPI_3_200_1000_1 72505 - - --sp1 350
python3 ./01Knapsack.py knapPI_3_200_1000_1_running_time.csv GeneticProgramming t large_scale/knapPI_3_200_1000_1 72505 - - --sp1 400
python3 ./01Knapsack.py knapPI_3_200_1000_1_running_time.csv GeneticProgramming t large_scale/knapPI_3_200_1000_1 72505 - - --sp1 500

# Ant colony on 250,300,350,400,500
python3 ./01Knapsack.py knapPI_3_200_1000_1_running_time.csv AntColony t large_scale/knapPI_3_200_1000_1 72505 - 250 --sp1 100
python3 ./01Knapsack.py knapPI_3_200_1000_1_running_time.csv AntColony t large_scale/knapPI_3_200_1000_1 72505 - 300 --sp1 100
python3 ./01Knapsack.py knapPI_3_200_1000_1_running_time.csv AntColony t large_scale/knapPI_3_200_1000_1 72505 - 350 --sp1 100
python3 ./01Knapsack.py knapPI_3_200_1000_1_running_time.csv AntColony t large_scale/knapPI_3_200_1000_1 72505 - 400 --sp1 100
python3 ./01Knapsack.py knapPI_3_200_1000_1_running_time.csv AntColony t large_scale/knapPI_3_200_1000_1 72505 - 500 --sp1 100

# Ant colony on number of ants 25,50,75,100,200
python3 ./01Knapsack.py knapPI_3_200_1000_1_running_time.csv AntColony t large_scale/knapPI_3_200_1000_1 72505 - 200 --sp1 25 --sp2 0.5 
python3 ./01Knapsack.py knapPI_3_200_1000_1_running_time.csv AntColony t large_scale/knapPI_3_200_1000_1 72505 - 200 --sp1 50 --sp2 0.5 
python3 ./01Knapsack.py knapPI_3_200_1000_1_running_time.csv AntColony t large_scale/knapPI_3_200_1000_1 72505 - 200 --sp1 75 --sp2 0.5
python3 ./01Knapsack.py knapPI_3_200_1000_1_running_time.csv AntColony t large_scale/knapPI_3_200_1000_1 72505 - 200 --sp1 100 --sp2 0.5 
python3 ./01Knapsack.py knapPI_3_200_1000_1_running_time.csv AntColony t large_scale/knapPI_3_200_1000_1 72505 - 200 --sp1 200 --sp2 0.5 

# Randomized on ratios 0.2,0.3,0.4,0.5
python3 ./01Knapsack.py knapPI_3_200_1000_1_running_time.csv Randomized t large_scale/knapPI_3_200_1000_1 72505 - 200 --sp1 0.2
python3 ./01Knapsack.py knapPI_3_200_1000_1_running_time.csv Randomized t large_scale/knapPI_3_200_1000_1 72505 - 200 --sp1 0.3 
python3 ./01Knapsack.py knapPI_3_200_1000_1_running_time.csv Randomized t large_scale/knapPI_3_200_1000_1 72505 - 200 --sp1 0.4
python3 ./01Knapsack.py knapPI_3_200_1000_1_running_time.csv Randomized t large_scale/knapPI_3_200_1000_1 72505 - 200 --sp1 0.5 


# large_scale/knapPI_3_1000_1000_1
python3 ./01Knapsack.py knapPI_3_1000_1000_1_running_time.csv BranchAndBound t large_scale/knapPI_3_1000_1000_1 72505 - - 
python3 ./01Knapsack.py knapPI_3_1000_1000_1_running_time.csv RatioSortGreedy t large_scale/knapPI_3_1000_1000_1 72505 - - 
python3 ./01Knapsack.py knapPI_3_1000_1000_1_running_time.csv ValueSortGreedy t large_scale/knapPI_3_1000_1000_1 72505 - - 
python3 ./01Knapsack.py knapPI_3_1000_1000_1_running_time.csv WeightSortGreedy t large_scale/knapPI_3_1000_1000_1 72505 - - 
python3 ./01Knapsack.py knapPI_3_1000_1000_1_running_time.csv RatiosortAndConvergeGreedy t large_scale/knapPI_3_1000_1000_1 72505 - - 
python3 ./01Knapsack.py knapPI_3_1000_1000_1_running_time.csv TopDownDynamicProgramming t large_scale/knapPI_3_1000_1000_1 72505 - - 
python3 ./01Knapsack.py knapPI_3_1000_1000_1_running_time.csv BottomUpDynamicProgramming t large_scale/knapPI_3_1000_1000_1 72505 - - 
python3 ./01Knapsack.py knapPI_3_1000_1000_1_running_time.csv FullyPolyNomial t large_scale/knapPI_3_1000_1000_1 72505 - - 
python3 ./01Knapsack.py knapPI_3_1000_1000_1_running_time.csv GeneticProgramming t large_scale/knapPI_3_1000_1000_1 72505 - - --sp1 50
python3 ./01Knapsack.py knapPI_3_1000_1000_1_running_time.csv AntColony t large_scale/knapPI_3_1000_1000_1 72505 - 50 --sp1 50 --sp2 0.5 
python3 ./01Knapsack.py knapPI_3_1000_1000_1_running_time.csv Randomized t large_scale/knapPI_3_1000_1000_1 72505 - 50 --sp1 0.1 

# we changed the number of individuals in genectic algorithm: 25, 75, 100, 200
# we changed the number of of iterations in ant colony: 25, 75, 100, 200
# we changed the number of iterations in randomized: 25, 75, 100, 200

python3 ./01Knapsack.py knapPI_3_1000_1000_1_running_time.csv GeneticProgramming t large_scale/knapPI_3_1000_1000_1 72505 - - --sp1 25
python3 ./01Knapsack.py knapPI_3_1000_1000_1_running_time.csv AntColony t large_scale/knapPI_3_1000_1000_1 72505 - 25 --sp1 50 --sp2 0.5 
python3 ./01Knapsack.py knapPI_3_1000_1000_1_running_time.csv Randomized t large_scale/knapPI_3_1000_1000_1 72505 - 25 
python3 ./01Knapsack.py knapPI_3_1000_1000_1_running_time.csv GeneticProgramming t large_scale/knapPI_3_1000_1000_1 72505 - - --sp1 75
python3 ./01Knapsack.py knapPI_3_1000_1000_1_running_time.csv AntColony t large_scale/knapPI_3_1000_1000_1 72505 - 75 --sp1 50 --sp2 0.5 
python3 ./01Knapsack.py knapPI_3_1000_1000_1_running_time.csv Randomized t large_scale/knapPI_3_1000_1000_1 72505 - 75 
python3 ./01Knapsack.py knapPI_3_1000_1000_1_running_time.csv GeneticProgramming t large_scale/knapPI_3_1000_1000_1 72505 - - --sp1 100
python3 ./01Knapsack.py knapPI_3_1000_1000_1_running_time.csv AntColony t large_scale/knapPI_3_1000_1000_1 72505 - 100 --sp1 50 --sp2 0.5 
python3 ./01Knapsack.py knapPI_3_1000_1000_1_running_time.csv Randomized t large_scale/knapPI_3_1000_1000_1 72505 - 100 
python3 ./01Knapsack.py knapPI_3_1000_1000_1_running_time.csv GeneticProgramming t large_scale/knapPI_3_1000_1000_1 72505 - - --sp1 200
python3 ./01Knapsack.py knapPI_3_1000_1000_1_running_time.csv AntColony t large_scale/knapPI_3_1000_1000_1 72505 - 200 --sp1 50 --sp2 0.5 
python3 ./01Knapsack.py knapPI_3_1000_1000_1_running_time.csv Randomized t large_scale/knapPI_3_1000_1000_1 72505 - 200 

# Genetic Programming on 250,300,350,400,500
python3 ./01Knapsack.py knapPI_3_1000_1000_1_running_time.csv GeneticProgramming t large_scale/knapPI_3_1000_1000_1 72505 - - --sp1 250
python3 ./01Knapsack.py knapPI_3_1000_1000_1_running_time.csv GeneticProgramming t large_scale/knapPI_3_1000_1000_1 72505 - - --sp1 300
python3 ./01Knapsack.py knapPI_3_1000_1000_1_running_time.csv GeneticProgramming t large_scale/knapPI_3_1000_1000_1 72505 - - --sp1 350
python3 ./01Knapsack.py knapPI_3_1000_1000_1_running_time.csv GeneticProgramming t large_scale/knapPI_3_1000_1000_1 72505 - - --sp1 400
python3 ./01Knapsack.py knapPI_3_1000_1000_1_running_time.csv GeneticProgramming t large_scale/knapPI_3_1000_1000_1 72505 - - --sp1 500

# Ant colony on 250,300,350,400,500
python3 ./01Knapsack.py knapPI_3_1000_1000_1_running_time.csv AntColony t large_scale/knapPI_3_1000_1000_1 72505 - 250 --sp1 100
python3 ./01Knapsack.py knapPI_3_1000_1000_1_running_time.csv AntColony t large_scale/knapPI_3_1000_1000_1 72505 - 300 --sp1 100
python3 ./01Knapsack.py knapPI_3_1000_1000_1_running_time.csv AntColony t large_scale/knapPI_3_1000_1000_1 72505 - 350 --sp1 100
python3 ./01Knapsack.py knapPI_3_1000_1000_1_running_time.csv AntColony t large_scale/knapPI_3_1000_1000_1 72505 - 400 --sp1 100
python3 ./01Knapsack.py knapPI_3_1000_1000_1_running_time.csv AntColony t large_scale/knapPI_3_1000_1000_1 72505 - 500 --sp1 100

# Ant colony on number of ants 25,50,75,100,200
python3 ./01Knapsack.py knapPI_3_1000_1000_1_running_time.csv AntColony t large_scale/knapPI_3_1000_1000_1 72505 - 200 --sp1 25 --sp2 0.5 
python3 ./01Knapsack.py knapPI_3_1000_1000_1_running_time.csv AntColony t large_scale/knapPI_3_1000_1000_1 72505 - 200 --sp1 50 --sp2 0.5 
python3 ./01Knapsack.py knapPI_3_1000_1000_1_running_time.csv AntColony t large_scale/knapPI_3_1000_1000_1 72505 - 200 --sp1 75 --sp2 0.5
python3 ./01Knapsack.py knapPI_3_1000_1000_1_running_time.csv AntColony t large_scale/knapPI_3_1000_1000_1 72505 - 200 --sp1 100 --sp2 0.5 
python3 ./01Knapsack.py knapPI_3_1000_1000_1_running_time.csv AntColony t large_scale/knapPI_3_1000_1000_1 72505 - 200 --sp1 200 --sp2 0.5 

# Randomized on ratios 0.2,0.3,0.4,0.5
python3 ./01Knapsack.py knapPI_3_1000_1000_1_running_time.csv Randomized t large_scale/knapPI_3_1000_1000_1 72505 - 200 --sp1 0.2
python3 ./01Knapsack.py knapPI_3_1000_1000_1_running_time.csv Randomized t large_scale/knapPI_3_1000_1000_1 72505 - 200 --sp1 0.3 
python3 ./01Knapsack.py knapPI_3_1000_1000_1_running_time.csv Randomized t large_scale/knapPI_3_1000_1000_1 72505 - 200 --sp1 0.4
python3 ./01Knapsack.py knapPI_3_1000_1000_1_running_time.csv Randomized t large_scale/knapPI_3_1000_1000_1 72505 - 200 --sp1 0.5 

# large_scale/knapPI_3_2000_1000_1
python3 ./01Knapsack.py knapPI_3_2000_1000_1_running_time.csv BranchAndBound t large_scale/knapPI_3_2000_1000_1 72505 - - 
python3 ./01Knapsack.py knapPI_3_2000_1000_1_running_time.csv RatioSortGreedy t large_scale/knapPI_3_2000_1000_1 72505 - - 
python3 ./01Knapsack.py knapPI_3_2000_1000_1_running_time.csv ValueSortGreedy t large_scale/knapPI_3_2000_1000_1 72505 - - 
python3 ./01Knapsack.py knapPI_3_2000_1000_1_running_time.csv WeightSortGreedy t large_scale/knapPI_3_2000_1000_1 72505 - - 
python3 ./01Knapsack.py knapPI_3_2000_1000_1_running_time.csv RatiosortAndConvergeGreedy t large_scale/knapPI_3_2000_1000_1 72505 - - 
python3 ./01Knapsack.py knapPI_3_2000_1000_1_running_time.csv TopDownDynamicProgramming t large_scale/knapPI_3_2000_1000_1 72505 - - 
python3 ./01Knapsack.py knapPI_3_2000_1000_1_running_time.csv BottomUpDynamicProgramming t large_scale/knapPI_3_2000_1000_1 72505 - - 
python3 ./01Knapsack.py knapPI_3_2000_1000_1_running_time.csv FullyPolyNomial t large_scale/knapPI_3_2000_1000_1 72505 - - 
python3 ./01Knapsack.py knapPI_3_2000_1000_1_running_time.csv GeneticProgramming t large_scale/knapPI_3_2000_1000_1 72505 - - --sp1 50
python3 ./01Knapsack.py knapPI_3_2000_1000_1_running_time.csv AntColony t large_scale/knapPI_3_2000_1000_1 72505 - 50 --sp1 50 --sp2 0.5 
python3 ./01Knapsack.py knapPI_3_2000_1000_1_running_time.csv Randomized t large_scale/knapPI_3_2000_1000_1 72505 - 50 --sp1 0.1 

# we changed the number of individuals in genectic algorithm: 25, 75, 100, 200
# we changed the number of of iterations in ant colony: 25, 75, 100, 200
# we changed the number of iterations in randomized: 25, 75, 100, 200

python3 ./01Knapsack.py knapPI_3_2000_1000_1_running_time.csv GeneticProgramming t large_scale/knapPI_3_2000_1000_1 72505 - - --sp1 25
python3 ./01Knapsack.py knapPI_3_2000_1000_1_running_time.csv AntColony t large_scale/knapPI_3_2000_1000_1 72505 - 25 --sp1 50 --sp2 0.5 
python3 ./01Knapsack.py knapPI_3_2000_1000_1_running_time.csv Randomized t large_scale/knapPI_3_2000_1000_1 72505 - 25 
python3 ./01Knapsack.py knapPI_3_2000_1000_1_running_time.csv GeneticProgramming t large_scale/knapPI_3_2000_1000_1 72505 - - --sp1 75
python3 ./01Knapsack.py knapPI_3_2000_1000_1_running_time.csv AntColony t large_scale/knapPI_3_2000_1000_1 72505 - 75 --sp1 50 --sp2 0.5 
python3 ./01Knapsack.py knapPI_3_2000_1000_1_running_time.csv Randomized t large_scale/knapPI_3_2000_1000_1 72505 - 75 
python3 ./01Knapsack.py knapPI_3_2000_1000_1_running_time.csv GeneticProgramming t large_scale/knapPI_3_2000_1000_1 72505 - - --sp1 100
python3 ./01Knapsack.py knapPI_3_2000_1000_1_running_time.csv AntColony t large_scale/knapPI_3_2000_1000_1 72505 - 100 --sp1 50 --sp2 0.5 
python3 ./01Knapsack.py knapPI_3_2000_1000_1_running_time.csv Randomized t large_scale/knapPI_3_2000_1000_1 72505 - 100 
python3 ./01Knapsack.py knapPI_3_2000_1000_1_running_time.csv GeneticProgramming t large_scale/knapPI_3_2000_1000_1 72505 - - --sp1 200
python3 ./01Knapsack.py knapPI_3_2000_1000_1_running_time.csv AntColony t large_scale/knapPI_3_2000_1000_1 72505 - 200 --sp1 50 --sp2 0.5 
python3 ./01Knapsack.py knapPI_3_2000_1000_1_running_time.csv Randomized t large_scale/knapPI_3_2000_1000_1 72505 - 200 

# Genetic Programming on 250,300,350,400,500
python3 ./01Knapsack.py knapPI_3_2000_1000_1_running_time.csv GeneticProgramming t large_scale/knapPI_3_2000_1000_1 72505 - - --sp1 250
python3 ./01Knapsack.py knapPI_3_2000_1000_1_running_time.csv GeneticProgramming t large_scale/knapPI_3_2000_1000_1 72505 - - --sp1 300
python3 ./01Knapsack.py knapPI_3_2000_1000_1_running_time.csv GeneticProgramming t large_scale/knapPI_3_2000_1000_1 72505 - - --sp1 350
python3 ./01Knapsack.py knapPI_3_2000_1000_1_running_time.csv GeneticProgramming t large_scale/knapPI_3_2000_1000_1 72505 - - --sp1 400
python3 ./01Knapsack.py knapPI_3_2000_1000_1_running_time.csv GeneticProgramming t large_scale/knapPI_3_2000_1000_1 72505 - - --sp1 500

# Ant colony on 250,300,350,400,500
python3 ./01Knapsack.py knapPI_3_2000_1000_1_running_time.csv AntColony t large_scale/knapPI_3_2000_1000_1 72505 - 250 --sp1 100
python3 ./01Knapsack.py knapPI_3_2000_1000_1_running_time.csv AntColony t large_scale/knapPI_3_2000_1000_1 72505 - 300 --sp1 100
python3 ./01Knapsack.py knapPI_3_2000_1000_1_running_time.csv AntColony t large_scale/knapPI_3_2000_1000_1 72505 - 350 --sp1 100
python3 ./01Knapsack.py knapPI_3_2000_1000_1_running_time.csv AntColony t large_scale/knapPI_3_2000_1000_1 72505 - 400 --sp1 100
python3 ./01Knapsack.py knapPI_3_2000_1000_1_running_time.csv AntColony t large_scale/knapPI_3_2000_1000_1 72505 - 500 --sp1 100

# Ant colony on number of ants 25,50,75,100,200
python3 ./01Knapsack.py knapPI_3_2000_1000_1_running_time.csv AntColony t large_scale/knapPI_3_2000_1000_1 72505 - 200 --sp1 25 --sp2 0.5 
python3 ./01Knapsack.py knapPI_3_2000_1000_1_running_time.csv AntColony t large_scale/knapPI_3_2000_1000_1 72505 - 200 --sp1 50 --sp2 0.5 
python3 ./01Knapsack.py knapPI_3_2000_1000_1_running_time.csv AntColony t large_scale/knapPI_3_2000_1000_1 72505 - 200 --sp1 75 --sp2 0.5
python3 ./01Knapsack.py knapPI_3_2000_1000_1_running_time.csv AntColony t large_scale/knapPI_3_2000_1000_1 72505 - 200 --sp1 100 --sp2 0.5 
python3 ./01Knapsack.py knapPI_3_2000_1000_1_running_time.csv AntColony t large_scale/knapPI_3_2000_1000_1 72505 - 200 --sp1 200 --sp2 0.5 

# Randomized on ratios 0.2,0.3,0.4,0.5
python3 ./01Knapsack.py knapPI_3_2000_1000_1_running_time.csv Randomized t large_scale/knapPI_3_2000_1000_1 72505 - 200 --sp1 0.2
python3 ./01Knapsack.py knapPI_3_2000_1000_1_running_time.csv Randomized t large_scale/knapPI_3_2000_1000_1 72505 - 200 --sp1 0.3 
python3 ./01Knapsack.py knapPI_3_2000_1000_1_running_time.csv Randomized t large_scale/knapPI_3_2000_1000_1 72505 - 200 --sp1 0.4
python3 ./01Knapsack.py knapPI_3_2000_1000_1_running_time.csv Randomized t large_scale/knapPI_3_2000_1000_1 72505 - 200 --sp1 0.5 
