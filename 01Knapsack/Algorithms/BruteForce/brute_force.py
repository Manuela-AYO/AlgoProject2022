'''
Description: This file contain the bruteForce algo and a way to execute the file localy
Author: Landry Bailly
Date: 21/11/2022
Update: 23/11/2022 --> adding timing module
Usage: import the file and use the bruteForce algo, or execute the file localy. No param, it will take default input value
Input: For the main function, 
    -object Set01KnapSack with data already uploaded
    -Maximum time in min
Output: Answer of the problem,
    -total value we can put in the bag (float)
    -table with all the index (int) of the oject we take
    -len of this table
    -total answer weight
References: ...
'''
# ---------------------------------INPORT------------------------------------ #
import pandas
import numpy
from natsort import index_natsorted
import datetime

import sys, os
sys.path.append(os.path.join(os.path.dirname(__file__),'..', '..', "classes"))
import set_knapsack as m

# ---------------------------------USEFUL FUNCTION------------------------------------ #

def testValue(index, object):
    value = 0
    for i in index:
        value = value + object.data.V[i]
    return value

def testWeight(index, object):
    value = 0
    for i in index:
        value = value + object.data.W[i]
    return value



# ---------------------------------MAIN FUNCTION------------------------------------ #
def bruteforce(set01 : m.Set01KnapSack, time_min=0):
    print("-----------Preprocess--------")
    # timing module 
    start_time = datetime.datetime.now()
    iteration_time = datetime.timedelta(milliseconds=int(time_min))
    end_time = start_time + iteration_time

    # tester toutes les solutions (a parmis n) quelque soit a entre 1 et n
    bestValue = 0
    bestValueWeight = 0
    bestAnswer = []
    curentValue = 0
    curentWeight = 0
    curentAnswer = []

    print("-----------Algo Brute_Froce Running--------")

    for a in range(1, set01.n + 1):
        # init first answer
        curentAnswer = []
        for i in range(a):
            curentAnswer.append(i)
        # test all solutions
        while True:
            # print(curentAnswer)
            curentValue = testValue(curentAnswer, set01)
            curentWeight = testWeight(curentAnswer, set01)
            if curentValue > bestValue and curentWeight <= set01.wmax:
                bestValue = curentValue
                bestValueWeight = curentWeight
                bestAnswer = curentAnswer[:]

            end = 1
            for i in range(a):
                index = a - i - 1
                if (curentAnswer[index] < set01.n - i - 1):
                    end = 0
                    curentAnswer[index] = curentAnswer[index] + 1
                    for j in range(a - i, a):
                        curentAnswer[j] = curentAnswer[index] + j - index
                    break

            if end==1:
                break

            if time_min != 0:
                current_time = datetime.datetime.now()
                if current_time > end_time:
                    break

    # ------Answer------- #
    print("----BEST SOLUTION----")
    for i in bestAnswer:
        print(" Object : V = ",set01.data.V[i]," W = ",set01.data.W[i])
    print("values : ", bestValue)
    print("weight : ", bestValueWeight)
    print("number of data :", len(bestAnswer))

    binaryBestAnswer = set01.convertListAnswerToBinaryList(bestAnswer)

    return binaryBestAnswer, len(bestAnswer), bestValue, bestValueWeight

# ---------------------------------EXECUTE FILE------------------------------------ #
if __name__ == '__main__':
    # ----Upload Data------ #
    myObject = m.Set01KnapSack()
    # myObject.uploadFile("Landrytest.csv","c")
    myObject.uploadFile("Landrytest.csv", 'c')
    print("Data for tes")
    print(myObject)
    print("--------")
    bruteforce(myObject, 1)






