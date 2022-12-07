# Advanced Algorithms: 2022 - 2023

## Knapsack Problem

The knapsack problem has been known since the end of the century 19e, thanks to George Ballard Mathews. This problem has many applications, first in an asymmetric encryption algorithm introduced by Martin Hellman, Ralph Merkle and Whitfield Diffie in 1976. It is also used for investment management support systems, to optimize the loading of boats or planes and other applications. But this problem is best known as an optimization problem to fill a bag, which justifies its name.

## Repository Structure

This repository contains different algorithms for two variations of the knapsack problem: 0/1 Knapsack and Multiple Knapsack. All implementations were made using **Python3 programming language**.

For the first variations, all the algorithms are located in the 01Knapsack/Algorithms directory, where each one of the algorithms are separated in different directories, among them:

- Ant Colony
- Branch and Bound
- Brute Force
- Dynamic Programming
- Fully Polynomial 
- Genetic Algorithm
- Greedy Algorithms
- Randomized Approach

Besides the algorithms, there is the generator if instances in the route 01Knapsack/Generators. As well as the instances used to executed the algorithms: 01Knapsack/Inputs and their proper outputs of each test made: 01Knapsack/Output. Finally, 01Knapsack/classes contains different modules used in the execution of the algorithms.

For the second variation, the structure is similar as the mentioned above, the only difference is that there are few implementations:

- Brute Force
- Dynamic Programming
- Greedy Algorithm
- Randomized Approach.

Finally, the TestingModule contains the program which executes automatically all the algorithms of the 0/1 knapsack problem. Here is the principle of the module: In order to test all our algorithms, we created a testing module. This testing module allow the user to test any algorithm. It can be executed
through a shell command. Also, It will call the each algorithm, run it with aspecific instance and give the answer in a comma separated file (csv).

## Usage

In order to execute the algorithms first all the requirements should be installed in the following way: 

    pip3 install -r requirements.txt 

### Single Algorithm Execution

In order to execute a specific algorithm you need to do the following commands from the root directory:

    cd TestingModule
    python3 01Knapsack.py [OutputFileName] [AlgoName] [TypeFile] [InstanceName] [MTheoricalValue] [MTime] [MIteration]

Where each parameter is explained below:

- **AlgoName** : the name of the algorithm we want to run
- **TypeFile** : type of the instance file - t : for txt and c for csv
- **InstanceName** : file containing the instance of the knapsack problem
- **MTheoreticalValue** : optimal value of the problem. It is '-' if the theoretical value is unknown
- **MTime** : the time in milliseconds to run the algorithm. '-' if we don't want to specify the time
- **MIteration** : the number of iterations. This one is for algorithms that use iterations: randomized and ant colony. '-' if an algorithm doesn't need it
- **Special parameters**: For genetic algorithm, the extra parameter is the number of individuals that we specify by adding to the command line above :--sp1 number_individuals This value is an integer one. For randomized algorithm : We need an extra parameter called the selection ratio. To specify it, we add to the command line : --sp1 selection_ratio Its value is between 0.1 and 0.5. For ant colony : We need two extra parameters : The number of ants : any integer value. And, the decay : [0,1] to specify them, we add to the command line : --sp1 number_ants --sp2 decay

The output of this execution will be stored in the folder 01Knapsack/Output. Furthermore, the input used should be an existing instance from 01Knapsack/Input.

### Multiple Algorithm Execution of the 0/1 Knapsack Problem

In order to execute plenty algorithms at the same time, a shell (or bash) program should be create. One example is: execute_me.bat. When multiple test will be executed automatically.

    .\execute_me.bat (In windows)
    .\execute_me.bash (In Linux)

### Multiple Algorithm Execution of the 0/1 Multiple Knapsack Problem

In order to execute plenty algorithms at the same time, a shell (or bash) program should be create. One example is: execute_me.bat. When multiple test will be executed automatically.

    .\execute_multiple.bat (In windows)
    .\execute_multiple.bash (In Linux)

### Executing Instance Generator

In order to create a new instance, the following commands should be executed:

    cd 01Knapsack/Generators
    python3 01_ks_1_gen.py [nb_items] [knapsack_weight] [range] [distribution]

Where each parameter is:

- **nb_items** : total number of items
- **knapsack_weight** : maximum capacity of the sack
- **range** : maximum weight that an item can have. [1 ,knapsack_weight - knapsack_weight/4]
- **distribution** : in {1,2,3} with 
                1 : no correlation between weights and values
                2 : weak correlation between weights and values
                3 : high correlation between weights and values