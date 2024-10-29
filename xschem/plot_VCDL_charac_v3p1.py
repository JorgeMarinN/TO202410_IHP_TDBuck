#https://stackoverflow.com/questions/46614526/how-to-import-a-csv-file-into-a-data-array
import pandas as pd
import numpy as np
import matplotlib
#matplotlib.use('Agg')
matplotlib.use('TkAgg')
#NOTE: DO "sudo apt-get update
#sudo apt-get install python3-tk"
from matplotlib import pyplot as plt

#delay = [1.080360e-08,1.135669e-08,1.202932e-08,1.282769e-08,1.379274e-08] # --> wvar = 3.5um, wfixed = 0.5um, mout = 2
delay = [2.274347e-08,2.520695e-08,2.833874e-08,3.240081e-08,3.780693e-08] # --> wvar = 4um, wfixed off, wout x1.5, minv = 2

vcont = np.arange(0, 0.85, 0.2)

#vcont = [0,0.1,0.2,0.3,0.4]
#KP = (3.166478e-08 - 2.097681e-08)/0.8#KP = 3.7364e-9
KP = (3.780693e-08 - 2.274347e-08)/0.8#KP = 3.7364e-9

print(delay)
print(vcont)

print("KP=",KP)

plt.plot(vcont,delay)
plt.xlabel("Vcont [V]")
plt.ylabel("Delay [s]")
plt.show()
