#https://stackoverflow.com/questions/46614526/how-to-import-a-csv-file-into-a-data-array
import pandas as pd
import numpy as np
import matplotlib
#matplotlib.use('Agg')
matplotlib.use('TkAgg')
#NOTE: DO "sudo apt-get update
#sudo apt-get install python3-tk"
from matplotlib import pyplot as plt

delay = [7.912131e-09,8.037798e-09,8.209043e-09,8.509740e-09,8.936524e-09] # --> wvar = off, wfixed = 10um, mout*2

#vcont = np.arange(0, 0.85, 0.2)
vcont = np.arange(0.2, 1.05, 0.2)

#vcont = [0,0.1,0.2,0.3,0.4]
KP = (8.936524e-09 - 7.912131e-09)/0.8

print(delay)
print(vcont)

print("KP=",KP)

plt.plot(vcont,delay)
plt.xlabel("Vcont [V]")
plt.ylabel("Delay [s]")
plt.show()
