#https://stackoverflow.com/questions/46614526/how-to-import-a-csv-file-into-a-data-array
import pandas as pd
import numpy as np
import matplotlib
#matplotlib.use('Agg')
matplotlib.use('TkAgg')
#NOTE: DO "sudo apt-get update
#sudo apt-get install python3-tk"
from matplotlib import pyplot as plt

#delay = [3.445076e-08,3.787219e-08,4.204150e-08,4.720914e-08,5.452875e-08] # --> vfixed = VDD (off), m=2, wvar = 3um
#delay = [1.577605e-08,1.669763e-08,1.774967e-08,1.896598e-08,2.036414e-08] # --> wfixed = 1um, wvar = 3um, m=1 (design for VCO)
delay = [1.669763e-08,1.774967e-08,1.896598e-08,2.036414e-08,2.196360e-08] # --> wfixed = 1um, wvar = 3um, m=1 (design for VCO), 0.2V to 1V

vcont = np.arange(0.2, 1.05, 0.2)

#vcont = [0,0.1,0.2,0.3,0.4]
#KP = (5.452875e-08 - 3.445076e-08)/0.8
KP = (2.196360e-08 - 1.669763e-08)/0.8

print(delay)
print(vcont)

print("KP=",KP)

plt.plot(vcont,delay)
plt.xlabel("Vcont [V]")
plt.ylabel("Delay [s]")
plt.show()
