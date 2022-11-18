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
	#region ATTRIBUTES
	n=0
	wmax=0
	data = pandas.DataFrame({"V":[], "W":[]})
	#endregion

	#region METHODS
	def display(self):
		# Decription : this method show the object in the consol
		# Input : ...
		# Output : print all attributes

		print("///////// data Set for a 0/1 KnackSack Problem ////////////")
		print("number of data (n) : ",self.n)
		print("Maximum Weigh allowed (wmax) : ",self.wmax)
		print("-------data--------")
		for i in range(len(self.data)):
			print(i," Value : ",self.data.V[i]," Weigh : ",self.data.W[i])


	def uploadCsvFile(self, nameOfFile):
		# Decription : Initialize the object
		# Input : path to the csv file relative to the Input folder - test with : "0_1_kp_REF_10_100_221016.csv"
		# Output : ...

		# opening the CSV file
		with open(os.path.join(os.path.dirname(__file__), '..', 'Input', nameOfFile), mode ='r') as file:
			# reading the CSV file
			csvFile = csv.reader(file)
			lineRead = 0;
			
			# displaying the contents of the CSV file
			for lines in csvFile:
				if lineRead==0:
					self.n=int(lines[0])
					self.wmax=int(lines[1])
				else:
					new_value = [int(lines[0]), int(lines[1])]
					self.data.loc[len(self.data)] = new_value
				lineRead=lineRead+1
		return self
	#endregion