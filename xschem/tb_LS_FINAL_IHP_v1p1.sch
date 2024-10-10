v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 290 130 430 130 {
lab=VOUT}
C {devices/code_shown.sym} 580 -220 0 0 {name=CODE only_toplevel=false value="
.save v(vin) v(vout) 
.control
tran 10n 36u
plot v(vin) v(vout) 
plot v(vin) v(vout)+2
.endc

.measure tran tdelay
+ TRIG tran1.V(VIN) TD=0u VAL=0.9 RISE=1
+ TARG tran1.V(VOUT) TD=0u VAL=1.65 RISE=1


"}
C {devices/vsource.sym} -160 -110 0 0 {name=VCC value=1.2}
C {devices/vsource.sym} -240 -110 0 0 {name=VSS value=0}
C {devices/gnd.sym} -240 -80 0 0 {name=l1 lab=GND}
C {devices/gnd.sym} -160 -80 0 0 {name=l2 lab=GND}
C {devices/vsource.sym} -240 -210 0 0 {name=VIN value="PULSE(0 1.2 11u 1n 1n 12u 24u)"}
C {devices/lab_pin.sym} -240 -240 0 0 {name=p1 sig_type=std_logic lab=VIN}
C {devices/lab_pin.sym} -240 -180 0 0 {name=p2 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} -240 -140 0 0 {name=p3 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} -10 130 0 0 {name=p4 sig_type=std_logic lab=VIN}
C {devices/lab_pin.sym} 290 160 0 1 {name=p5 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} -160 -140 0 0 {name=p6 sig_type=std_logic lab=VCC}
C {devices/lab_pin.sym} 350 130 1 0 {name=p8 sig_type=std_logic lab=VOUT}
C {devices/capa.sym} 430 160 0 0 {name=C1
m=1
value=100p
footprint=1206
device="ceramic capacitor"}
C {devices/lab_pin.sym} 430 190 0 0 {name=p14 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} -10 100 0 0 {name=p7 sig_type=std_logic lab=VCC}
C {LS_FINAL_IHP_v2.sym} 140 130 0 0 {name=x1}
C {devices/vsource.sym} -60 -110 0 0 {name=VH value=3.3}
C {devices/gnd.sym} -60 -80 0 0 {name=l3 lab=GND}
C {devices/lab_pin.sym} -60 -140 0 0 {name=p9 sig_type=std_logic lab=VH}
C {devices/lab_pin.sym} 290 100 0 1 {name=p15 sig_type=std_logic lab=VH}
C {devices/code_shown.sym} 80 -210 0 0 {name=MODEL1 only_toplevel=true
format="tcleval( @value )"
value="

.param corner=0

.if (corner==0)
.lib $::SG13G2_MODELS/cornerMOSlv.lib mos_tt
.lib $::SG13G2_MODELS/cornerMOShv.lib mos_tt
.lib $::SG13G2_MODELS/cornerRES.lib res_typ
.lib $::SG13G2_MODELS/cornerCAP.lib cap_typ
.endif
"}
