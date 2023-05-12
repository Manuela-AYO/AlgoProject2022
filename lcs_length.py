import numpy as np
from datetime import datetime

# define a forward version of lcs
def lcs_length(X : str, Y : str) :
	m = len(X)
	n = len(Y)
	b = np.zeros((m+1, n+1), dtype="unicode")	# table to read the sequence
	c = np.zeros((m+1, n+1), dtype=int)	# table to traverse strings
	
	for i in range(m):
		for j in range(n):
			if X[i] == Y[j] :
				c[i+1, j+1] = c[i,j] + 1
				b[i+1, j+1] = "r"
			else :
				if c[i, j+1] >= c[i+1, j]:
					c[i+1, j+1] = c[i, j+1]
					b[i+1, j+1] = "u"
				else :
					c[i+1, j+1] = c[i+1, j]
					b[i+1, j+1] = "l"
		
	return c, b
	
def print_lcs(b, X, m, n):
	if m == 0 or n == 0:
		return ""
		.3
		
	if b[m,n] == "r":
		return print_lcs(b, X, m-1, n-1) + X[m-1]
	if b[m,n] == "u":
		return print_lcs(b, X, m-1, n)
	return print_lcs(b, X, m, n-1)


# define a recursive version of lcs
def lcs_length_rec(X : str, Y : str):
	m = len(X)
	n = len(Y)
	if m == 0 or n == 0:
		return ""
	if X[m-1] == Y[n-1]:
		return lcs_length_rec(X[:m-1], Y[:n-1]) + X[m-1]
	z1 = lcs_length_rec(X[:m-1], Y)
	z2 = lcs_length_rec(X, Y[:n-1])
	if len(z1) >= len(z2) : 
		return z1
	return z2
	

# define a version of forward LCS where we use a space = 2 * min(m,n)
def space_efficient_lcs_length(X : str, Y : str):
	m = len(X)
	n = len(Y)
	
	if m <= n:
		temp = X
		X = Y
		Y = temp
		temp2 = m
		m = n
		n = temp2
		
	c = np.zeros((2, n+1), dtype="int")	# array of prefixes
	
	for i in range(m):
		for j in range(n):
			if X[i] == Y[j]:
				c[1, j+1] = c[0,j] + 1
			elif c[0, j+1] >= c[1, j]:
				c[1, j+1] = c[0, j+1]
			else :
				c[1, j+1] = c[1, j]
		c[0, :] = c[1, :].copy()
		
	return c
	
	
# define a backward version of LCS
def lcs_length_backward(X : str, Y : str):
	m = len(X)
	n = len(Y)
	b = np.zeros((m+1, n+1), dtype="unicode")	# table to read the sequence
	c = np.zeros((m+1, n+1), dtype=int)	# table to traverse strings
	
	for i in range(m-1, -1, -1):
		for j in range(n-1, -1, -1):
			if X[i] == Y[j]:
				c[i,j] = c[i+1, j+1] + 1
				b[i,j] = "l"
			elif c[i+1, j] >= c[i, j+1]:
				c[i,j] = c[i+1, j]
				b[i,j] = "d"
			else:
				c[i,j] = c[i, j+1]
				b[i,j] = "r"
	return c, b


# print the lcs	
def print_lcs_backward(b : np.array, X : str, Y : str, m : int, n : int) :
	if m == len(X)  or n == len(Y) :
		return ""
	if b[m,n] == "l":
		return X[m] + print_lcs_backward(b, X, Y, m+1, n+1)
	if b[m,n] == "d":
		return print_lcs_backward(b, X, Y, m+1, n)
	return print_lcs_backward(b, X, Y, m, n+1)
	
	
# define a version of backward LCS where we use a space = 2 * min(m,n)
def space_efficient_lcs_length_back(X : str, Y : str):
	m = len(X)
	n = len(Y)
	
	if m <= n:
		temp = X
		X = Y
		Y = temp
		temp2 = m
		m = n
		n = temp2
		
	c = np.zeros((2, n+1), dtype="int")	# array of prefixes
	
	for i in range(m-1, -1, -1):
		for j in range(n-1, -1, -1):
			if X[i] == Y[j]:
				c[0, j] = c[1,j+1] + 1
			elif c[1, j] >= c[0, j+1]:
				c[0, j] = c[1, j]
			else :
				c[0, j] = c[0, j+1]
		c[1, :] = c[0, :].copy()
		
	return c
		

X = "12466789"
Y = "92746186"
	
# ********************* Run the algorithms **************************** #

# Iterative version
begin = datetime.now()
c, sub = lcs_length(X, Y)
end = datetime.now()
subseq = print_lcs(sub, X, len(X), len(Y))
print(f"Subsequence = {subseq}\n")
print()
print(f"The iterative version took {end-begin}\n")

# Recursive version
begin = datetime.now()
solution = lcs_length_rec(X, Y)
end = datetime.now()

print(f"The recursive version took {end-begin}\n")

# Space efficient version
n = len(Y)
begin = datetime.now()
tab = space_efficient_lcs_length(X, Y[:n//2])
end = datetime.now()

print(f"Space efficient version took {end-begin}\n")
print()
print(tab)

# backward version
begin = datetime.now()
c, sub = lcs_length_backward(X, Y)
end = datetime.now()
subseq = print_lcs_backward(sub, X, Y, 0, 0)
print(f"The backward version took {end-begin}\n")
print()
print(f"Subsequence = {subseq}\n")

# **** lcs space efficient ****
print("Forward space efficient")
print(tab)
print()
print("Backward space efficient")
tab = space_efficient_lcs_length_back(X, Y[n//2:])
print(tab)
