#https://stackoverflow.com/questions/46614526/how-to-import-a-csv-file-into-a-data-array
import pandas as pd
import numpy as np
import matplotlib
#matplotlib.use('Agg')
matplotlib.use('TkAgg')
#NOTE: DO "sudo apt-get update
#sudo apt-get install python3-tk"
from matplotlib import pyplot as plt

#delay = [1.238509e-08,1.332407e-08,1.451176e-08,1.570046e-08,1.772078e-08] # --> wvar = off, wfixed = 8um
#delay = [1.125653e-08,1.202799e-08,1.299753e-08,1.427659e-08,1.564823e-08] # --> wvar = off, wfixed = 8um
delay = [8.706918e-09,8.988395e-09,9.430351e-09,1.009265e-08,1.100298e-08] # --> wvar = off, wfixed = 8um, Winv*0.5

#vcont = np.arange(0, 0.85, 0.2)
vcont = np.arange(0.2, 1.05, 0.2)

#vcont = [0,0.1,0.2,0.3,0.4]
#KP = (1.772078e-08 - 1.238509e-08)/0.8
#KP = (1.564823e-08 - 1.125653e-08)/0.8
KP = (1.100298e-08 - 8.706918e-09)/0.8

print(delay)
print(vcont)

print("KP=",KP)

plt.plot(vcont,delay)
plt.xlabel("Vcont [V]")
plt.ylabel("Delay [s]")
plt.show()
