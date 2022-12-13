# Running time
python TestingModule/multipleKnap.py ResultMultiple.csv BruteForce t instance_p01.txt - - -
python TestingModule/multipleKnap.py ResultMultiple.csv RatiosortAndConvergeGreedy t instance_p01.txt - - -
python TestingModule/multipleKnap.py ResultMultiple.csv BottomUpDynamicProgramming t instance_p01.txt - - -
python TestingModule/multipleKnap.py ResultMultiple.csv Randomized t instance_p01.txt - - 10

# Efficiency
python TestingModule/multipleKnap.py ResultMultiple.csv BruteForce t instance_p01.txt - 10 -
python TestingModule/multipleKnap.py ResultMultiple.csv RatiosortAndConvergeGreedy t instance_p01.txt - 10 -
python TestingModule/multipleKnap.py ResultMultiple.csv BottomUpDynamicProgramming t instance_p01.txt - 10 -
python TestingModule/multipleKnap.py ResultMultiple.csv Randomized t instance_p01.txt - 10 10