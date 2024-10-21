v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {

}
E {}
N -384 -180 -370 -180 {
lab=Vg_M1}
N -384 -140 -370 -140 {
lab=Vg_M2}
N -410 -510 -410 -480 {
lab=Vdd}
N -410 -420 -410 -400 {
lab=GND}
N -580 -550 -580 -520 {
lab=Vs_M1}
N -580 -460 -580 -440 {
lab=GND}
N -520 -470 -520 -440 {
lab=Vs_M2}
N -520 -380 -520 -360 {
lab=GND}
N -160 -160 -160 -150 {
lab=Vo}
N -280 -120 -280 -110 {
lab=GND}
N -160 -160 -130 -160 {
lab=Vo}
N -190 -160 -160 -160 {
lab=Vo}
N -280 -280 -280 -260 {
lab=VH}
N -280 -220 -280 -200 {
lab=#net1}
N -560 -250 -510 -250 {
lab=Vg_M1}
N -630 -200 -630 -170 {
lab=GND}
N -660 -320 -660 -300 {
lab=#net2}
N -630 -320 -630 -300 {
lab=#net3}
N -560 0 -510 0 {
lab=Vg_M2}
N -630 50 -630 80 {
lab=GND}
N -660 -70 -660 -50 {
lab=#net4}
N -630 -70 -630 -50 {
lab=#net5}
N -320 -510 -320 -480 {
lab=VH}
N -320 -420 -320 -400 {
lab=GND}
C {DCDC_Buck.sym} -270 -140 0 0 {name=X1}
C {lab_pin.sym} -280 -278 0 0 {name=p1 sig_type=std_logic lab=VH}
C {lab_pin.sym} -384 -180 0 0 {name=p2 sig_type=std_logic lab=Vg_M1}
C {lab_pin.sym} -384 -140 0 0 {name=p3 sig_type=std_logic lab=Vg_M2}
C {lab_pin.sym} -136 -160 2 0 {name=p4 sig_type=std_logic lab=Vo}
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
C {vsource.sym} -410 -450 0 0 {name=Vdd value=\{Vdd\} savecurrent=false}
C {lab_pin.sym} -410 -510 0 0 {name=p5 sig_type=std_logic lab=Vdd}
C {gnd.sym} -410 -400 0 0 {name=l2 lab=GND}
C {vsource.sym} -520 -410 0 1 {name=Vg2 value="PULSE(0 \{VH\} \{TdR\} \{TR\} \{TF\} \{T*D-TdR-TdF\} \{T\} 0)" savecurrent=false}
C {lab_pin.sym} -580 -550 0 1 {name=p6 sig_type=std_logic lab=Vs_M1}
C {gnd.sym} -580 -440 0 1 {name=l4 lab=GND}
C {vsource.sym} -580 -490 0 1 {name=Vg1 value="PULSE(0 \{VH\} 0 \{TR\} \{TF\} \{T*D\} \{T\} 0)" savecurrent=false}
C {lab_pin.sym} -520 -470 0 1 {name=p7 sig_type=std_logic lab=Vs_M2}
C {gnd.sym} -520 -360 0 1 {name=l5 lab=GND}
C {code.sym} -1440 -160 0 0 {name=Simulation_Parameters only_toplevel=false 

value="
.param Vdd = 1.2
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
.param TdR = 1.5n
.param TdF = 1.5n

.param temp = 27

"}
C {launcher.sym} -1070 -390 0 0 {name=h1
descr="Annotate OP" 
tclcommand="set show_hidden_texts 1; xschem annotate_op"
*tclcommand="xschem annotate_op"}
C {gnd.sym} -280 -110 0 0 {name=l3 lab=GND}
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
C {ammeter.sym} -280 -240 0 0 {name=V_Iin savecurrent=true spice_ignore=0}
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
let Po = Io*v(Vo)
let I_in = i(V_Iin)
let Pin = I_in*v(VH)
let Vsd_M1 = v(VH) - v(x1.Vc)
let Vds_M2 = v(x1.Vc)
let P_M1 = Vsd_M1*Id_M1
let P_M2 = -Vds_M2*Id_M2
let 
let DataMeasBegin = SimTime-1u

meas tran Vo_mean AVG v(Vo) from=4u to=5u
meas tran Io_mean AVG Io from=4u to=5u
meas tran Po_mean AVG Po from=4u to=5u
meas tran Pin_mean AVG Pin from=4u to=5u
meas tran P_M1_mean AVG P_M1 from=4u to=5u
meas tran P_M2_mean AVG P_M2 from=4u to=5u

let eff = 100*Po_mean/Pin_mean
let loss_M1 = 100*P_M1_mean/Pin_mean
let loss_M2 = 100*P_M2_mean/Pin_mean
let sumaPot = eff+loss_M1+loss_M2
print eff loss_M1 loss_M2 sumaPot

plot Io i(v.x1.V_IL)
plot Id_M1 Id_M2
plot v(Vo)
plot Po Pin
*plot P_M1 P_M2
plot v(x1.Vc)
plot v(Vg_M1) v(Vg_M2)
.endc



.end
"}
C {GateDriver.sym} -680 -210 0 0 {name=X2}
C {lab_pin.sym} -710 -250 0 0 {name=p8 sig_type=std_logic lab=Vs_M1}
C {lab_pin.sym} -660 -380 0 0 {name=p9 sig_type=std_logic lab=Vdd}
C {lab_pin.sym} -630 -380 0 1 {name=p10 sig_type=std_logic lab=VH
value=\{VH\}}
C {lab_pin.sym} -510 -250 0 1 {name=p11 sig_type=std_logic lab=Vg_M1}
C {gnd.sym} -630 -170 0 0 {name=l6 lab=GND}
C {GateDriver.sym} -680 40 0 0 {name=X3}
C {lab_pin.sym} -710 0 0 0 {name=p12 sig_type=std_logic lab=Vs_M2}
C {lab_pin.sym} -660 -130 0 0 {name=p13 sig_type=std_logic lab=Vdd}
C {lab_pin.sym} -630 -130 0 1 {name=p14 sig_type=std_logic lab=VH
value=\{VH\}}
C {lab_pin.sym} -510 0 0 1 {name=p15 sig_type=std_logic lab=Vg_M2}
C {gnd.sym} -630 80 0 0 {name=l1 lab=GND}
C {vsource.sym} -320 -450 0 0 {name=Vdd1 value=\{VH\} savecurrent=false}
C {lab_pin.sym} -320 -510 0 0 {name=p16 sig_type=std_logic lab=VH}
C {gnd.sym} -320 -400 0 0 {name=l7 lab=GND}
C {code.sym} -1430 -310 0 0 {name=GateDriver_Parameters only_toplevel=false 

value="
.param temp=27

*.param mult_13 = 1
*.param mult_24 = 6
*.param mult_5 = 100
*.param mult_6 = 100
*.param mult_7 = 200
*.param mult_8 = 200
*.param mult_9 = 5
*.param mult_10 = 5

.param mult_13 = 1
.param mult_24 = 6
*.param mult_5 = 25
*.param mult_6 = 25
.param mult_5 = 30
.param mult_6 = 25
*.param mult_7 = 200
*.param mult_8 = 200
.param mult_7 = 250
.param mult_8 = 200
.param mult_9 = 15
.param mult_10 = 15

.param ng_13 = 1
.param ng_24 = 1
.param ng_5 = 1
.param ng_6 = 1
.param ng_7 = 1
.param ng_8 = 1
.param ng_9 = 1
.param ng_10 = 1

.param l_1357 = 0.45u
*.param w_1357 = 0.3u
.param w_1357 = 10u
.param l_2468 = 0.4u
*.param w_2468 = 0.3u
.param w_2468 = 10u
.param l_9 = 0.13u
.param w_9 = 0.15u
.param l_10 = 0.13u
.param w_10 = 0.15u


"}
C {code.sym} -1430 -460 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value="
.lib cornerMOShv.lib mos_tt
.lib cornerMOSlv.lib mos_tt
"}
C {ammeter.sym} -630 -350 0 0 {name=V_Igd_M1 savecurrent=true spice_ignore=0}
C {ammeter.sym} -630 -100 0 0 {name=V_Igd_M2 savecurrent=true spice_ignore=0}
C {ammeter.sym} -660 -100 0 1 {name=V_Igd_M3 savecurrent=true spice_ignore=0}
C {ammeter.sym} -660 -350 0 1 {name=V_Igd_M4 savecurrent=true spice_ignore=0}
