v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -90 80 -90 140 {
lab=GND}
N -90 -0 -90 20 {
lab=VgMD2}
N -90 -30 -90 -0 {
lab=VgMD2}
N 70 -60 70 -30 {
lab=VgMD5}
N 10 0 30 0 {
lab=VgMD2}
N 110 -170 130 -170 {
lab=#net1}
N 430 -70 430 -30 {
lab=#net2}
N 260 -110 260 -30 {
lab=#net1}
N 130 -170 220 -110 {
lab=#net1}
N 220 -110 260 -110 {
lab=#net1}
N 260 -140 260 -110 {
lab=#net1}
N 70 -110 120 -110 {
lab=VgMD5}
N 70 -140 70 -110 {
lab=VgMD5}
N 200 -170 220 -170 {
lab=VgMD5}
N 120 -110 200 -170 {
lab=VgMD5}
N 70 -60 360 -60 {
lab=VgMD5}
N 70 -110 70 -60 {
lab=VgMD5}
N 360 -110 360 -60 {
lab=VgMD5}
N 360 -170 390 -170 {
lab=VgMD5}
N 340 0 390 0 {
lab=Vs}
N 340 0 340 170 {
lab=Vs}
N 300 0 340 0 {
lab=Vs}
N -200 170 340 170 {
lab=Vs}
N -200 -0 -200 170 {
lab=Vs}
N 430 140 600 140 {
lab=GND}
N 600 30 600 140 {
lab=GND}
N 430 30 430 140 {
lab=GND}
N 260 140 430 140 {
lab=GND}
N 260 30 260 140 {
lab=GND}
N 70 140 260 140 {
lab=GND}
N 70 30 70 140 {
lab=GND}
N -90 140 70 140 {
lab=GND}
N -130 0 -130 50 {
lab=Vs}
N -200 0 -130 0 {
lab=Vs}
N -130 -60 -130 0 {
lab=Vs}
N 560 -70 560 0 {
lab=VgMd78}
N 430 -140 430 -70 {
lab=#net2}
N 560 -120 560 -70 {
lab=VgMd78}
N 600 -70 600 -30 {
lab=Vg}
N 70 -230 70 -200 {
lab=VH}
N 430 -230 600 -230 {
lab=VH}
N 600 -230 600 -200 {
lab=VH}
N 430 -230 430 -200 {
lab=VH}
N 260 -230 430 -230 {
lab=VH}
N 260 -230 260 -200 {
lab=VH}
N 70 -230 260 -230 {
lab=VH}
N 70 -250 70 -230 {
lab=VH}
N 60 -250 70 -250 {
lab=VH}
N -90 -150 -90 -90 {
lab=Vdd}
N -230 0 -200 -0 {
lab=Vs}
N 600 140 600 170 {
lab=GND}
N 600 -70 640 -70 {
lab=Vg}
N 600 -140 600 -70 {
lab=Vg}
N 70 0 90 0 {
lab=GND}
N 90 0 90 30 {
lab=GND}
N 70 30 90 30 {
lab=GND}
N 240 0 260 0 {
lab=GND}
N 240 0 240 30 {
lab=GND}
N 240 30 260 30 {
lab=GND}
N 430 0 440 0 {
lab=GND}
N 440 0 440 30 {
lab=GND}
N 430 30 440 30 {
lab=GND}
N 600 0 620 0 {
lab=GND}
N 620 0 620 30 {
lab=GND}
N 600 30 620 30 {
lab=GND}
N 50 -170 70 -170 {
lab=VH}
N 50 -200 50 -170 {
lab=VH}
N 50 -200 70 -200 {
lab=VH}
N 260 -170 280 -170 {
lab=VH}
N 280 -200 280 -170 {
lab=VH}
N 260 -200 280 -200 {
lab=VH}
N 430 -170 450 -170 {
lab=VH}
N 450 -200 450 -170 {
lab=VH}
N 430 -200 450 -200 {
lab=VH}
N 600 -170 620 -170 {
lab=VH}
N 620 -200 620 -170 {
lab=VH}
N 600 -200 620 -200 {
lab=VH}
N -90 -60 -70 -60 {
lab=Vdd}
N -70 -90 -70 -60 {
lab=Vdd}
N -90 -90 -70 -90 {
lab=Vdd}
N -90 50 -70 50 {
lab=GND}
N -70 50 -70 80 {
lab=GND}
N -90 80 -70 80 {
lab=GND}
N 10 -20 10 0 {
lab=VgMD2}
N -90 0 10 0 {
lab=VgMD2}
N 420 -70 430 -70 {
lab=#net2}
N 340 -110 360 -110 {
lab=VgMD5}
N 360 -170 360 -110 {
lab=VgMD5}
N 500 -70 560 -70 {
lab=VgMd78}
N 430 -70 440 -70 {
lab=#net2}
N 550 -120 560 -120 {
lab=VgMd78}
N 560 -170 560 -120 {
lab=VgMd78}
C {sg13g2_pr/sg13_lv_pmos.sym} -110 -60 0 0 {name=MD9
l=\{l_9\}
w=\{w_9\}
ng=\{ng_9\}
m=\{mult_9\}
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} -110 50 2 1 {name=MD10
l=\{l_10\}
w=\{w_10\}
ng=\{ng_10\}
m=\{mult_10\}
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_hv_pmos.sym} 90 -170 0 1 {name=MD1
l=\{l_1357\}
w=\{w_1357\}
ng=\{ng_13\}
m=\{mult_13\}
model=sg13_hv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_hv_pmos.sym} 240 -170 0 0 {name=MD3
l=\{l_1357\}
w=\{w_1357\}
ng=\{ng_13\}
m=\{mult_13\}
model=sg13_hv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_hv_pmos.sym} 410 -170 0 0 {name=MD5
l=\{l_1357\}
w=\{w_1357\}
ng=\{ng_5\}
m=\{mult_5\}
model=sg13_hv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_hv_pmos.sym} 580 -170 0 0 {name=MD7
l=\{l_1357\}
w=\{w_1357\}
ng=\{ng_7\}
m=\{mult_7\}
model=sg13_hv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_hv_nmos.sym} 50 0 2 1 {name=MD2
l=\{l_2468\}
w=\{w_2468\}
ng=\{ng_24\}
m=\{mult_24\}
model=sg13_hv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_hv_nmos.sym} 280 0 2 0 {name=MD4
l=\{l_2468\}
w=\{w_2468\}
ng=\{ng_24\}
m=\{mult_24\}
model=sg13_hv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_hv_nmos.sym} 410 0 2 1 {name=MD6
l=\{l_2468\}
w=\{w_2468\}
ng=\{ng_6\}
m=\{mult_6\}
model=sg13_hv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_hv_nmos.sym} 580 0 2 1 {name=MD8
l=\{l_2468\}
w=\{w_2468\}
ng=\{ng_8\}
m=\{mult_8\}
model=sg13_hv_nmos
spiceprefix=X
}
C {iopin.sym} 60 -250 0 1 {name=p1 lab=VH}
C {iopin.sym} -90 -150 0 1 {name=p2 lab=Vdd}
C {ipin.sym} -230 0 0 0 {name=p3 lab=Vs}
C {opin.sym} 640 -70 0 0 {name=p4 lab=Vg}
C {iopin.sym} 600 170 0 1 {name=p5 lab=GND}
C {lab_pin.sym} 10 -20 0 0 {name=p6 sig_type=std_logic lab=VgMD2}
C {lab_pin.sym} 340 -110 0 0 {name=p7 sig_type=std_logic lab=VgMD5}
C {lab_pin.sym} 550 -120 0 0 {name=p8 sig_type=std_logic lab=VgMd78}
C {ammeter.sym} 470 -70 3 0 {name=VIg78 savecurrent=true spice_ignore=0}