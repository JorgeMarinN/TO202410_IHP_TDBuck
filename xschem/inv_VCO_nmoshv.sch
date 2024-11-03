v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -30 -70 -30 -50 {
lab=D}
N -35 -20 50 -20 {
lab=B}
N -100 -20 -70 -20 {
lab=G}
C {sg13g2_pr/sg13_hv_nmos.sym} -50 -20 2 1 {name=M1
l=5u
w=2u
ng=1
m=1
model=sg13_hv_nmos
spiceprefix=X
}
C {devices/iopin.sym} -30 -70 3 0 {name=p2 lab=D}
C {devices/iopin.sym} -30 30 1 0 {name=p1 lab=S}
C {devices/iopin.sym} -100 -20 2 0 {name=p3 lab=G}
C {devices/iopin.sym} 50 -20 2 1 {name=p4 lab=B}
