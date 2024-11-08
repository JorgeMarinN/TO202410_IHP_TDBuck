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
lab=Vg}
N 10 0 30 0 {
lab=VgMD2}
N 70 -60 360 -60 {
lab=Vg}
N 70 30 70 140 {
lab=GND}
N -90 140 70 140 {
lab=GND}
N -130 0 -130 50 {
lab=Vs}
N -130 -60 -130 0 {
lab=Vs}
N 70 -230 70 -200 {
lab=Vdd}
N 70 -250 70 -230 {
lab=Vdd}
N 60 -250 70 -250 {
lab=Vdd}
N 70 0 90 0 {
lab=GND}
N 90 0 90 30 {
lab=GND}
N 70 30 90 30 {
lab=GND}
N 70 -170 90 -170 {
lab=Vdd}
N 90 -200 90 -170 {
lab=Vdd}
N 70 -200 90 -200 {
lab=Vdd}
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
N -90 0 10 0 {
lab=VgMD2}
N -230 0 -130 0 {
lab=Vs}
N -90 -230 70 -230 {
lab=Vdd}
N -90 -230 -90 -90 {
lab=Vdd}
N 10 -170 10 0 {
lab=VgMD2}
N 10 -170 30 -170 {
lab=VgMD2}
N 70 -140 70 -60 {
lab=Vg}
C {sg13g2_pr/sg13_lv_pmos.sym} 50 -170 0 0 {name=MD9
l=0.13u
w=1u
ng=1
m=2
model=sg13_lv_pmos
spiceprefix=X
}
C {iopin.sym} 60 -250 0 1 {name=p2 lab=Vdd}
C {ipin.sym} -230 0 0 0 {name=p3 lab=Vs}
C {opin.sym} 360 -60 0 0 {name=p4 lab=Vg}
C {lab_pin.sym} 10 -20 0 0 {name=p6 sig_type=std_logic lab=VgMD2}
C {sg13g2_pr/sg13_hv_pmos.sym} -110 -60 0 0 {name=MD5
l=0.4u
w=1u
ng=1
m=2
model=sg13_hv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_hv_nmos.sym} -110 50 2 1 {name=MD6
l=0.45u
w=1u
ng=1
m=1
model=sg13_hv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 50 0 2 1 {name=MD2
l=0.13u
w=1u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {iopin.sym} -90 140 0 1 {name=p5 lab=GND}
