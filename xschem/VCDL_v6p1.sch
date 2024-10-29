v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 170 20 210 20 { lab=VIN}
N 170 20 170 130 { lab=VIN}
N 170 130 210 130 { lab=VIN}
N 250 -60 250 -10 { lab=#net1}
N 250 20 280 20 { lab=VDD}
N 250 130 280 130 { lab=VSS}
N 280 130 280 240 { lab=VSS}
N 250 160 250 210 { lab=#net2}
N 250 280 250 290 {
lab=VSS}
N 250 -130 250 -120 {
lab=VDD}
N 250 -130 280 -130 {
lab=VDD}
N 280 -90 280 20 {
lab=VDD}
N 250 -90 280 -90 {
lab=VDD}
N 250 280 280 280 {
lab=VSS}
N 280 240 280 280 {
lab=VSS}
N 250 240 280 240 {
lab=VSS}
N 60 -90 210 -90 {
lab=#net3}
N -0 -130 -0 -120 {
lab=VDD}
N -0 -130 250 -130 {
lab=VDD}
N 0 -40 0 210 {
lab=#net3}
N 30 280 250 280 {
lab=VSS}
N -0 270 0 280 {
lab=VSS}
N -200 240 -40 240 {
lab=#net4}
N -260 280 -0 280 {
lab=VSS}
N -260 270 -260 280 {
lab=VSS}
N -260 180 -260 210 {
lab=#net4}
N -30 -130 0 -130 {
lab=VDD}
N -260 -130 -260 -120 {
lab=VDD}
N -200 180 -200 240 {
lab=#net4}
N -260 180 -200 180 {
lab=#net4}
N 0 -40 60 -40 {
lab=#net3}
N 60 -90 60 -40 {
lab=#net3}
N -330 -90 -300 -90 {
lab=VCONT}
N -0 240 30 240 {
lab=VSS}
N 30 240 30 280 {
lab=VSS}
N -40 200 -40 240 {
lab=#net4}
N -40 200 210 200 {
lab=#net4}
N 210 200 210 240 {
lab=#net4}
N -280 240 -260 240 {
lab=VSS}
N -280 240 -280 280 {
lab=VSS}
N -280 280 -260 280 {
lab=VSS}
N -260 -90 -230 -90 {
lab=VDD}
N -230 -130 -230 -90 {
lab=VDD}
N -30 -90 0 -90 {
lab=VDD}
N -30 -130 -30 -90 {
lab=VDD}
N 250 70 250 100 { lab=#net5}
N 250 -140 250 -130 {
lab=VDD}
N 280 -130 280 -90 {
lab=VDD}
N 250 270 250 280 {
lab=VSS}
N -220 240 -200 240 {
lab=#net4}
N -260 -30 -260 180 {
lab=#net4}
N -0 -60 0 -40 {
lab=#net3}
N 40 -90 60 -90 {
lab=#net3}
N -0 280 30 280 {
lab=VSS}
N -260 -130 -230 -130 {
lab=VDD}
N -100 -130 -30 -130 {
lab=VDD}
N -130 -130 -130 -120 {
lab=VDD}
N -130 -90 -100 -90 {
lab=VDD}
N -100 -130 -100 -90 {
lab=VDD}
N -130 -130 -100 -130 {
lab=VDD}
N -230 -130 -130 -130 {
lab=VDD}
N -130 -60 -130 -30 {
lab=#net4}
N -260 -30 -130 -30 {
lab=#net4}
N -260 -60 -260 -30 {
lab=#net4}
N -190 -90 -170 -90 {
lab=VDD}
N 450 70 450 100 { lab=VOUT}
N 450 20 480 20 { lab=VDD}
N 450 130 480 130 { lab=VSS}
N 450 70 510 70 { lab=VOUT}
N 450 50 450 70 { lab=VOUT}
N 250 70 360 70 {
lab=#net5}
N 250 50 250 70 { lab=#net5}
N 360 70 360 130 {
lab=#net5}
N 360 20 360 70 {
lab=#net5}
N 360 20 410 20 {
lab=#net5}
N 360 130 410 130 {
lab=#net5}
N 250 -60 450 -60 {
lab=#net1}
N 450 -60 450 -10 {
lab=#net1}
N 250 210 450 210 {
lab=#net2}
N 450 160 450 210 {
lab=#net2}
N 280 -130 480 -130 {
lab=VDD}
N 480 -130 480 20 {
lab=VDD}
N 480 130 480 280 {
lab=VSS}
N 280 280 480 280 {
lab=VSS}
C {devices/ipin.sym} 170 70 0 0 {name=p1 lab=VIN}
C {devices/iopin.sym} 250 -140 3 0 {name=p2 lab=VDD}
C {devices/iopin.sym} 250 290 1 0 {name=p4 lab=VSS}
C {devices/ipin.sym} -330 -90 0 0 {name=p3 lab=VCONT}
C {sg13g2_pr/sg13_hv_nmos.sym} -240 240 2 0 {name=M9
l=0.5u
w=5u
ng=1
m=1
model=sg13_hv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_hv_nmos.sym} -20 240 2 1 {name=M3
l=0.5u
w=5u
ng=1
m=1
model=sg13_hv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_hv_nmos.sym} 230 240 2 1 {name=M5
l=0.5u
w=3u
ng=1
m=2
model=sg13_hv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_hv_pmos.sym} -280 -90 0 0 {name=M8
l=7u
w=10u
ng=1
m=1
model=sg13_hv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_hv_pmos.sym} 20 -90 0 1 {name=M4
l=4u
w=8u
ng=1
m=1
model=sg13_hv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_hv_pmos.sym} 230 -90 0 0 {name=M6
l=4u
w=5u
ng=1
m=2
model=sg13_hv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_hv_pmos.sym} 230 20 0 0 {name=M2
l=5u
w=5u
ng=1
m=1
model=sg13_hv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_hv_nmos.sym} 230 130 2 1 {name=M1
l=5u
w=2u
ng=1
m=1
model=sg13_hv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_hv_pmos.sym} -150 -90 0 0 {name=M7
l=7u
w=0.5u
ng=1
m=1
model=sg13_hv_pmos
spiceprefix=X
}
C {lab_pin.sym} -190 -90 0 0 {name=p6 sig_type=std_logic lab=VDD}
C {devices/opin.sym} 510 70 0 0 {name=p7 lab=VOUT}
C {sg13g2_pr/sg13_hv_pmos.sym} 430 20 0 0 {name=M10
l=5u
w=5u
ng=1
m=1
model=sg13_hv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_hv_nmos.sym} 430 130 2 1 {name=M11
l=5u
w=2u
ng=1
m=1
model=sg13_hv_nmos
spiceprefix=X
}
