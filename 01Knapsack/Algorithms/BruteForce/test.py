

import pandas
import numpy
from natsort import index_natsorted

import sys, os
sys.path.append(os.path.join(os.path.dirname(__file__),'..', '..', "Class"))
import Set01KnackSack as m


# ----Upload Data------ #
test = m.Set01KnackSack().uploadCsvFile("0_1_kp_REF_10_100_221016.csv")
test.display()


def testValue(objects):
    value = 0
    for i in objects:
        value = value + test.data.V[i]
    return value

def testWeight(objects):
    value = 0
    for i in objects:
        value = value + test.data.W[i]
    return value

# ------Algo------- #

# tester toutes les solutions (a parmis n) quelque soit a entre 1 et n
bestValue = 0
bestAnswer = []
curentValue = 0
curentWeight = 0
curentAnswer = []
for a in range(1, test.n + 1):
    # init first answer
    curentAnswer = []
    for i in range(a):
        curentAnswer.append(i)
    while True:
        print(curentAnswer)
        curentValue = testValue(curentAnswer)
        curentWeight = testWeight(curentAnswer)
        if curentValue > bestValue and curentWeight <= test.wmax:
            bestValue = curentValue
            bestAnswer = curentAnswer[:]

        end = 1
        for i in range(a):
            index = a - i - 1
            if (curentAnswer[index] < test.n - i - 1):
                end = 0
                curentAnswer[index] = curentAnswer[index] + 1
                for j in range(a - i, a):
                    curentAnswer[j] = curentAnswer[index] + j - index
                break

        if end==1:
            break

# ------Answer------- #
print("----BEST SOLUTION----")
print(bestValue)
print(bestAnswer)
for i in bestAnswer:
    print(" Object : V = ",test.data.V[i]," W = ",test.data.W[i])

