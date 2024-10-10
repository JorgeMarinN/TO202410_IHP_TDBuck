v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 520 -240 660 -240 {
lab=VOUT}
C {devices/code_shown.sym} 20 170 0 0 {name=CODE only_toplevel=false value="
.option scale=1e-6
.save v(vin) v(vout) 
.control
tran 10n 36u
plot v(vin) v(vout) 
plot v(vin) v(vout)+2
.endc

.measure tran tdelay
+ TRIG tran1.V(VIN) TD=0u VAL=0.9 RISE=1
+ TARG tran1.V(VOUT) TD=0u VAL=0.9 RISE=1


"}
C {devices/vsource.sym} -160 -110 0 0 {name=VCC value=1.8}
C {devices/vsource.sym} -240 -110 0 0 {name=VSS value=0}
C {devices/gnd.sym} -240 -80 0 0 {name=l1 lab=GND}
C {devices/gnd.sym} -160 -80 0 0 {name=l2 lab=GND}
C {devices/vsource.sym} -240 -210 0 0 {name=VIN value="PULSE(0 1.8 11u 1n 1n 12u 24u)"}
C {devices/lab_pin.sym} -240 -240 0 0 {name=p1 sig_type=std_logic lab=VIN}
C {devices/lab_pin.sym} -240 -180 0 0 {name=p2 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} -240 -140 0 0 {name=p3 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 110 -160 0 0 {name=p4 sig_type=std_logic lab=VIN}
C {devices/lab_pin.sym} 290 -120 0 0 {name=p5 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} -160 -140 0 0 {name=p6 sig_type=std_logic lab=VCC}
C {devices/lab_pin.sym} 580 -240 1 0 {name=p8 sig_type=std_logic lab=VOUT}
C {devices/capa.sym} 660 -210 0 0 {name=C1
m=1
value=10f
footprint=1206
device="ceramic capacitor"}
C {devices/lab_pin.sym} 660 -180 0 0 {name=p14 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 270 -200 0 0 {name=p7 sig_type=std_logic lab=VCC}
C {devices/lab_pin.sym} 410 -160 2 0 {name=p11 sig_type=std_logic lab=VOUT}
C {large_delay_v1p1_SKY130.sym} 230 -160 0 0 {name=x1}
C {devices/code.sym} -230 60 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval(@value )"
value=".lib $::SKYWATER_MODELS/sky130.lib.spice tt
.include $::SKYWATER_STDCELLS/sky130_fd_sc_hd.spice
"
spice_ignore=false
place=header}
