#!/bin/bash

# Running time
python3 TestingModule/multipleKnap.py ResultMultiple.csv BruteForce t instance_p01.txt - - -
python3 TestingModule/multipleKnap.py ResultMultiple.csv RatiosortAndConvergeGreedy t instance_p01.txt - - -
python3 TestingModule/multipleKnap.py ResultMultiple.csv BottomUpDynamicProgramming t instance_p01.txt - - -
python3 TestingModule/multipleKnap.py ResultMultiple.csv Randomized t instance_p01.txt - - 10

# Efficiency
python3 TestingModule/multipleKnap.py ResultMultiple.csv BruteForce t instance_p01.txt - 10 -
python3 TestingModule/multipleKnap.py ResultMultiple.csv RatiosortAndConvergeGreedy t instance_p01.txt - 10 -
python3 TestingModule/multipleKnap.py ResultMultiple.csv BottomUpDynamicProgramming t instance_p01.txt - 10 -
python3 TestingModule/multipleKnap.py ResultMultiple.csv Randomized t instance_p01.txt - 10 10