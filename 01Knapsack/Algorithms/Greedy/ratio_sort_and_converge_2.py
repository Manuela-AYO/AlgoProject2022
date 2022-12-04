'''
Description: This file contain an invented algo based on the ratio_sort_greedy method and a way to execute the file localy
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
pandas.options.mode.chained_assignment = None
import numpy
from natsort import index_natsorted
import datetime

import sys, os
sys.path.append(os.path.join(os.path.dirname(__file__),'..', '..', "classes"))
import set_knapsack as m


# ---------------------------------USEFUL FUNCTION------------------------------------ #

# ---------------------------------MAIN FUNCTION------------------------------------ #

def ratio_sort_and_converge(set01 : m.Set01KnapSack, time_min=0):
    print("-----------Preprocess--------")
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

    globalAnswer = [0]*len(set01.data.V)
    nbAnswer = 0
    globalValue = 0
    globalWeight = 0
    globalSizeleft = set01.wmax
    
    answerOriginIndex = []
    totalValue = []
    totalWeight = []

    print("-----------Algo Ratio_sort_and_converge Running--------")
    
    for answer in range(len(curent)):

        # --- algo de base --- #
        for i in range(len(curent)**2): # it is the security, to avoid too much loop. Because it would mean the algo is useless. 
            # sort data by VoverW
            curent = curent.sort_values(['GlobalV','VoverW'], ascending=False)
            curent = curent.reset_index(drop=True)
        
            # print("step n ",i)
            # print(curent)
            
            # take the first data in order to full the KnackSack
            sizeleft = globalSizeleft
            answer = []
            answerOriginIndex.append([])
            totalValue.append(0.0)
            for d in range(len(curent)):
                if (curent.W[d] <= sizeleft):
                    answer.append(d)
                    answerOriginIndex[i].append(curent.originalIndex[d])
                    totalValue[i] = totalValue[i] + curent.V[d]
                    sizeleft = sizeleft - curent.W[d]
        
            # print("curent value is ",totalValue[i], "step ",i)
            totalWeight.append(set01.wmax - sizeleft)

            if (i > 0 and totalValue[i] <= totalValue[i-1]):
                break

            if time_min != 0:
                current_time = datetime.datetime.now()
                if current_time > end_time:
                    break

            for d in answer:
                curent.GlobalV[d] = totalValue[i] / globalSizeleft

        # ---- prend la meilleur et refait ---- #
        # print("-----------Answers--------")
        # print("indexs :")
        # print(answerOriginIndex)
        # print("values :")
        # print(totalValue)
        # print("Weight :")
        # print(totalWeight)
        if (len(totalValue) > 1):
            if (totalValue[len(totalValue) - 2] >= totalValue[len(totalValue) - 1]):
                bestAnswer = answerOriginIndex[len(answerOriginIndex) - 2]
            else: # can only happend if the algo stoped befor the end because of time condition
                bestAnswer = answerOriginIndex[len(answerOriginIndex) - 2]
        else: # can only happend if the algo stoped befor the end because of time condition and had only time for one loop. Normaly speaking, we shouldn't go there, it's just in case, to prevent from bug
            bestAnswer = answerOriginIndex[0]
            print("ERROR : the algo did only one loop and the preprocess, time condition may be too short")
        if (len(bestAnswer) > 0):
            newGobalItem = bestAnswer[0]
        else:
            break
        if globalAnswer[newGobalItem] == 1:
            print("ERROR : two item chosen twice !!")
        globalAnswer[newGobalItem] = 1
        nbAnswer += 1
        globalValue += set01.data.V[newGobalItem]
        globalWeight += set01.data.W[newGobalItem]

        curent = curent[curent.originalIndex != newGobalItem]
        globalSizeleft -= set01.data.W[newGobalItem]
        if globalSizeleft <= 0:
            break
        answerOriginIndex = []
        totalValue = []
        totalWeight = []
        for c in range(len(curent)):
            curent.GlobalV[c] = curent.VoverW[c]
        # print("//////")
    # ------Fin------- #        
    print("----BEST SOLUTION----")
    # for i in bestAnswer:
    #     print(" Object : V = ",set01.data.V[i]," W = ",set01.data.W[i])
    print("values : ", globalValue)
    print("weight : ", globalWeight)
    print("number of data :", nbAnswer)

    # binaryBestAnswer = set01.convertListAnswerToBinaryList(globalAnswer)
    
    return globalAnswer, nbAnswer, globalValue, globalWeight

# ---------------------------------EXECUTE FILE------------------------------------ #
if __name__ == '__main__':
    # ----Upload Data------ #
    myObject = m.Set01KnapSack()
    # myObject.uploadFile("low-dimensional\f2_l_d_kp_20_878", 't') # don't work, WHY ???
    # myObject.uploadFile("Landrytest.csv", 'c')
    myObject.uploadFile("large_scale\knapPI_3_10000_1000_1", 't')
    
    # create a difficult test because algo stop at first step. 

    print("Data for test")
    print(myObject)
    print("--------")
    ratio_sort_and_converge(myObject)





