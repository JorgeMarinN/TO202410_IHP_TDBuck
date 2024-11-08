#https://stackoverflow.com/questions/46614526/how-to-import-a-csv-file-into-a-data-array
import sys
import pandas as pd
import numpy as np
from matplotlib import pyplot as plt

from scipy.signal import find_peaks

df=pd.read_fwf('data_TDBuckTOP-CL_v5p3_RL12_POWER.txt',infer_nrows = 1000)
df.to_csv('data_TDBuckTOP-CL_v5p3_RL12_POWER.csv', index=False)
data = pd.read_csv("data_TDBuckTOP-CL_v5p3_RL12_POWER.csv").values
num_rows, num_cols = data.shape
print("Data rows:",num_rows)
print("Data columns:",num_cols)

exit()

#Data rows: 526061 for t = 250us, dt = 4ns
i_cut = 250000
x_ih = data[i_cut:num_rows,2]
y_ih = [-1]*data[i_cut:num_rows,3]
x_vout = data[i_cut:num_rows,4]
y_vout = data[i_cut:num_rows,5]
x_iout = data[i_cut:num_rows,6]
y_iout = data[i_cut:num_rows,7]
#x_in_vm = data[i_cut:num_rows,12]
#y_in_vm = (-1)*data[i_cut:num_rows,13]
#x_in_vpwr = data[i_cut:num_rows,14]
#y_in_vpwr = (-1)*data[i_cut:num_rows,15]
#data_iout = data[i_cut:num_rows,7];

plt.plot(x_ih,y_ih)
plt.show()
plt.plot(x_vout,y_vout)
plt.show()
plt.plot(x_iout,y_iout)
plt.show()


peaks , _ = find_peaks(y_ih, height=0.07, distance = 1000)
pk_len = len(peaks)
print("Pk length:",pk_len)
plt.plot(y_ih)
plt.plot(peaks, y_ih[peaks], "x")
plt.plot(np.zeros_like(y_ih),"--",color="gray")
plt.show()




#x=x[~pd.isnull(x)]
#y=y[~pd.isnull(y)]
#kk2=np.diff(y > thres, prepend=False)
#kk3=np.argwhere(kk2)[::2,0]
#lgt=kk3.shape
#print(lgt[0]/(x[kk3[-1]]-x[kk3[0]]))



#pk_init = 40;
pk_init = 1;
vh = 3.3;
vout = np.mean(y_vout[peaks[pk_init]:peaks[pk_len-1]])
ih = np.mean(y_ih[peaks[pk_init]:peaks[pk_len-1]])
#ils = np.mean(y_in_LS[peaks[pk_init]:peaks[pk_len-1]])
#ivm = np.mean(y_in_vm[peaks[pk_init]:peaks[pk_len-1]])
#ivpwr = np.mean(y_in_vpwr[peaks[pk_init]:peaks[pk_len-1]])
iout = np.mean(y_iout[peaks[pk_init]:peaks[pk_len-1]])
pout = vout*iout
pin = vh*ih
#pls=5*ils
#pvm = 5*ivm
#pvpwr = 1.8*ivpwr

##eff = vout_rms*0.3/(iin_rms*5)*100
##if (pin == 0) pin = 0.000000001
#eff_ls = (pout/(10*iin+5*ils+5*ivm+1.8*ivpwr) )*(100)
eff = (pout/pin )*(100)
print("ih promedio",ih,"[A]")
print("iout promedio",iout,"[A]")
print("V_out promedio:",vout,"[V]")
print("potencia de entrada:",pin, "[W]")
print("potencia de salida:",pout, "[W]")


print("eficiencia:", eff ,"[%]")
#print("eficiencia (con LS):", eff_ls ,"[%]")
#plt.plot(x_ih[peaks[pk_init]:peaks[pk_len-1]],y_ih[peaks[pk_init]:peaks[pk_len-1]])
plt.plot(x_ih[peaks[pk_len-2]:peaks[pk_len-1]],y_ih[peaks[pk_len-2]:peaks[pk_len-1]])
plt.show()

#plt.plot(x_iout[peaks[pk_init]:peaks[pk_len-1]],y_iout[peaks[pk_init]:peaks[pk_len-1]])
plt.plot(x_iout[peaks[pk_len-2]:peaks[pk_len-1]],y_iout[peaks[pk_len-2]:peaks[pk_len-1]])
plt.show()



exit()

