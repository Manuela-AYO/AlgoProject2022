'''
Description: This file contain an invented algo based on the ratio_sort_greedy method and a way to execute the file localy
Author: Landry Bailly
Date: 06/12/2022
Update:
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
pandas.options.mode.chained_assignment = None
import numpy
from natsort import index_natsorted
import datetime

import sys, os
sys.path.append(os.path.join(os.path.dirname(__file__),'..', '..', "classes"))
import set_multiple_knapsack as m


# ---------------------------------USEFUL FUNCTION------------------------------------ #

# ---------------------------------MAIN FUNCTION------------------------------------ #

def ratio_sort_and_converge(set01 : m.SetMultipleKnapSack, time_min=0):
    # ------ time module ---------- #
    start_time = datetime.datetime.now()
    iteration_time = datetime.timedelta(milliseconds=int(time_min))
    end_time = start_time + iteration_time


    # ------ Proprocess, adapt data ------- #
    curent = pandas.DataFrame({"W":set01.data.W, "V":set01.data.V, "GlobalV":[0.0]*len(set01.data), "VoverW":[0.0]*len(set01.data), "originalIndex":[0]*len(set01.data)})
    for i in range(len(curent)):
            curent.originalIndex[i] = int(i)
    
    
    for i in range(len(curent)):
        curent.VoverW[i] = curent.V[i] / curent.W[i]
        curent.GlobalV[i] = curent.VoverW[i]

    # ------Algo------- #
    
    answerOriginIndex = []
    totalValue = []
    totalWeight = []

    print("-----------Algo Ratio_sort_and_converge Running--------")
    
    for i in range(len(curent)**2): # it is the security, to avoid too much loop. Because it would mean the algo is useless. 

        # sort data by VoverW
        curent = curent.sort_values(['GlobalV','VoverW'], ascending=False)
        curent = curent.reset_index(drop=True)
        
        # take the first data in order to full the KnackSack
        sizeleft = [0]*len(set01.wmax)
        for w in range(len(sizeleft)):
            sizeleft[w] = set01.wmax[w]

        answer = [] # do double table for bag then item
        for b in range(len(set01.wmax)):
            answer.append([])
        answerOriginIndex.append([])
        totalValue.append(0.0)

        # more difficult than just taking the first one, in wich bag do we put it ?
        # test even one answer for every bag it is number of bag ^ number of object in answer --> it is not polynomial
        # i have to find a faster way. 

        for d in range(len(curent)):
            # first try to fill one bag
            caseit = False
            for b in range(len(sizeleft)):
                if sizeleft[b] == curent.W[d]:
                    answer[b].append(d)
                    sizeleft[b] = sizeleft[b] - curent.W[d]
                    answerOriginIndex[i].append(curent.originalIndex[d])
                    totalValue[i] = totalValue[i] + curent.V[d]
                    caseit = True
                    break
            if caseit == False :
                for b in range(len(sizeleft)):
                    if curent.W[d] <= sizeleft[b]:
                        answer[b].append(d)
                        sizeleft[b] = sizeleft[b] - curent.W[d]
                        answerOriginIndex[i].append(curent.originalIndex[d])
                        totalValue[i] = totalValue[i] + curent.V[d]
                        caseit = True
                        break
        # print("curent value is ",totalValue[i], "step ",i)
        totalWeight.append([])
        for w in range(len(set01.wmax)):
            totalWeight[i].append(set01.wmax[w] - sizeleft[w])

        if (i > 0 and totalValue[i] <= totalValue[i-1]):
            break

        if time_min != 0:
            current_time = datetime.datetime.now()
            if current_time > end_time:
                break

        someWeight = 0
        for w in range(len(set01.wmax)):
            # print(set01.wmax[w])
            someWeight =someWeight+ set01.wmax[w]
        for d in answer:
            # print(totalValue[i], someWeight)
            curent.GlobalV[d] = totalValue[i] / someWeight

    if (len(totalValue) > 1):
        if (totalValue[len(totalValue) - 2] >= totalValue[len(totalValue) - 1]):
            bestValue = totalValue[len(totalValue) - 2]
            bestValueWeight = totalWeight[len(totalWeight) - 2]
            bestAnswer = answerOriginIndex[len(answerOriginIndex) - 2]
        else: # can only happend if the algo stoped befor the end because of time condition
            bestValue = totalValue[len(totalValue) - 2]
            bestValueWeight = totalWeight[len(totalWeight) - 2]
            bestAnswer = answerOriginIndex[len(answerOriginIndex) - 2]
    else: # can only happend if the algo stoped befor the end because of time condition and had only time for one loop. Normaly speaking, we shouldn't go there, it's just in case, to prevent from bug
        bestValue = totalValue[0]
        bestValueWeight = totalWeight[0]
        bestAnswer = answerOriginIndex[0]
        print("ERROR : the algo did only one loop and the preprocess, time condition may be too short")

    binaryBestAnswer = set01.convertListAnswerToBinaryList(bestAnswer)
    
    return binaryBestAnswer, len(bestAnswer), bestValue, bestValueWeight

# ---------------------------------EXECUTE FILE------------------------------------ #
if __name__ == '__main__':
    # ----Upload Data------ #
    myObject = m.SetMultipleKnapSack()
    # myObject.uploadFile("low-dimensional\f2_l_d_kp_20_878", 't') # don't work, WHY ???
    myObject.uploadFile("instance_p01.txt", 't')
    
    # myObject.uploadFile("large_scale\knapPI_3_2000_1000_1", 't')
    # myObject.uploadFile("artificial/01_knap_un_75_150_21.csv", 'c')
    
    # create a difficult test because algo stop at first step. 

    print("Data for test")
    print(myObject)
    print("--------")
    # ratio_sort_and_converge(myObject)





