#https://stackoverflow.com/questions/46614526/how-to-import-a-csv-file-into-a-data-array
import pandas as pd
import numpy as np
import matplotlib
#matplotlib.use('Agg')
matplotlib.use('TkAgg')
#NOTE: DO "sudo apt-get update
#sudo apt-get install python3-tk"
from matplotlib import pyplot as plt

#delay = [1.577369e-08,1.637651e-08,1.702838e-08,1.772005e-08,1.844865e-08] # --> wvar = 2um, wfixed = 2um
#delay = [1.317733e-08,1.393756e-08,1.484291e-08,1.555038e-08,1.679703e-08] # --> wvar = 5um, wfixed = 1um
#delay = [1.578634e-08,1.687227e-08,1.816577e-08,1.972022e-08,2.159332e-08] # --> wvar = 3.5um, wfixed = 0.5um
delay = [1.686904e-08,1.816254e-08,1.971699e-08,2.159009e-08,2.387486e-08] # --> wvar = 3.5um, wfixed = 0.5um,vin = 0.2:0.2:1

#vcont = np.arange(0, 0.85, 0.2)
vcont = np.arange(0.2, 1.05, 0.2)

#vcont = [0,0.1,0.2,0.3,0.4]
#KP = (1.844865e-08 - 1.577369e-08)/0.8
#KP = (2.159332e-08 - 1.578634e-08)/0.8
KP = (2.387486e-08 - 1.686904e-08)/0.8

print(delay)
print(vcont)

print("KP=",KP)

plt.plot(vcont,delay)
plt.xlabel("Vcont [V]")
plt.ylabel("Delay [s]")
plt.show()
