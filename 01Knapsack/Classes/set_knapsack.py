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
        self.data = pandas.DataFrame({"V":[], "W":[]})
        self.file_name = ""
        
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
    
    def uploadCsvFile(self, nameOfFile):
        # Description : initialize the object
        # Input : path to the csv file relative to the Input folder - test with : "0_1_kp_REF_10_100_221016.csv"
        # Output : ...
        
        # opening the csv file
        with open(os.path.join(os.path.dirname(__file__),'..','Input',nameOfFile), mode='r') as file:
            self.file_name = nameOfFile
            # reading the csv file 
            csvFile = csv.reader(file)
            lineRead = 0
            
            # displaying the contents of the CSV file
            for lines in csvFile:
                if lineRead==0:
                    self.n=int(lines[0])
                    self.wmax=int(lines[1])
                else:
                    new_value = [int(lines[0]), int(lines[1])]
                    self.data.loc[len(self.data)] = new_value
                lineRead+=1
        return self.n, self.wmax, self.data
    #endregion