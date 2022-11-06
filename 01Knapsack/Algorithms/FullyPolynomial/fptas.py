"""
    Description : This module is about the fully polynomial approximation time scheme.
    
    References :
        - https://en.wikipedia.org/wiki/Knapsack_problem#Fully_polynomial_time_approximation_scheme
"""


# some important modules
import functools
from time import time
import numpy as np
import csv
import os
from datetime import datetime
from pathlib import Path
import sys

print(Path(__file__).resolve().parent.parent.parent)

# external module imports
if not str(Path(__file__).resolve().parent.parent) in sys.path:
	sys.path.insert(0, str(Path(__file__).resolve().parent.parent.parent))
 
from classes import Set01KnapSack

def fptas():
    pass