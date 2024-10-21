v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
L 4 160 -600 1170 -600 {}
L 4 160 -320 1170 -320 {}
L 4 160 -600 160 -320 {}
L 4 1520 -600 1520 -320 {}
L 4 1170 -600 1520 -600 {}
L 4 1170 -320 1520 -320 {}
T {NON-OVERLAP CIRCUIT} 380 -670 0 0 0.4 0.4 {}
N 1470 -500 1580 -500 {
lab=VCN}
N 1470 -400 1580 -400 {
lab=VCP}
N 170 -520 190 -520 {
lab=CLK}
N 270 -520 300 -520 {
lab=#net1}
N 420 -500 440 -500 {
lab=#net2}
N 420 -400 440 -400 {
lab=#net3}
N 170 -520 170 -380 {
lab=CLK}
N 170 -380 300 -380 {
lab=CLK}
N 300 -480 300 -460 {
lab=#net4}
N 300 -460 1150 -460 {
lab=#net4}
N 1150 -460 1150 -400 {
lab=#net4}
N 300 -440 300 -420 {
lab=#net5}
N 300 -440 1170 -440 {
lab=#net5}
N 1170 -500 1170 -440 {
lab=#net5}
N 1170 -500 1290 -500 {
lab=#net5}
N 1370 -500 1390 -500 {
lab=#net6}
N 1370 -400 1390 -400 {
lab=#net7}
N 1090 -500 1170 -500 {
lab=#net5}
N 1090 -400 1150 -400 {
lab=#net4}
N 440 -400 440 -380 {
lab=#net3}
N 1090 -400 1090 -380 {
lab=#net4}
N 440 -520 440 -500 {
lab=#net2}
N 1090 -520 1090 -500 {
lab=#net5}
N 1150 -400 1190 -400 {
lab=#net4}
N 1270 -400 1290 -400 {
lab=#net8}
N 140 -520 170 -520 {
lab=CLK}
N 740 -520 1090 -520 {
lab=#net5}
N 740 -380 1090 -380 {
lab=#net4}
C {devices/iopin.sym} 140 -520 2 0 {name=p1 lab=CLK}
C {devices/iopin.sym} 1580 -400 0 0 {name=p2 lab=VCP}
C {devices/iopin.sym} 1580 -500 0 0 {name=p3 lab=VCN}
C {devices/iopin.sym} 140 -660 2 0 {name=p4 lab=VCC}
C {devices/iopin.sym} 140 -620 2 0 {name=p5 lab=VSS}
C {large_delayRC_v1p1.sym} 560 -520 0 0 {name=x13}
C {large_delayRC_v1p1.sym} 560 -380 0 0 {name=x4}
C {devices/lab_pin.sym} 600 -560 0 0 {name=p6 sig_type=std_logic lab=VCC}
C {devices/lab_pin.sym} 620 -480 0 0 {name=p7 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 600 -420 0 0 {name=p8 sig_type=std_logic lab=VCC}
C {devices/lab_pin.sym} 620 -340 0 0 {name=p9 sig_type=std_logic lab=VSS}
C {sg13g2_stdcells/sg13g2_inv_1.sym} 230 -520 0 0 {name=x5 VDD=VCC VSS=VSS prefix=sg13g2_ }
C {sg13g2_stdcells/sg13g2_nor2_1.sym} 360 -500 0 0 {name=x3 VDD=VCC VSS=VSS prefix=sg13g2_ }
C {sg13g2_stdcells/sg13g2_nor2_1.sym} 360 -400 0 0 {name=x1 VDD=VCC VSS=VSS prefix=sg13g2_ }
C {sg13g2_stdcells/sg13g2_inv_1.sym} 1230 -400 0 0 {name=x2 VDD=VCC VSS=VSS prefix=sg13g2_ }
C {sg13g2_stdcells/sg13g2_inv_2.sym} 1330 -500 0 0 {name=x6 VDD=VCC VSS=VSS prefix=sg13g2_ }
C {sg13g2_stdcells/sg13g2_inv_2.sym} 1330 -400 0 0 {name=x7 VDD=VCC VSS=VSS prefix=sg13g2_ }
C {sg13g2_stdcells/sg13g2_inv_4.sym} 1430 -500 0 0 {name=x8 VDD=VCC VSS=VSS prefix=sg13g2_ }
C {sg13g2_stdcells/sg13g2_inv_4.sym} 1430 -400 0 0 {name=x9 VDD=VCC VSS=VSS prefix=sg13g2_ }
