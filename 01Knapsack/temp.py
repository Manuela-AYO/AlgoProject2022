import csv
import pandas as pd
import os
import matplotlib.pyplot as plt

def read_files():
    df = pd.DataFrame(columns=["Nb items", "Weight of the sack", "Optimal value", "Items value", "Items weight", "Running time"])
    df2 = pd.DataFrame(columns=["Nb items", "Weight of the sack", "Optimal value", "Items value", "Items weight", "Running time"])
    
    # get list of files 
    list_files = [f.name for f in os.scandir("/home/manuela/M1/Algo/Project/AlgoProject2022/01Knapsack/Output") if f.is_file() and f.name.endswith('running_time.csv')]
    list_files += ([f"artificial/{f.name }" for f in os.scandir("/home/manuela/M1/Algo/Project/AlgoProject2022/01Knapsack/Output/artificial") if f.is_file() and f.name.endswith('running_time.csv')])
    for file in list_files:
        with open(os.path.join(os.path.dirname(__file__), 'Output',file), mode="r") as csv_file :
            lines = csv.reader(csv_file)
            for line in lines : 
                if line[0] == "BranchAndBound":
                    df.loc[len(df.index)] = ([int(line[2]), line[3], line[4], line[8], line[9], line[7]])
                elif line[0] == "FullyPolyNomial":
                    df2.loc[len(df2.index)] = ([int(line[2]), line[3], line[4], line[8], line[9], line[7]])
    df["Running time"] = pd.to_datetime(df["Running time"], format="%H:%M:%S.%f").dt.microsecond
    df2["Running time"] = pd.to_datetime(df2["Running time"], format="%H:%M:%S.%f").dt.microsecond
    return df, df2


df, df2 = read_files()


new_df = df.sort_values(by = ["Nb items"])
new_df2 = df2.sort_values(by = ["Nb items"])

plt.xlabel("Number of items")
plt.ylabel("Time in microsecond(us)")
plt.title("Evolution of the running time", fontsize=8, fontweight='bold')
plt.plot(new_df["Nb items"], new_df["Running time"])
plt.show()

plt.xlabel("Number of items")
plt.ylabel("Time in microsecond(us)")
plt.title("Evolution of the running time", fontsize=10, fontweight='bold')
plt.plot(new_df2["Nb items"], new_df2["Running time"])
plt.show()
