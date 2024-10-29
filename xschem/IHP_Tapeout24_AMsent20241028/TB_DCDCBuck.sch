v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {

}
E {}
B 2 -40 -370 760 30 {flags=graph
y1=-0.1
y2=-0.1
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=6.2077138e-07
x2=7.8139256e-07
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node=Ron_M1
color=""
dataset=-1
unitx=1
logx=0
logy=0
}
N -454 -200 -440 -200 {
lab=Vg_M1}
N -454 -160 -440 -160 {
lab=Vg_M2}
N -130 -120 -130 -90 {
lab=Vdd}
N -130 -30 -130 -10 {
lab=GND}
N -410 -120 -410 -90 {
lab=Vg_M1}
N -410 -30 -410 -10 {
lab=GND}
N -410 30 -410 60 {
lab=Vg_M2}
N -410 120 -410 140 {
lab=GND}
N -230 -180 -230 -170 {
lab=Vo}
N -350 -140 -350 -130 {
lab=GND}
N -230 -180 -200 -180 {
lab=Vo}
N -260 -180 -230 -180 {
lab=Vo}
N -350 -300 -350 -280 {
lab=Vdd}
N -350 -240 -350 -220 {
lab=#net1}
C {DCDC_Buck.sym} -340 -160 0 0 {name=X1}
C {lab_pin.sym} -350 -298 0 0 {name=p1 sig_type=std_logic lab=Vdd}
C {lab_pin.sym} -454 -200 0 0 {name=p2 sig_type=std_logic lab=Vg_M1}
C {lab_pin.sym} -454 -160 0 0 {name=p3 sig_type=std_logic lab=Vg_M2}
C {lab_pin.sym} -206 -180 2 0 {name=p4 sig_type=std_logic lab=Vo}
C {code.sym} -1230 -310 0 0 {name=POWER_MOS_Parameters only_toplevel=false 

value="
*M1 hvPMOS
.param temp=27
.param mult_M1 = 12000
.param w_M1 =10u 
.param l_M1 = 0.4u
.param ng_M1 = 1

*M2 hvNMOS
.param mult_M2 = 4000
.param w_M2 =10u 
.param l_M2 =0.45u
.param ng_M2 =1




"}
C {vsource.sym} -130 -60 0 0 {name=Vdd value=\{Vdd\} savecurrent=false}
C {lab_pin.sym} -130 -120 0 0 {name=p5 sig_type=std_logic lab=Vdd}
C {gnd.sym} -130 -10 0 0 {name=l2 lab=GND}
C {vsource.sym} -410 90 0 0 {name=Vg2 value="PULSE(0 \{VH\} \{TdR\} \{TR\} \{TF\} \{T*D-TdR-TdF\} \{T\} 0)" savecurrent=false}
C {lab_pin.sym} -410 -120 0 0 {name=p6 sig_type=std_logic lab=Vg_M1}
C {gnd.sym} -410 -10 0 0 {name=l4 lab=GND}
C {vsource.sym} -410 -60 0 0 {name=Vg1 value="PULSE(0 \{VH\} 0 \{TR\} \{TF\} \{T*D\} \{T\} 0)" savecurrent=false}
C {lab_pin.sym} -410 30 0 0 {name=p7 sig_type=std_logic lab=Vg_M2}
C {gnd.sym} -410 140 0 0 {name=l5 lab=GND}
C {code.sym} -780 -310 0 0 {name=Simulation_Parameters only_toplevel=false 

value="
.param Vdd = 3.3
.param VH = 3.3
.param Del = 0

*.param D = 0.42
*.param T = 1u
*.param TR = 7n
*.param TF = 7n
*.param TdR = 0.1u
*.param TdF = 0.1u

*.param D = 0.6364
.param D = 0.615
.param T = 0.1u
.param TR = 1n
.param TF = 1n
.param TdR = 1n
.param TdF = 1n

.param temp = 27

"}
C {launcher.sym} -690 -80 0 0 {name=h1
descr="Annotate OP" 
tclcommand="set show_hidden_texts 1; xschem annotate_op"
*tclcommand="xschem annotate_op"}
C {code_shown.sym} -1230 -420 0 0 {name=MODEL1 only_toplevel=true
format="tcleval( @value )"
value="
.lib cornerMOShv.lib mos_tt
"}
C {gnd.sym} -350 -130 0 0 {name=l3 lab=GND}
C {code_shown.sym} -971 -309 0 0 {name=RLC_Parameters only_toplevel=false 
value="
*Parametros
*Filtro
*.param L = 1.37u
*.param R = 0.9
*.param C = 416n

* Io=2A 10MHz
*.param L = 137.5n
*.param R = 0.6
*.param C = 62.5n

* Io=1A 10MHz
.param L = 275n
.param R = 1.2
.param C = 31.25n

"}
C {ammeter.sym} -350 -260 0 0 {name=V_Iin savecurrent=true spice_ignore=0}
C {devices/code.sym} -1230 -160 0 0 {name=Transient_simulation only_toplevel=false 

value="
.save all
+ @n.x1.xm1.nsg13_hv_pmos[ids]
+ @n.x1.xm2.nsg13_hv_nmos[ids]
.param SimTime = 5u

.control
reset
set color0 = white
tran 1n 5u
let Io = i(v.x1.V_Io)
let Id_M1 = @n.x1.xm1.nsg13_hv_pmos[ids]
let Id_M2 = @n.x1.xm2.nsg13_hv_nmos[ids]
let gds_M1 = @n.x1.xm1.nsg13_hv_pmos[gds]
let gds_M2 = @n.x1.xm2.nsg13_hv_nmos[gds]
let Po = Io*v(Vo)
let I_in = i(V_Iin)
let Pin = I_in*v(Vdd)
let Vsd_M1 = v(Vdd) - v(x1.Vc)
let Vds_M2 = v(x1.Vc)
let P_M1 = Vsd_M1*Id_M1
let P_M2 = -Vds_M2*Id_M2
let Ron_M1 = Vsd_M1/Id_M1
let Ron_M2 = Vds_M2/Id_M2
*let Ron_M1 = 1/gds_M1
*let Ron_M2 = 1/gds_M2

let DataMeasBegin = SimTime-1u

meas tran Vo_mean AVG v(Vo) from=4u to=5u
meas tran Io_mean AVG Io from=4u to=5u
meas tran Irms_M1 RMS Id_M1 from=4u to=5u
meas tran Irms_M2 RMS Id_M2 from=4u to=5u
meas tran Po_mean AVG Po from=4u to=5u
meas tran Pin_mean AVG Pin from=4u to=5u
meas tran P_M1_mean AVG P_M1 from=4u to=5u
meas tran P_M2_mean AVG P_M2 from=4u to=5u

let eff = 100*Po_mean/Pin_mean
let loss_M1 = 100*P_M1_mean/Pin_mean
let loss_M2 = 100*P_M2_mean/Pin_mean
let cond_loss_M1 = Irms_M1*Irms_M1*40m*100
let cond_loss_M2 = Irms_M2*Irms_M2*35m*100
let sumaPot = eff+loss_M1+loss_M2
print eff loss_M1 loss_M2 cond_loss_M1 cond_loss_M2 sumaPot

plot Io i(v.x1.V_IL)
plot Id_M1 Id_M2
plot v(Vo)
plot Po Pin
*plot P_M1 P_M2
plot v(x1.Vc)
plot v(Vg_M1) v(Vg_M2)
plot Ron_M1 Ron_M2
write TB_DCDCBuck.raw
.endc



.end
"}
C {launcher.sym} -230 -400 0 0 {name=h5
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/TB_DCDCBuck.raw tran"
}