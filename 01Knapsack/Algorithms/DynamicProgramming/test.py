import sys, os

sys.path.append(os.path.join(os.path.dirname(__file__),'..', '..', "Class"))

import Set01KnackSack as f

objectData = f.Set01KnackSack().uploadCsvFile("0_1_kp_REF_10_100_221016.csv")
objectData.display()

