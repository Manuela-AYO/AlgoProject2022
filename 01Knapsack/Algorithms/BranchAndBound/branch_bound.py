"""
Description: This module is about the branch and bound algorithm of the knapsack problem.
    Knapsack problem is a maximization problem. We want to maximize values in our sack 
    with respect to the capacity of the sack. 
    With this branch and bound algorithm, I'm going to turn it into a minimization problem.
    In other means, we want to minimize the lost of values when selecting items.
    This technique is called the LC-branch and bound. LC for Least Cost branch and bound.
    
    With branch and bound, there are 3 things to consider : 
    1. The form of the solution : the solution is a vector v of bits such that for an object at
        the position i, v[i] = 0 if we don't take the object and 1 else
        e.g : if nb_ojects = 4, v = <?,?,?,?>
    2. The upperbound : it's the maximum value we can get on a node
    3. The cost : it is the lost we have on a node. And as so, it should be less than the upperbound 

Author: Christiane Manuela AYO NDAZO'O

References :
    - Algorithm : https://www.geeksforgeeks.org/0-1-knapsack-using-branch-and-bound/
    - Demonstration : https://www.youtube.com/watch?v=yV1d-b_NeK8

"""
# some important modules
import numpy as np
from pathlib import Path
import sys
from datetime import datetime, timedelta
from collections import deque

# external module imports
if not str(Path(__file__).resolve().parent.parent) in sys.path :
    sys.path.insert(0, str(Path(__file__).resolve().parent.parent.parent.parent))
    sys.path.insert(0, str(Path(__file__).resolve().parent.parent.parent))
 
from classes import Set01KnapSack


# ----FOR TESTING MODULE---- #
def branch_bound(set01 : Set01KnapSack, time_min=0):
    return BranchBoundKnapsack(set01.data.W,set01.data.V,set01.wmax,time_min).branch_bound()
# -------------------------- #

class Node:
    def __init__(self, index : int, value_index : int, position : int = -1, weight_carried : int = 0, 
                 cost : int = 0, upper_bound : int = 0, value_carried : int = 0, nb_items : int = 0) -> None :
        self.index = index
        self.value_index = value_index
        self.cost = cost
        self.upper_bound = upper_bound
        self.value_carried = value_carried
        self.weight_carried = weight_carried
        self.position = position
        self.nb_items = nb_items
        
    def __str__(self) -> str:
        return f"Position = {self.position} Index = {self.index} Value of index = {self.value_index} Cost = {self.cost} \
            Upperbound = {self.upper_bound} Value carried = {self.value_carried} Weight carried = {self.weight_carried}\n"
            
        
