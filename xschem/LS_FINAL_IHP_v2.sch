v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -330 -30 -330 -10 {
lab=#net1}
N -400 -90 -370 -90 {
lab=IN}
N -400 -30 -400 20 {
lab=IN}
N -400 20 -370 20 {
lab=IN}
N -430 -30 -400 -30 {
lab=IN}
N -330 -150 -330 -120 {
lab=VDD}
N -330 50 -330 90 {
lab=VSS}
N -330 20 -310 20 {
lab=VSS}
N -310 20 -310 90 {
lab=VSS}
N -330 -90 -310 -90 {
lab=VDD}
N -310 -150 -310 -90 {
lab=VDD}
N 70 -190 200 -190 {
lab=VH}
N 200 -190 200 -160 {
lab=VH}
N -100 -190 -100 -160 {
lab=VH}
N 50 -190 50 -160 {
lab=VH}
N -100 -30 -100 0 {
lab=#net2}
N 50 -70 50 0 {
lab=#net3}
N 200 -30 200 0 {
lab=#net4}
N -120 -190 -120 -130 {
lab=VH}
N -120 -190 -100 -190 {
lab=VH}
N 50 -130 70 -130 {
lab=VH}
N 70 -190 70 -130 {
lab=VH}
N 200 -130 220 -130 {
lab=VH}
N 220 -190 220 -130 {
lab=VH}
N 200 -190 220 -190 {
lab=VH}
N -60 -130 -50 -130 {
lab=#net3}
N -50 -130 -50 -70 {
lab=#net3}
N -50 -70 50 -70 {
lab=#net3}
N -100 60 -100 90 {
lab=VSS}
N 50 90 200 90 {
lab=VSS}
N 200 60 200 90 {
lab=VSS}
N 50 60 50 90 {
lab=VSS}
N -100 30 -80 30 {
lab=VSS}
N -80 30 -80 90 {
lab=VSS}
N 30 30 50 30 {
lab=VSS}
N 30 30 30 90 {
lab=VSS}
N 200 30 220 30 {
lab=VSS}
N 220 30 220 90 {
lab=VSS}
N 200 90 220 90 {
lab=VSS}
N 0 -130 10 -130 {
lab=#net2}
N 0 -130 0 -50 {
lab=#net2}
N -100 -50 0 -50 {
lab=#net2}
N -100 -30 140 -30 {
lab=#net2}
N 140 -130 140 -30 {
lab=#net2}
N 140 -130 160 -130 {
lab=#net2}
N 140 30 160 30 {
lab=IN}
N -120 -130 -100 -130 {
lab=VH}
N -330 -30 -200 -30 {
lab=#net1}
N -320 -150 -310 -150 {
lab=VDD}
N -400 160 140 160 {
lab=IN}
N -400 20 -400 160 {
lab=IN}
N -320 -160 -320 -150 {
lab=VDD}
N -40 -200 -40 -190 {
lab=VH}
N 370 -180 370 -150 {
lab=VH}
N 370 -30 370 10 {
lab=OUT}
N 370 -120 390 -120 {
lab=VH}
N 390 -180 390 -120 {
lab=VH}
N 370 -180 390 -180 {
lab=VH}
N 370 40 390 40 {
lab=VSS}
N 310 -30 310 40 {
lab=#net4}
N 310 -120 330 -120 {
lab=#net4}
N 370 -30 400 -30 {
lab=OUT}
N 310 40 330 40 {
lab=#net4}
N 220 -190 370 -190 {
lab=VH}
N 370 -190 370 -180 {
lab=VH}
N -200 30 -140 30 {
lab=#net1}
N -200 -30 -200 30 {
lab=#net1}
N 140 30 140 160 {
lab=IN}
N 370 90 390 90 {
lab=VSS}
N 370 70 370 90 {
lab=VSS}
N 390 40 390 90 {
lab=VSS}
N -310 90 -100 90 {
lab=VSS}
N -330 90 -310 90 {
lab=VSS}
N -40 90 -40 110 {
lab=VSS}
N 200 -30 310 -30 {
lab=#net4}
N -400 -90 -400 -30 {
lab=IN}
N -40 -190 50 -190 {
lab=VH}
N 50 -190 70 -190 {
lab=VH}
N 50 -100 50 -70 {
lab=#net3}
N 30 90 50 90 {
lab=VSS}
N -100 90 -80 90 {
lab=VSS}
N -40 90 30 90 {
lab=VSS}
N -100 -100 -100 -50 {
lab=#net2}
N -100 -50 -100 -30 {
lab=#net2}
N -330 -60 -330 -30 {
lab=#net1}
N -330 -150 -320 -150 {
lab=VDD}
N -100 -190 -40 -190 {
lab=VH}
N 370 -90 370 -30 {
lab=OUT}
N 90 30 140 30 {
lab=IN}
N 220 90 370 90 {
lab=VSS}
N -80 90 -40 90 {
lab=VSS}
N 200 -100 200 -30 {
lab=#net4}
N 310 -120 310 -30 {
lab=#net4}
C {devices/ipin.sym} -430 -30 0 0 {name=p3 lab=IN}
C {devices/iopin.sym} -320 -160 3 0 {name=p4 lab=VDD}
C {devices/iopin.sym} -40 -200 3 0 {name=p1 lab=VH}
C {devices/opin.sym} 400 -30 0 0 {name=p2 lab=OUT}
C {devices/iopin.sym} -40 100 1 0 {name=p6 lab=VSS}
C {sg13g2_pr/sg13_lv_nmos.sym} -350 20 2 1 {name=M1
l=0.15u
w=1.0u
ng=1
m=5
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} -350 -90 0 0 {name=M2
l=0.15u
w=1.0u
ng=1
m=5
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_hv_nmos.sym} -120 30 2 1 {name=M3
l=0.5u
w=4.0u
ng=1
m=3
model=sg13_hv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_hv_pmos.sym} -80 -130 0 1 {name=M4
l=0.5u
w=2.0u
ng=1
m=1
model=sg13_hv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_hv_pmos.sym} 30 -130 0 0 {name=M5
l=0.5u
w=2.0u
ng=1
m=1
model=sg13_hv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_hv_nmos.sym} 70 30 2 0 {name=M6
l=0.5u
w=4.0u
ng=1
m=3
model=sg13_hv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_hv_pmos.sym} 180 -130 0 0 {name=M8
l=0.5u
w=10.0u
ng=1
m=10
model=sg13_hv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_hv_nmos.sym} 180 30 2 1 {name=M9
l=0.5u
w=10.0u
ng=1
m=10
model=sg13_hv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_hv_pmos.sym} 350 -120 0 0 {name=M7
l=0.5u
w=10.0u
ng=1
m=20
model=sg13_hv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_hv_nmos.sym} 350 40 2 1 {name=M10
l=0.5u
w=10.0u
ng=1
m=20
model=sg13_hv_nmos
spiceprefix=X
}
