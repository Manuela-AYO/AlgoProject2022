"""
    This module implements the Travelling Salesman Problem
"""

import numpy as np


def get_next_node(weight_array : np.array, visited_nodes : list) -> int:
    """This function aims to get the unvisited node whose edge 
     with a visited one is the lowest

    Args:
        weight_array (np.array): table containing the weights of the candidates nodes
         and np.inf if a node isn't a candidate
        visited_edges (np.array): list of visited nodes

    Returns:
        int : index of the node to add to the spanning tree
    """
    minimum_weight = np.inf
    
    # find the node for which the edge with a visited one is the less
    for i in range(len(weight_array)):
        # if the node has not yet been visited and is a candidate
        if not(i in visited_nodes) and weight_array[i] < minimum_weight:
            minimum_weight = weight_array[i]
            node = i 
    
    return node

def prim_algorithm(adj_matrix : np.array):
    # table of visited nodes
    visited = []
    
    # table of weights of candidate edges
    weight_array = np.full(len(adj_matrix), np.inf)
    
    # table of parents => will be useful to reconstruct the solution
    parents = np.zeros(len(adj_matrix))
    
    # the first node of the spanning tree doesn't have any parent
    parents[0] = -1
    
    # it is the first node of the tree
    weight_array[0] = 0
    
    for _ in range(len(adj_matrix)):
        # get the next node to visit
        node = get_next_node(weight_array, visited)
        
        # update the visited list
        visited.append(node)
        
        # look at the next candidates to form branch of the tree
        for j in range(len(adj_matrix)):
            if adj_matrix[node,j] and not (j in visited) and adj_matrix[node, j] < weight_array[j]:
                parents[j] = node
                weight_array[j] = adj_matrix[node, j]
     
    txt = ""    
    cost = 0       
    for i in range(len(visited)) : 
        txt += f"{visited[i]} - "
        if i < len(visited) - 1:
            cost += adj_matrix[i, i+1]
    print(txt)
    print(f"Cost = {cost}")
    print(parents)
    

def hamiltonian_path(mst : list):
    visited = [0]
    current = 0
    
    while len(visited) != len(mst):
        son = mst.index(current)
        if not (son in visited):
            current = son
            visited.append(current)
    

if __name__ == "__main__":
    # build the adjency matrix
    adj_matrix = np.zeros((5,5), dtype=int)
    adj_matrix[0, 2] = 3
    adj_matrix[1, 2] = 10
    adj_matrix[1, 3] = 4
    adj_matrix[2, 0] = 3
    adj_matrix[2, 1] = 10
    adj_matrix[2, 3] = 2
    adj_matrix[2, 4] = 6
    adj_matrix[3, 1] = 4
    adj_matrix[3, 2] = 2
    adj_matrix[3, 4] = 1
    adj_matrix[4, 2] = 6
    adj_matrix[4, 3] = 1
    
    prim_algorithm(adj_matrix)
         