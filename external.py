import functools
from time import time
from datetime import datetime

# *********************** wrapper to benchmark the running time of an algorithm *********************** #
def compute_run_time(f) :
    @functools.wraps(f)
    def wrap(*args, **kwargs):
        start = datetime.now()
        x = f(*args, **kwargs)
        time_taken = datetime.now() - start
        return x, time_taken
    return wrap