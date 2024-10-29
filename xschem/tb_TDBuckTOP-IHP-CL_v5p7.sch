v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
T {DOUT too many 0s
--> VCOREF faster than VCOSENS
--> VCOSENS needs to  be faster by DECREASING VCONTs
--> this is done by having more 1s in D1 (PMOS)
--> DOUT connected to D1_N to have negative FB} 3220 -1465 0 0 0.3 0.3 {}
N 1400 -1040 1400 -1010 {
lab=VDD}
N 1400 -890 1400 -860 {
lab=VSS}
N 1310 -950 1340 -950 {
lab=VCONTr}
N 1460 -970 1550 -970 {
lab=V_1r}
N 1460 -930 1490 -930 {
lab=V_2r}
N 1400 -1360 1400 -1330 {
lab=VDD}
N 1400 -1210 1400 -1180 {
lab=VSS}
N 1310 -1270 1340 -1270 {
lab=VCONTs}
N 1460 -1290 1550 -1290 {
lab=V_1s}
N 1460 -1250 1490 -1250 {
lab=V_2s}
N 2670 -420 2700 -420 {
lab=#net1}
N 2570 -420 2610 -420 {
lab=V_inductor}
N 2320 -420 2510 -420 {
lab=V_res}
N 2320 -530 2320 -510 {
lab=VH}
N 2320 -480 2340 -480 {
lab=VH}
N 2340 -530 2340 -480 {
lab=VH}
N 2320 -530 2340 -530 {
lab=VH}
N 2250 -480 2280 -480 {
lab=D1}
N 2320 -320 2320 -300 {
lab=VSS}
N 2320 -370 2340 -370 {
lab=VSS}
N 2340 -370 2340 -320 {
lab=VSS}
N 2320 -320 2340 -320 {
lab=VSS}
N 2240 -370 2280 -370 {
lab=D1_N}
N 2320 -420 2320 -400 {
lab=V_res}
N 2320 -620 2320 -530 { lab=VH}
N 2795 -630 2795 -610 { lab=GND}
N 2795 -740 2795 -690 { lab=VH}
N 1365 -620 1395 -620 {
lab=VCP}
N 2905 -630 2905 -610 { lab=GND}
N 2905 -740 2905 -690 { lab=VDIG}
N 2700 -250 2700 -210 {
lab=VSS}
N 2860 -200 2860 -160 {
lab=GND}
N 2860 -320 2860 -260 {
lab=#net2}
N 2860 -420 2860 -380 {
lab=ldo_out}
N 2700 -360 2700 -310 {
lab=ldo_out}
N 3080 -300 3080 -240 {
lab=VCONTs}
N 3080 -85 3080 -45 {
lab=GND}
N 3080 -400 3080 -360 {
lab=ldo_out}
N 1460 -620 1585 -620 {
lab=DOUT_D1}
N 1370 -385 1400 -385 {
lab=VCN}
N 1465 -385 1590 -385 {
lab=DOUT_D1_N}
N 2310 -1135 2350 -1135 {
lab=V_1r_buff_sp}
N 2310 -1095 2350 -1095 {
lab=V_1s_buff_sp}
N 2650 -1115 2715 -1115 {
lab=DOUT}
N 1845 -1290 1885 -1290 {
lab=V_1s_buff}
N 1845 -970 1885 -970 {
lab=V_1r_buff}
N 2005 -1380 2005 -1350 {
lab=VDIG}
N 2005 -1060 2005 -1030 {
lab=VDIG}
N 2005 -1230 2005 -1200 {
lab=VSS}
N 2005 -910 2005 -880 {
lab=VSS}
N 2125 -1270 2170 -1270 {
lab=V_1s_buff_sp}
N 2125 -950 2170 -950 {
lab=V_1r_buff_sp}
N 2500 -1215 2500 -1185 {
lab=VDIG}
N 2500 -1045 2500 -1015 {
lab=VSS}
N 3080 -180 3080 -145 {
lab=#net3}
N 2320 -450 2320 -420 {
lab=V_res}
N 2320 -340 2320 -320 {
lab=VSS}
N 2580 -630 2580 -610 { lab=GND}
N 2580 -740 2580 -690 { lab=VDD_GD}
N 1690 -1280 1770 -1280 {
lab=V_1s_dl}
N 1770 -1290 1770 -1280 {
lab=V_1s_dl}
N 1690 -960 1770 -960 {
lab=V_1r_dl}
N 1770 -970 1770 -960 {
lab=V_1r_dl}
N 2125 -1360 2125 -1310 {
lab=#net4}
N 2125 -1450 2125 -1420 {
lab=VSS}
N 2125 -1040 2125 -990 {
lab=#net5}
N 2125 -1130 2125 -1100 {
lab=VSS}
C {devices/code_shown.sym} 3240 -1020 0 0 {name=s1 only_toplevel=false value=".param VDIG = 1.2
.param VH = 3.3
.param VDD_GD = 3.3
*LATEST TDBuckLOADS
*1000mA
*.param RL = 1.2
*100mA
.param RL = 12
*80mA
*.param RL = 15
*40mA
*.param RL = 30
*20mA
*.param RL = 60
*10mA
*.param RL = 120
.save v(ldo_out) v(v_res) v(D1) v(D1_N) v(DOUT) v(VCONTr) v(VCONTs) v(V_1r) v(V_1s) v(V_1r_dl) v(V_1s_dl) v(DOUT) v(vh) i(vh) v(vdd_gd) i(vdd_gd) i(v_res) v(VCONTs_OL) v(vcp) v(vcn) i(vldo_out) i(vvdig) i(vvdd)
vvdd vdd 0 dc 3.3
vvss vss 0 0
vvcontr VCONTr 0 dc 0.6
*vvconts VCONTs 0 dc 0.61
*.option temp = 200
.ic v(VCONTs) = 0.6
.ic v(V_1s) = 0
.ic v(V_2s) = 3.3
.ic v(V_1r) = 3.3
.ic v(V_2r) = 0
.ic v(ldo_out) = 1.2
*.ic v(V_res) = 1.2
.ic v(V_inductor) = 1.2

.option method=gear
.option cshunt=0.01e-12

.control
*tran 2n 1m
*tran 4n 250u
tran 100p 150u
*wrdata /foss/designs/TO202406_CMOSVCO_Esm22/xschem/data/dataVSENS_2xCMOSVCOnDFF_v1p1.txt v(V_1s) tran1.v(V_1s) tran2.v(V_1s) tran3.v(V_1s) tran4.v(V_1s) tran5.v(V_1s) tran6.v(V_1s) tran7.v(V_1s) tran8.v(V_1s) tran9.v(V_1s) tran10.v(V_1s) tran11.v(V_1s) tran12.v(V_1s) tran13.v(V_1s) tran14.v(V_1s) tran15.v(V_1s) tran16.v(V_1s) tran17.v(V_1s) tran18.v(V_1s) tran19.v(V_1s)
*wrdata /foss/designs/TO202406_CMOSVCO_Esm22/xschem/data/data_TDBuckTOP-CL_v5p3_RL60.txt tran.v(vh) tran.i(vh) tran.v(ldo_out) tran.i(vldo_out) tran.v(vh_gd) tran.i(vh_gd) tran.i(vvdig) tran.i(vvdd)
plot v(ldo_out)
plot v(v_res)
plot v(D1) v(D1_N) i(VH)
plot v(DOUT)
plot v(VCONTr) v(VCONTs)
plot v(V_1r_buff) v(V_1s_buff)+2 v(DOUT)+4
plot i(vldo_out)
*plot v(VCONTs_OL)
.endc
"}
C {devices/lab_pin.sym} 1400 -1040 1 0 {name=p4 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 1400 -860 3 0 {name=p5 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 1310 -950 1 0 {name=p6 sig_type=std_logic lab=VCONTr}
C {devices/lab_pin.sym} 1480 -970 1 0 {name=p7 sig_type=std_logic lab=V_1r}
C {devices/lab_pin.sym} 1490 -930 1 0 {name=p1 sig_type=std_logic lab=V_2r}
C {devices/lab_pin.sym} 1400 -1360 1 0 {name=p2 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 1400 -1180 3 0 {name=p3 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 1310 -1270 1 0 {name=p8 sig_type=std_logic lab=VCONTs}
C {devices/lab_pin.sym} 1480 -1290 1 0 {name=p9 sig_type=std_logic lab=V_1s}
C {devices/lab_pin.sym} 1490 -1250 1 0 {name=p10 sig_type=std_logic lab=V_2s}
C {devices/ind.sym} 2640 -420 1 0 {name=L37
m=1
value=275n
footprint=1206
device=inductor}
C {devices/lab_wire.sym} 2590 -420 1 1 {name=l38 sig_type=std_logic lab=V_inductor}
C {devices/res.sym} 2540 -420 1 0 {name=R3
value=0
footprint=1206
device=resistor
m=1}
C {devices/lab_wire.sym} 2490 -420 1 1 {name=l39 sig_type=std_logic lab=V_res}
C {devices/lab_wire.sym} 2320 -620 0 0 {name=l18 sig_type=std_logic lab=VH}
C {devices/lab_wire.sym} 2320 -300 2 0 {name=l20 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 2250 -480 0 0 {name=l21 sig_type=std_logic lab=D1
}
C {devices/lab_pin.sym} 2240 -370 0 0 {name=l22 sig_type=std_logic lab=D1_N
}
C {devices/vsource.sym} 2700 -390 0 0 {name=V_res value=0}
C {devices/lab_pin.sym} 2700 -335 2 0 {name=p23 sig_type=std_logic lab=ldo_out

}
C {devices/vsource.sym} 2795 -660 0 0 {name=VH value=\{VH\}}
C {devices/gnd.sym} 2795 -610 0 0 {name=l23 lab=GND}
C {devices/lab_wire.sym} 2795 -740 0 0 {name=l24 sig_type=std_logic lab=VH}
C {devices/lab_wire.sym} 1635 -670 0 0 {name=l11 sig_type=std_logic lab=VDIG}
C {devices/lab_pin.sym} 1735 -620 0 1 {name=l12 sig_type=std_logic lab=D1
}
C {devices/lab_wire.sym} 1665 -570 2 0 {name=l7 sig_type=std_logic lab=VSS}
C {devices/vsource.sym} 2905 -660 0 0 {name=VVDIG value=\{VDIG\}}
C {devices/gnd.sym} 2905 -610 0 0 {name=l1 lab=GND}
C {devices/lab_wire.sym} 2905 -740 0 0 {name=l2 sig_type=std_logic lab=VDIG}
C {devices/capa.sym} 2700 -280 0 0 {name=C4
m=1
value=32n
footprint=1206
device="ceramic capacitor"}
C {devices/lab_wire.sym} 2700 -210 0 0 {name=l19 sig_type=std_logic lab=VSS}
C {devices/res.sym} 2860 -230 0 0 {name=RL
value=\{RL\}
footprint=1206
device=resistor
m=1}
C {devices/vsource.sym} 2860 -350 0 0 {name=Vldo_out value=0}
C {devices/gnd.sym} 2860 -160 0 0 {name=l52 lab=GND}
C {devices/lab_pin.sym} 2860 -420 2 0 {name=p25 sig_type=std_logic lab=ldo_out

}
C {devices/res.sym} 3080 -330 0 0 {name=RDIV1
value=100e6
footprint=1206
device=resistor
m=1}
C {devices/res.sym} 3080 -210 0 0 {name=RDIV2
value=50e6
footprint=1206
device=resistor
m=1}
C {devices/gnd.sym} 3080 -45 0 0 {name=l3 lab=GND}
C {devices/lab_pin.sym} 3080 -400 2 0 {name=p27 sig_type=std_logic lab=ldo_out

}
C {devices/lab_pin.sym} 3080 -270 2 0 {name=p28 sig_type=std_logic lab=VCONTs}
C {devices/lab_pin.sym} 1485 -620 1 0 {name=p31 sig_type=std_logic lab=DOUT_D1}
C {devices/lab_pin.sym} 1490 -385 1 0 {name=p36 sig_type=std_logic lab=DOUT_D1_N}
C {devices/lab_pin.sym} 2310 -1095 1 0 {name=p37 sig_type=std_logic lab=V_1s_buff_sp}
C {devices/lab_pin.sym} 2340 -1135 1 0 {name=p38 sig_type=std_logic lab=V_1r_buff_sp}
C {devices/lab_pin.sym} 2690 -1115 1 0 {name=p39 sig_type=std_logic lab=DOUT}
C {devices/lab_pin.sym} 2170 -1270 1 0 {name=p40 sig_type=std_logic lab=V_1s_buff_sp}
C {devices/lab_pin.sym} 2170 -950 1 0 {name=p41 sig_type=std_logic lab=V_1r_buff_sp}
C {devices/lab_pin.sym} 2005 -1380 1 0 {name=p42 sig_type=std_logic lab=VDIG}
C {devices/lab_pin.sym} 2005 -1200 3 0 {name=p44 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 2005 -880 3 0 {name=p45 sig_type=std_logic lab=VSS}
C {SRlatch_NOR.sym} 2500 -1115 0 0 {name=x10}
C {devices/lab_pin.sym} 2500 -1015 3 0 {name=p47 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 1870 -970 1 0 {name=p48 sig_type=std_logic lab=V_1r_buff}
C {devices/lab_pin.sym} 1865 -1290 1 0 {name=p49 sig_type=std_logic lab=V_1s_buff}
C {devices/lab_pin.sym} 2835 -1055 0 0 {name=p12 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 2955 -1135 2 0 {name=p14 sig_type=std_logic lab=VCP}
C {devices/lab_pin.sym} 2955 -1095 2 0 {name=p15 sig_type=std_logic lab=VCN}
C {devices/lab_wire.sym} 2835 -1175 0 0 {name=l5 sig_type=std_logic lab=VDIG}
C {devices/res.sym} 3080 -115 0 0 {name=RDIV3
value=50e6
footprint=1206
device=resistor
m=1}
C {devices/lab_pin.sym} 1740 -385 0 1 {name=l13 sig_type=std_logic lab=D1_N
}
C {sg13g2_stdcells/sg13g2_buf_4.sym} 1435 -385 0 0 {name=x6 VDD=VDIG VSS=VSS prefix=sg13g2_ }
C {sg13g2_pr/sg13_hv_pmos.sym} 2300 -480 0 0 {name=M1
l=0.4u
w=10u
ng=1
m=12000
model=sg13_hv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_hv_nmos.sym} 2300 -370 0 0 {name=M2
l=0.45u
w=10u
ng=1
m=4000
model=sg13_hv_nmos
spiceprefix=X
}
C {sg13g2_stdcells/sg13g2_buf_4.sym} 1435 -620 0 0 {name=x3 VDD=VDIG VSS=VSS prefix=sg13g2_ }
C {sg13g2_stdcells/sg13g2_buf_4.sym} 1810 -1290 0 0 {name=x7 VDD=VDIG VSS=VSS prefix=sg13g2_ }
C {sg13g2_stdcells/sg13g2_buf_4.sym} 1810 -970 0 0 {name=x12 VDD=VDIG VSS=VSS prefix=sg13g2_ }
C {devices/lab_pin.sym} 2005 -1060 1 0 {name=p20 sig_type=std_logic lab=VDIG}
C {devices/lab_pin.sym} 2500 -1215 1 0 {name=p21 sig_type=std_logic lab=VDIG}
C {devices/vsource.sym} 2580 -660 0 0 {name=VDD_GD value=\{VDD_GD\}}
C {devices/gnd.sym} 2580 -610 0 0 {name=l6 lab=GND}
C {devices/lab_wire.sym} 2580 -740 0 0 {name=l8 sig_type=std_logic lab=VDD_GD}
C {devices/lab_wire.sym} 1665 -670 0 1 {name=l9 sig_type=std_logic lab=VDD_GD}
C {devices/code_shown.sym} 3240 -1315 0 0 {name=MODEL1 only_toplevel=true
format="tcleval( @value )"
value="

.param corner=0

.if (corner==0)
.lib $::SG13G2_MODELS/cornerMOSlv.lib mos_tt
.lib $::SG13G2_MODELS/cornerMOShv.lib mos_tt
.lib $::SG13G2_MODELS/cornerRES.lib res_typ
.lib $::SG13G2_MODELS/cornerCAP.lib cap_typ
.endif

.include /opt/pdks/ihp-sg13g2/libs.ref/sg13g2_stdcell/spice/sg13g2_stdcell.spice
"}
C {/home/designer/shared/TO202410_IHP_TDBuck/xschem/short_pulse_generatorRC_v1p1.sym} 2005 -1290 0 0 {name=x13}
C {/home/designer/shared/TO202410_IHP_TDBuck/xschem/short_pulse_generatorRC_v1p1.sym} 2005 -970 0 0 {name=x8}
C {/home/designer/shared/TO202410_IHP_TDBuck/xschem/NOLRC2ns_v1p1.sym} 2835 -1115 0 0 {name=x1}
C {/home/designer/shared/TO202410_IHP_TDBuck/xschem/Esm22_CMOSVCOlowG_v6p1_IHP.sym} 1400 -1270 0 0 {name=x5}
C {/home/designer/shared/TO202410_IHP_TDBuck/xschem/Esm22_CMOSVCOlowG_v6p1_IHP.sym} 1400 -950 0 0 {name=x2}
C {devices/lab_pin.sym} 1365 -620 1 0 {name=p11 sig_type=std_logic lab=VCP}
C {devices/lab_pin.sym} 1370 -385 1 0 {name=p13 sig_type=std_logic lab=VCN}
C {/home/designer/shared/TO202410_IHP_TDBuck/xschem/GateDriver_AM_v1p1.sym} 1615 -580 0 0 {name=X9}
C {devices/lab_wire.sym} 1640 -435 0 0 {name=l10 sig_type=std_logic lab=VDIG}
C {devices/lab_wire.sym} 1670 -335 2 0 {name=l16 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 1670 -435 0 1 {name=l17 sig_type=std_logic lab=VDD_GD}
C {/home/designer/shared/TO202410_IHP_TDBuck/xschem/GateDriver_AM_v1p1.sym} 1620 -345 0 0 {name=X4}
C {/home/designer/shared/TO202410_IHP_TDBuck/xschem/VCDLtop_v2p1.sym} 1620 -1280 0 0 {name=x11}
C {/home/designer/shared/TO202410_IHP_TDBuck/xschem/VCDLtop_v2p1.sym} 1620 -960 0 0 {name=x14}
C {devices/lab_pin.sym} 1620 -1330 1 0 {name=p16 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 1620 -1010 1 0 {name=p17 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 1620 -1230 3 0 {name=p18 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 1620 -910 3 0 {name=p19 sig_type=std_logic lab=VSS}
C {devices/capa.sym} 2125 -1390 2 0 {name=C1
m=1
value=100f
footprint=1206
device="ceramic capacitor"}
C {devices/lab_pin.sym} 2125 -1450 1 0 {name=p26 sig_type=std_logic lab=VSS}
C {devices/capa.sym} 2125 -1070 2 0 {name=C2
m=1
value=100f
footprint=1206
device="ceramic capacitor"}
C {devices/lab_pin.sym} 2125 -1130 1 0 {name=p29 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 1550 -1270 3 0 {name=p24 sig_type=std_logic lab=VCONTs}
C {devices/lab_pin.sym} 1730 -1280 1 0 {name=p30 sig_type=std_logic lab=V_1s_dl}
C {devices/lab_pin.sym} 1730 -960 1 0 {name=p32 sig_type=std_logic lab=V_1r_dl}
C {devices/lab_pin.sym} 1550 -950 3 0 {name=p22 sig_type=std_logic lab=VCONTr}
