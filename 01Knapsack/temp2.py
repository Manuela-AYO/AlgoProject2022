import csv
import pandas as pd
import os
import matplotlib.pyplot as plt
import numpy as np

def read_files():
    df = pd.DataFrame(columns=["Optimal value", "Items value", "Running time(10ms)","Running time(100ms)", "Running time(1000ms)", "Running time(10000ms)"])
    df2 = pd.DataFrame(columns=["Optimal value", "Items value", "Running time(10ms)","Running time(100ms)", "Running time(1000ms)", "Running time(10000ms)"])
    
    # get list of files 
    list_files = [f"artificial/{f.name }" for f in os.scandir("/home/manuela/M1/Algo/Project/AlgoProject2022/01Knapsack/Output/artificial") if f.is_file() and f.name.endswith('efficiency.csv')]
    for file in list_files:
        with open(os.path.join(os.path.dirname(__file__), 'Output',file), mode="r") as csv_file :
            lines = csv.reader(csv_file)
            for line in lines : 
                if line[0] == "BranchAndBound":
                    df.loc[len(df.index)] = ({"Optimal value" : int(line[4])})
                    if line[5] == "0:10:00":
                        df.loc[len(df.index)-1,"Running time(10ms)"] = int(int(line[8]))
                    elif line[5] == "1:40:00":
                        df.loc[len(df.index)-1,"Running time(100ms)"] = int(line[8])
                    elif line[5] == "16:40:00":
                        df.loc[len(df.index)-1,"Running time(1000ms)"] = int(line[8])
                    else:
                        df.loc[len(df.index)-1,"Running time(10000ms)"] = int(line[8])
                elif line[0] == "FullyPolyNomial":
                    df2.loc[len(df2.index)] = ({"Optimal value" : int(line[4])})
                    if line[5] == "0:10:00":
                        df2.loc[len(df.index)-1,"Running time(10ms)"] = float(line[8])
                    elif line[5] == "1:40:00":
                        df2.loc[len(df.index)-1,"Running time(100ms)"] = float(line[8])
                    elif line[5] == "16:40:00":
                        df2.loc[len(df.index)-1,"Running time(1000ms)"] = float(line[8])
                    else:
                        df2.loc[len(df.index)-1]["Running time(10000ms)"] = float(line[8])
    return df, df2


df, df2 = read_files()


plt.xlabel("Time in microseconds(us)")
plt.ylabel("Error rate")
plt.title("Efficiency of branch and bound by time", fontsize=10, fontweight='bold')
e1 = np.sum(np.absolute(df["Running time(10ms)"] - df["Optimal value"]))/len(df)
e2 = np.sum(np.absolute(df["Running time(100ms)"] - df["Optimal value"]))/len(df)
e3 = np.sum(np.absolute(df["Running time(1000ms)"] - df["Optimal value"]))/len(df)
e4 = np.sum(np.absolute(df["Running time(10000ms)"] - df["Optimal value"]))/len(df)
plt.plot([10,100,1000,10000], [e1, e2, e3, e4])
plt.show()

plt.xlabel("Time in microseconds(us)")
plt.ylabel("Error rate")
plt.title("Efficiency of FPTAS by time", fontsize=10, fontweight='bold')
e1 = np.sum(np.absolute(df2["Running time(10ms)"] - df2["Optimal value"]))/len(df)
e2 = np.sum(np.absolute(df2["Running time(100ms)"] - df2["Optimal value"]))/len(df)
e3 = np.sum(np.absolute(df2["Running time(1000ms)"] - df2["Optimal value"]))/len(df)
e4 = np.sum(np.absolute(df2["Running time(10000ms)"] - df2["Optimal value"]))/len(df)
plt.plot([10,100,1000,10000], [e1, e2, e3, e4])
plt.show()
