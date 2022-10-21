import UsefuFunction.fileToDataFrame as m
import pandas
import numpy
from natsort import index_natsorted

# ----Upload Data------ #
test = m.uploadData_01KnackSack("0_1_kp_REF_10_100_221016.csv")
test.display()


# create a new data frame
curent = pandas.DataFrame({"W":test.Data.W, "V":test.Data.V, "EmptyW":[0.0]*len(test.Data), "VoverW":[0.0]*len(test.Data)})

def calculeVoverW(dataFrame):
    for i in range(len(dataFrame)):
        dataFrame.VoverW[i] = dataFrame.V[i] / (dataFrame.W[i] + dataFrame.EmptyW[i])

calculeVoverW(curent)

print(curent)
print("-------------------ALGO--------------------")
# ------Algo------- #

for i in range(1):
    # sort data by VoverW
    curent = curent.sort_values('VoverW', ascending=False)
    curent = curent.reset_index()
    
    # take the first data in order to full the KnackSack
    sizeleft = test.wmax
    answer = []
    for d in range(len(curent)):
        if (curent.W[d] <= sizeleft):
            answer.append(d)
            sizeleft = sizeleft - curent.W[d]


    # calcule the empty and re order the data
    sizetoAdd = sizeleft / len(answer)

    print(sizetoAdd)

    for d in answer:
        curent.EmptyW[d] = sizetoAdd
    
    calculeVoverW(curent)


    # check if the solution is equivalente to the precedent and stop algo if yes

    print(curent)
    print(answer)