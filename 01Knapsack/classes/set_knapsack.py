'''
Description: This file contain the Set01KnackSack class
	- 3 attributes
		n : number of data
		wmax : max weight allowed for the project
		data : a dataframe with two colomn 
			V for all object value
			W for all Weight value

Author: Landry Bailly
Date: 21/10/2022
Update:
Usage: import the file and use the class Set01KnackSack. To initilized the class, use the method uploaddata("pathOfCsvFile Inside Input Folder")
Input: ...
Output: ...
References: ...
'''


import pandas
import numpy
import csv
import os


class Set01KnapSack:
    def __init__(self) -> None:
        self.n = 0
        self.wmax = 0
        self.items_values = 0
        self.data = pandas.DataFrame({"V":[], "W":[]})
    
        
    def __str__(self) -> str:
        # Description : this method show the object in the console
        # Input : ...
        # Output : print all attributes
        text = ""
        text += "///////// data Set for a 0/1 KnackSack Problem //////////// \n"
        text += f"number of data (n) : {self.n} \n"
        text += f"Maximum Weigh allowed (wmax) : {self.wmax} \n"
        text += "-------data--------\n"
        for i in range(len(self.data)):
            text += f"{i} Value : {self.data.V[i]} Weight : {self.data.W[i]} \n"
        return text
    
    
    def uploadFile(self, nameOfFile : str, type : str) -> tuple([int, int, int, pandas.DataFrame]):
        # Description : initialize the object
        # Input : path to the csv file relative to the Input folder - test with : "0_1_kp_REF_10_100_221016.csv"
        # Output : ...
        
        lines = []
        
        # check if the file exists
        if not os.path.exists(nameOfFile) : 
            print("The file doesn't exist")
            return None
        
        # opening the file
        with open(nameOfFile, mode='r') as file:
            lineRead = 0
            
            # distinguish between the type of file(t : text, c : csv file)
            if type == "t": 
                lines = csv.reader(file, delimiter=" ")
            else :
                lines = csv.reader(file)
                
            # get the lines 
            for line in lines :
                if lineRead==0:
                    self.n=int(line[0])
                    self.wmax=int(line[1])
                else:
                    new_value = [int(line[0]), int(line[1])]
                    self.items_values += int(line[0])
                    self.data.loc[len(self.data)] = new_value
                lineRead+=1
        return self.n, self.wmax, self.items_values, self.data
    
    
    
    # *********************** write on the results of the algorithm in the output file *********************** # 
    def write_output(self, output : str) -> str:
        outputfile_path = os.path.join("01Knapsack", "Output", "results.txt")
        
        with open(outputfile_path, "a") as f : 
            # if it's an empty file, create the header
            if os.path.getsize(outputfile_path) == 0 :
                f.write("Algorithm\t \tTotal number of items\t \t\tMax weight\t \t\tItems value\t \t\tNb items chosen\t \t\tOccupied weight\t \t\tTotal value of items\t \t\tRunning time(ms)\n")
                f.write("______________________________________________________________________________________________________________________________________________\n")
            # update with the content of the output of the algorithm 
            f.write(f"\n{output}\n")
            
        print("Successfully completed")
    #endregion