class BranchBoundKnapsack :
    def __init__(self, weights_tab : np.array, values_tab : np.array, sack_weight : int, time : int  = 0) -> None:
        """Initialisation of the knapsack object

        Args:
            weights_tab (np.array): Array of weights of all the items
            values_tab (np.array): Array of values of all the items
            sack_weight (int): Maximum capacity of the knapsack
            
        Complexity : O(nlogn)
        """
        self.nb_items_chosen = 0
        self.total_weight = 0
        self.total_value = 0
        self.vector_items = np.zeros(len(weights_tab), dtype=int)
        self.sack_weight = sack_weight
        self.time = int(time)
        map = zip(np.arange(len(self.vector_items)), values_tab, weights_tab)
        self.sort_tab = sorted(map, key = lambda x : x[1]/x[2], reverse=True)
        
    
    # *********************** Cost computation function *********************** # 
    def compute_cost(self, n : Node) -> None:
        """This method computes the cost on a node.
            The cost is what we could loose by making a decision
            Recall that we're doing and LC-branch and bound. So the value
            of the cost for a node will be negative

        Args:
            n (Node): The node for which we compute the cost

        Returns:
            None
            
        Complexity : O(n)
        """
        cost = 0.0
        weight = n.weight_carried
        position = n.position + 1
        j = position
        while j < len(self.sort_tab) and weight>0:
            if weight >= (self.sort_tab[j])[2]:
                cost += (self.sort_tab[j])[1]
                weight -= (self.sort_tab[j])[2]
            else : 
                cost += ((self.sort_tab[j])[1]*weight)/self.sort_tab[j][2]
                weight = 0
            j += 1
        n.cost = -(n.value_carried + cost)
    
    
    # *********************** Upperbound computation function *********************** # 
    def compute_upperbound(self, n : Node) -> None :
        """Compute the upperbound which represents the maximum value we can have on the node.
           Recall that we're doing and LC-branch and bound. So the value
                of the cost for a node will be negative

        Args:
            n (Node): Node for which we compute the upperbound

        Returns:
            None
            
        Complexity : O(n)
        """
        upperbound = 0
        weight = n.weight_carried
        position = n.position + 1
        j = position
        while j < len(self.sort_tab) and weight>0:
            if weight >= (self.sort_tab[j])[2]:
                upperbound += (self.sort_tab[j])[1]
                weight -= (self.sort_tab[j])[2]
            j += 1
        n.upper_bound = -(n.value_carried + upperbound)
    
    
    # *********************** Queues'add up function *********************** # 
    def __append_children(self, queue : deque, upperbound : int, left_child : Node, right_child : Node) -> None:
        """Append or not child(ren) to the queue.
           As we go through the least cost node, the head of the queue
           should be the child with the least cost

        Args:
            queue (deque): Queue to insert child(ren)
            upperbound (int): Upperbound to respect to insert a node
            left_child (Node): Left child
            right_child (Node): Right child
        """
        if left_child.weight_carried >= 0 and right_child.cost <= upperbound:
            if left_child.cost > right_child.cost:
                queue.appendleft(left_child)
                queue.appendleft(right_child)
            else : 
                queue.appendleft(right_child)
                queue.appendleft(left_child)
        elif left_child.weight_carried < 0 and right_child.cost <= upperbound:
            queue.appendleft(right_child)
        elif left_child.weight_carried >= 0:
            queue.appendleft(left_child)
    
    
    # *********************** branch and bound function *********************** # 
    def branch_bound(self) -> tuple([np.array, int, int, int]):
        """Perform branch and bound

        Returns:
            tuple: the vector of items, the number of items chosen, total weight and total value
        """
        # create dummy node
        dummy_node = Node(-1,-1, weight_carried=self.sack_weight)

        # compute the cost and the upperbound of the dummy node
        self.compute_cost(dummy_node)
        self.compute_upperbound(dummy_node)
        
        # initialize upperbound
        upperbound = dummy_node.upper_bound
        
        # initialize the queue
        queue = deque()
        
        # insert the dummy node
        queue.appendleft(dummy_node)
        
        if self.time != 0:
            start_time = datetime.now()
            iteration_time = timedelta(milliseconds=int(self.time))
            end_time = start_time + iteration_time
            
        # start the branch and bound
        while len(queue) > 0:
            item = queue.popleft()
            position = item.position + 1
        
            # check if its cost is less than the upperbound
            if item.cost <= upperbound and item.upper_bound <= upperbound:
                if item.value_index != -1:
                    self.vector_items[item.index] = item.value_index
                    self.nb_items_chosen = item.nb_items
                    
                # add the value of the item to total value
                self.total_value = item.value_carried
                
                # add the weight of the item to total weight
                self.total_weight = self.sack_weight - item.weight_carried
                
                if item.weight_carried == 0 or position-1 == len(self.sort_tab)-1:
                    continue
                
                # create child left
                left_child = Node((self.sort_tab[position])[0], 1, position=position, weight_carried=item.weight_carried-(self.sort_tab[position])[2],
        cost=item.cost, upper_bound=item.upper_bound, value_carried=item.value_carried + self.sort_tab[position][1],
                                    nb_items=(item.nb_items + 1))
        
                # create child right
                right_child = Node((self.sort_tab[position])[0],0, position=position, weight_carried=item.weight_carried,
                                   value_carried=item.value_carried)
                self.compute_cost(right_child)
                if right_child.cost <= upperbound:
                    right_child.nb_items = item.nb_items
                    self.compute_upperbound(right_child)
                    if right_child.upper_bound < upperbound:
                        upperbound = right_child.upper_bound
                
                # add children if possible
                self.__append_children(queue, upperbound, left_child, right_child)
                
                current_time = datetime.now()
                
                if self.time != 0 and current_time > end_time:
                    break
              
        return self.vector_items, self.nb_items_chosen, self.total_value, self.total_weight
    
    
if __name__ == '__main__':
    # import Set01KnapSack object 
    knapsack = Set01KnapSack()
    
    type = input("Which type of file is it(t for text, c for csv) ? ")
    path = input("Path to the file[e.g : my_file.csv] : ")
    
    # read the csv file and collect the data
    nb_items, sack_weight, items_value, df = knapsack.uploadFile(path, type)
    
    # create the weights, values array and the vector
    weights_tab = np.array(df["W"])
    values_tab = np.array(df["V"])
    
    begin = datetime.now()
    # apply the branch and bound algorithm
    obj = BranchBoundKnapsack(weights_tab, values_tab, sack_weight, time=10)
    end = datetime.now()
    
    v, nb_items_chosen, total_weight, total_value = obj.branch_bound()
    
    print(f"Nb total items = {nb_items}\n")
    print(f"TMax weight : {sack_weight}\n")
    print(f"Vector = {v}\n")
    print(f"Nb items = {nb_items_chosen}\n")
    print(f"Total weight = {total_weight}\n")
    print(f"Total value = {total_value}\n")           
    print(f"Time = {end-begin}\n")