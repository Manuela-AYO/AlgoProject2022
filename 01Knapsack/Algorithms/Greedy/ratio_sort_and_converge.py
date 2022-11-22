'''
Description: This file contain an invented algo based on the ratio_sort_greedy method and a way to execute the file localy
Author: Landry Bailly
Date: 21/11/2022
Update:
Usage: import the file and use the bruteForce algo, or execute the file localy. No param, it will take default input value
Input: For the main function, 
    -object Set01KnapSack with data already uploaded
Output: Answer of the problem,
    -total value we can put in the bag (float)
    -table with all the index (int) of the oject we take
References: ...
'''

# ---------------------------------INPORT------------------------------------ #

import pandas
pandas.options.mode.chained_assignment = None
import numpy
from natsort import index_natsorted

import sys, os
sys.path.append(os.path.join(os.path.dirname(__file__),'..', '..', "classes"))
import set_knapsack as m


# ---------------------------------USEFUL FUNCTION------------------------------------ #

# ---------------------------------MAIN FUNCTION------------------------------------ #

def ratio_sort_and_converge(set01 : m.Set01KnapSack):
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
    
    for i in range(len(curent)**2): # it is the security, to avoid too much loop. Because it would mean the algo is useless. 
        # sort data by VoverW
        curent = curent.sort_values(['GlobalV','VoverW'], ascending=False)
        curent = curent.reset_index(drop=True)
    
        print("step n ",i)
        print(curent)
        
        # take the first data in order to full the KnackSack
        sizeleft = set01.wmax
        answer = []
        answerOriginIndex.append([])
        totalValue.append(0.0)
        for d in range(len(curent)):
            if (curent.W[d] <= sizeleft):
                answer.append(d)
                answerOriginIndex[i].append(curent.originalIndex[d])
                totalValue[i] = totalValue[i] + curent.V[d]
                sizeleft = sizeleft - curent.W[d]
    
        print("value is ",totalValue[i])
        totalWeight.append(set01.wmax - sizeleft)

        if (i > 0 and totalValue[i] <= totalValue[i-1]):
            break;
    
        for d in answer:
            curent.GlobalV[d] = totalValue[i] / set01.wmax
        
    print("-----------Answer--------")
    print("indexs :")
    print(answerOriginIndex)
    print("values :")
    print(totalValue)
    print("Weight :")
    print(totalWeight)

    bestValue = totalValue[len(totalValue) - 2]
    bestValueWeight = totalWeight[len(totalWeight) - 2]
    bestAnswer = answerOriginIndex[len(answerOriginIndex) - 2]
    
    print("----BEST SOLUTION (take index[n - 2])----")
    for i in bestAnswer:
        print(" Object : V = ",set01.data.V[i]," W = ",set01.data.W[i])


    
    return bestValue, bestAnswer, len(bestAnswer), bestValueWeight

# ---------------------------------EXECUTE FILE------------------------------------ #
if __name__ == '__main__':
    # ----Upload Data------ #
    myObject = m.Set01KnapSack()
    # myObject.uploadFile("Landrytest.csv", 'c')
    myObject.uploadFile("0_1_kp_REF_50_300_221120.csv", 'c')
    print("Data for tes")
    print(myObject)
    print("--------")
    ratio_sort_and_converge(myObject)





