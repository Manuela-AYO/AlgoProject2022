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
import set_multiple_knapsack as m

# ---------------------------------USEFUL FUNCTION------------------------------------ #

def testValue(index, object):
    value = 0
    for i in index:
        value = value + object.data.V[i]
    return value

def testWeight(index, bag, object):
    value = [0]*len(object.wmax)
    for i in range(len(index)):
        value[bag[i]] = value[bag[i]] + object.data.W[index[i]]
    return value

def maxWeight(a, c):
    answer = True
    for i in range(len(a)):
        if a[i] > c[i]:
            answer = False
    return answer


# ---------------------------------MAIN FUNCTION------------------------------------ #
def bruteforce(setM : m.SetMultipleKnapSack, time_min=0):
    print("-----------Preprocess--------")
    # timing module 
    start_time = datetime.datetime.now()
    iteration_time = datetime.timedelta(milliseconds=int(time_min))
    end_time = start_time + iteration_time

    # tester toutes les solutions (a parmis n) quelque soit a entre 1 et n
    bestValue = 0
    bestValueWeight = []
    bestAnswer = []
    curentValue = 0
    curentWeight = []
    curentAnswer = []

    print("-----------Algo Brute_Froce Running--------")

    for a in range(1, setM.n + 1):
        # init first answer
        curentAnswer = []
        for i in range(a):
            curentAnswer.append(i)
        # test all combination of a in set01.n
        while True:
            print("A : ",curentAnswer)

            # choose each bag from 0 to number of bag - 1 !
            bag = [0]*len(curentAnswer)
            for s1 in range(setM.nsack**len(bag)):
                print(bag)
                curentValue = testValue(curentAnswer, setM)
                curentWeight = testWeight(curentAnswer, bag, setM)
                if curentValue > bestValue and maxWeight(curentWeight,setM.wmax):
                    bestValue = curentValue
                    bestValueWeight = curentWeight
                    bestAnswer = curentAnswer[:]
                
                for s in range(len(bag)):
                    if bag[s] + 1 >= setM.nsack:
                        bag[s] = 0
                    else:
                        bag[s] = bag[s]+1
                        break

            end = 1
            for i in range(a):
                index = a - i - 1
                if (curentAnswer[index] < setM.n - i - 1):
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
        print(" Object : V = ",setM.data.V[i]," W = ",setM.data.W[i])
    print("values : ", bestValue)
    print("weight : ", bestValueWeight)
    print("number of data :", len(bestAnswer))

    binaryBestAnswer = set01.convertListAnswerToBinaryList(bestAnswer)

    return binaryBestAnswer, len(bestAnswer), bestValue, bestValueWeight

# ---------------------------------EXECUTE FILE------------------------------------ #
if __name__ == '__main__':
    # ----Upload Data------ #
    myObject = m.SetMultipleKnapSack()
    # myObject.uploadFile("Landrytest.csv","c")
    myObject.uploadFile("instance_p01.txt", 't')
    print("Data for tes")
    print(myObject)
    print("--------")
    bruteforce(myObject, 0)






