'''
Description: This file contain the Set01KnackSack class
	- 4 attributes
		n : number of data
        nsack : number of sack
		wmax : max weight allowed for the project per sack, it is a table
		data : a dataframe with two colomn 
			V for all object value
			W for all Weight value

Author: Landry Bailly
Date: 21/10/2022
Update:
Usage: import the file and use the class Set01KnackSack. 
Input: ...
Output: ...
References: ...
'''


import pandas
import csv
import os


class SetMultipleKnapSack:
    def __init__(self) -> None:
        self.n = 0
        self.wmax = []
        self.nsack = 0
        self.items_values = 0
        self.data = pandas.DataFrame({"V":[], "W":[]})
    
        
    def __str__(self) -> str:
        # Description : this method show the object in the console
        # Input : ...
        # Output : print all attributes
        text = ""
        text += "///////// data Set for a 0/1 KnackSack Problem //////////// \n"
        text += f"number of data (n) : {self.n} \n"
        text += f"number of sack (nsack) : {self.nsack} \n"
        text += f"Maximum Weigh allowed (wmax) : {self.wmax} \n"
        text += "-------data--------\n"
        for i in range(len(self.data)):
            text += f"{i} Value : {self.data.V[i]} Weight : {self.data.W[i]} \n"
        return text

    def uploadFile(self, nameOfFile : str, type : str) -> tuple([int, int, int, pandas.DataFrame]):
        # Description : initialize the object
        # Input : path to the csv file relative to the Input folder - test with : "0_1_kp_REF_10_100_221016.csv"
        #           And the type of the file. In fact it only change the delimiter, " " for t (txt) and "," for c (csv). We could also just had a delimiter param
        # Output : object with data, n and wmax
        
        lines = []
        
        # check if the file exists
        if not os.path.exists(os.path.join(os.path.dirname(__file__), '..', 'Input', nameOfFile)) : 
            print("The file doesn't exist")
            return None
        
        # opening the file
        with open(os.path.join(os.path.dirname(__file__), '..', 'Input', nameOfFile), mode='r') as file:
            lineRead = 0
            
            # distinguish between the type of file(t : text, c : csv file)
            if type == "t": 
                lines = csv.reader(file, delimiter=" ")
            else :
                lines = csv.reader(file) # delimiter is ,
                
            # get the lines 
            for line in lines :
                if lineRead==0:
                    self.n=int(line[1])
                    self.nsack=int(line[0])
                elif  lineRead==1:
                    self.wmax = []
                    for i in range(self.nsack):
                        self.wmax.append(int(line[i]))
                else:
                    new_value = [int(line[0]), int(line[1])]
                    self.items_values += int(line[0])
                    self.data.loc[len(self.data)] = new_value
                lineRead+=1
        return self.n, self.wmax, self.items_values, self.data 

