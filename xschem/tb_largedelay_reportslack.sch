v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 1030 -180 1170 -180 {
lab=VOUT}
N 370 -300 430 -300 {
lab=VIN,n2,n3,n4,n5,n6,n7,n8,n9,n10,n11,n12,n13,n14,n15,n16,n17,n18,n19,n20,n21,n22,n23,n24,n25,n26,n27,n28,n29,n30,n31,n32,n33,n34,n35,n36}
N 510 -300 610 -300 {
lab=n2,n3,n4,n5,n6,n7,n8,n9,n10,n11,n12,n13,n14,n15,n16,n17,n18,n19,n20,n21,n22,n23,n24,n25,n26,n27,n28,n29,n30,n31,n32,n33,n34,n35,n36,VOUT}
C {devices/code_shown.sym} -10 300 0 0 {name=CODE only_toplevel=false value="
.option scale=1e-6
.save v(vin) v(vout) 
.control
tran 2n 6u
plot v(vin) v(vout) 
plot v(vin) v(vout)+2
.endc

.measure tran tdelay
+ TRIG tran1.V(VIN) TD=0u VAL=0.9 RISE=1
+ TARG tran1.V(VOUT) TD=0u VAL=0.9 RISE=1


"}
C {devices/vsource.sym} -160 -110 0 0 {name=VCC value=1.2}
C {devices/vsource.sym} -240 -110 0 0 {name=VSS value=0}
C {devices/gnd.sym} -240 -80 0 0 {name=l1 lab=GND}
C {devices/gnd.sym} -160 -80 0 0 {name=l2 lab=GND}
C {devices/vsource.sym} -240 -210 0 0 {name=VIN value="PULSE(0 1.2 3u 1n 1n 12u 24u)"}
C {devices/lab_pin.sym} -240 -240 0 0 {name=p1 sig_type=std_logic lab=VIN}
C {devices/lab_pin.sym} -240 -180 0 0 {name=p2 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} -240 -140 0 0 {name=p3 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} -160 -140 0 0 {name=p6 sig_type=std_logic lab=VCC}
C {devices/lab_pin.sym} 1090 -180 1 0 {name=p8 sig_type=std_logic lab=VOUT}
C {devices/capa.sym} 1170 -150 0 0 {name=C1
m=1
value=10f
footprint=1206
device="ceramic capacitor"}
C {devices/lab_pin.sym} 1170 -120 0 0 {name=p14 sig_type=std_logic lab=VSS}
C {devices/code_shown.sym} -10 -20 0 0 {name=MODEL1 only_toplevel=true
format="tcleval( @value )"
value="

.param corner=0

.if (corner==0)
.lib $::SG13G2_MODELS/cornerMOSlv.lib mos_tt
.lib $::SG13G2_MODELS/cornerMOSlv.lib mos_tt
.lib $::SG13G2_MODELS/cornerRES.lib res_typ
.lib $::SG13G2_MODELS/cornerCAP.lib cap_typ
.endif

.include /opt/pdks/ihp-sg13g2/libs.ref/sg13g2_stdcell/spice/sg13g2_stdcell.spice
"}
C {devices/lab_pin.sym} 370 -300 0 0 {name=p4 sig_type=std_logic lab=VIN,n2,n3,n4,n5,n6,n7,n8,n9,n10,n11,n12,n13,n14,n15,n16,n17,n18,n19,n20,n21,n22,n23,n24,n25,n26,n27,n28,n29,n30,n31,n32,n33,n34,n35,n36}
C {devices/lab_pin.sym} 610 -300 0 1 {name=p7 sig_type=std_logic lab=n2,n3,n4,n5,n6,n7,n8,n9,n10,n11,n12,n13,n14,n15,n16,n17,n18,n19,n20,n21,n22,n23,n24,n25,n26,n27,n28,n29,n30,n31,n32,n33,n34,n35,n36,VOUT}
C {sg13g2_stdcells/sg13g2_dlygate4sd3_1.sym} 470 -300 0 0 {name=x1[0:35] VDD=VCC VSS=VSS prefix=sg13g2_ }
