#https://stackoverflow.com/questions/46614526/how-to-import-a-csv-file-into-a-data-array
import pandas as pd
import numpy as np
import matplotlib
#matplotlib.use('Agg')
matplotlib.use('TkAgg')
#NOTE: DO "sudo apt-get update
#sudo apt-get install python3-tk"
from matplotlib import pyplot as plt


df=pd.read_fwf('./data/data_CMOSVCOhv_v1p5_IHP.txt')
df.to_csv('./data/data_CMOSVCOhv_v1p5_IHP.csv', index=False)
data = pd.read_csv("./data/data_CMOSVCOhv_v1p5_IHP.csv").values
num_rows, num_cols = data.shape
print(num_rows)
print(num_cols)
thres  = 1.65
sw = [0,2,4,6,8,10,12,14,16,18,20,22,24,26,28,30,32]
frq=[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]
for i in sw:
	#time data
	x = data[:,i]
	x=x[~pd.isnull(x)]
	size_x=x.shape
	x=x[int(size_x[0]/4):size_x[0]]
	# VCO voltage data
	y = data[:,i+1]
	y=y[~pd.isnull(y)]
	size_y=y.shape
	y=y[int(size_y[0]/4):size_y[0]]
	# determine transitions, diff calculates arr[i+1] – arr[i]
	kk2=np.diff(y > thres, prepend=False)
	# determine position of nonzero elements --> transitions!
	kk3=np.argwhere(kk2)[::2,0]
	lgt=kk3.shape
	print(lgt)
	# frq has half the length of sw
	j = int(i/2)
	# kk3[-1] is last element
	frq[j]=lgt[0]/(x[kk3[-1]]-x[kk3[0]])
	## calculate freq as period averages
	#periods = np.diff(x[kk3])
	#frq[j]=1/(sum(periods[1:-1])/len(periods[1:-1]))
	## plot all calculated periods
	#plt.clf()
	#plt.plot(np.diff(x[kk3]))
	#plt.show()
	print(lgt[0]/(x[kk3[-1]]-x[kk3[0]]))
	plt.plot(x,y)
plt.show()

vcont = np.arange(0.1, 3.31, 0.2)
plt.plot(vcont,frq)
plt.xlabel("Vin [V]")
plt.ylabel("Frequency [Hz]")
plt.show()
#plt.savefig("frequency_vs_vin.png")#used for "matplotlib.use('Agg')"


#plt.plot([0.2,0.3,0.4,0.5,0.6,0.7,0.8,0.9,1,1.1,1.2,1.3,1.4,1.5,1.6,1.7],frq[1:17])
#plt.xlabel("Vin [V]")
#plt.ylabel("Frequency [Hz]")
#plt.show()
##plt.savefig("frequency_vs_vin_zoom.png")#used for "matplotlib.use('Agg')"
