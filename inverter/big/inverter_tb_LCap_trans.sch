v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -130 -150 -130 -120 {
lab=vin}
N -130 -60 -130 -20 {
lab=GND}
N -210 -60 -210 -20 {
lab=GND}
N -210 -150 -210 -120 {
lab=VDD}
N 60 -250 130 -250 {
lab=vin}
N 430 -230 500 -230 {
lab=vout}
N 430 -210 430 -160 {
lab=GND}
N 430 -410 430 -390 {
lab=VDD}
N 500 -230 500 -160 {
lab=vout}
N 500 -100 500 -70 {
lab=GND}
N 430 -330 430 -250 {lab=#net1}
C {devices/vsource.sym} -210 -90 0 0 {name=Vdd value=5.0 savecurrent=false}
C {devices/vsource.sym} -130 -90 0 0 {name=vin value="pwl 0 0 10n 0 20n 5.0 60n 5.0 70n 0" savecurrent=false}
C {devices/lab_pin.sym} -130 -150 1 0 {name=p3 sig_type=std_logic lab=vin}
C {devices/code_shown.sym} 710 -360 0 0 {name=spice only_toplevel=false value=".option savecurrent
.control
save all

* Tran analysis
tran 0.1n 100n
plot vout vin
plot i(vd)
wrdata ~/inverter_tb_tran.txt v(vout)
write inverter_tb_trans.raw
.endc"}
C {devices/code_shown.sym} 710 -110 0 0 {name=measure only_toplevel=false value="
.measure tran td_r trig v(vin) val=2.5 fall=1 targ v(vout) val=2.5 rise=1
.measure tran td_f trig v(vin) val=2.5 rise=1 targ v(vout) val=2.5 fall=1
.measure tran trise trig v(vout) val=0.83 rise=1 targ v(vout) val=4.17 rise=1
.measure tran tfall trig v(vout) val=4.17 fall=1 targ v(vout) val=0.83 fall=1
"}
C {devices/capa.sym} 500 -130 0 0 {name=Cload
m=1
value=200p
footprint=1206
device="ceramic capacitor"}
C {devices/code.sym} -230 -340 0 0 {name=TR-1um_MODELS
only_toplevel=true
format="tcleval( @value )"
value=".include $::LIB/ip62_models"
spice_ignore=false}
C {devices/vdd.sym} -210 -150 0 0 {name=l1 lab=VDD}
C {devices/gnd.sym} -210 -20 0 0 {name=l3 lab=GND
}
C {devices/gnd.sym} -130 -20 0 0 {name=l4 lab=GND
}
C {devices/lab_pin.sym} 60 -250 0 0 {name=p1 sig_type=std_logic lab=vin}
C {devices/lab_pin.sym} 500 -230 0 1 {name=p2 sig_type=std_logic lab=vout}
C {devices/ammeter.sym} 430 -360 0 0 {name=Vd savecurrent=true spice_ignore=0}
C {devices/vdd.sym} 430 -410 0 0 {name=l2 lab=VDD}
C {devices/gnd.sym} 430 -160 0 0 {name=l5 lab=GND
}
C {devices/gnd.sym} 500 -70 0 0 {name=l6 lab=GND
}
C {inverter_big.sym} 280 -230 0 0 {name=x1}
