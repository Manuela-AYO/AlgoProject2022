'''
Description: This class contain all the attribut and method needed for the 01knacksack datas

Author: Landry Bailly
Date: 21/10/2022
Update:
Usage: import the file and use the class Set01KnackSack. Sea the usage of each method bellow
Input: ...
Output: ...
References: ...
'''

import pandas
import numpy
import csv



class Set01KnackSack:
	n=0
	wmax=0
	Data = pandas.DataFrame({"V":[], "W":[]})

	def display(self):
		print("///////// Data Set for a 0/1 KnackSack Problem ////////////")
		print("number of data (n) : ",self.n)
		print("Maximum Weigh allowed (wmax) : ",self.wmax)
		print("-------DATA--------")
		for i in range(len(self.Data)):
			print(i," Value : ",self.Data.V[i]," Weigh : ",self.Data.W[i])

# input : name of the data file use. (this file must be in ./Generators/output)
# output : an object with wmax and n and Data (a dataFrame with V, W)
def uploadData_01KnackSack(nameOfFile):
	returnObject = Set01KnackSack()

	# opening the CSV file
	with open('./Generators/output/'+nameOfFile, mode ='r')as file:
		# reading the CSV file
		csvFile = csv.reader(file)
		lineRead = 0;
		
		# displaying the contents of the CSV file
		for lines in csvFile:
			if lineRead==0:
				returnObject.n=lines[0]
				returnObject.wmax=lines[1]
			else:
				new_value = [lines[0], lines[1]]
				returnObject.Data.loc[len(returnObject.Data)] = new_value
			lineRead=lineRead+1

	return returnObject
	