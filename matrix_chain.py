"""
The goal is to have an optimal multiplication of 
a matrix chain

How ? 
    - i have a table containing the dimensions of the matrices
        s.t A[i] = matrix_table[i]*matrix_table[i+]
    - i want to store the minimum multiplication cost in a matrix
        m s.t m[i,j] = min(m[i,k]+m[k+1]+p_i*p_k*pj)
    - i also want to keep the cut of the multiplication
"""
import numpy as np

def matrix_chain(matrix_table):
    n = len(matrix_table)
    
    # cost multiplication matrix
    m = np.zeros((n,n), dtype=int)

    # chain's length
    for l in range(2,n): 
        print(l)
        # indices of the matrix m
        for i in range(1,n-l+1):
            print("i ",i)
            j = l+i-1
            m[i,j] = 10**10
            for k in range(i,j):
                q = m[i,k] + m[k+1,j] + matrix_table[i-1]*matrix_table[k]*matrix_table[j]
                if q < m[i,j]:
                    m[i,j] = q
    return m


m = matrix_chain([2,3,4,5])
print(m)


