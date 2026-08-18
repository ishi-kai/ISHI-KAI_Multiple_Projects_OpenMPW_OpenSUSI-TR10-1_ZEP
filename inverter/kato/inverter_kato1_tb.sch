v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 80 -170 80 -100 {lab=#net1}
N 80 -40 80 40 {lab=vout}
N 80 100 80 170 {lab=GND}
N 40 -70 40 70 {lab=vin}
N 80 -70 110 -70 {lab=#net1}
N 110 -130 110 -70 {lab=#net1}
N 80 -130 110 -130 {lab=#net1}
N 80 70 110 70 {lab=GND}
N 110 70 110 130 {lab=GND}
N 80 130 110 130 {lab=GND}
N -10 0 40 0 {lab=vin}
N 80 0 150 0 {lab=vout}
N 180 0 180 70 {lab=vout}
N 150 0 180 0 {lab=vout}
N 180 130 180 170 {lab=GND}
N 180 0 190 0 {lab=vout}
N -180 40 -180 70 {
lab=vin}
N -180 130 -180 170 {
lab=GND}
N -260 130 -260 170 {
lab=GND}
N -260 40 -260 70 {
lab=VDD}
C {TR-1umLIB/MP.sym} 40 -70 0 0 {name=M1
model=PMOS
w=3.4u
l=1u
m=1
spiceprefix=X
as=0
ad=0
ps=0
pd=0
nrd=0
nrs=0}
C {TR-1umLIB/MN.sym} 40 70 0 0 {name=M2
model=NMOS
w=3.4u
l=1u
m=1
spiceprefix=X
as=0
ad=0
ps=0
pd=0
nrd=0
nrs=0}
C {devices/gnd.sym} 80 170 0 0 {name=l2 lab=GND}
C {devices/code.sym} -260 -200 0 0 {name=TR-1um_MODELS
only_toplevel=true
format="tcleval( @value )"
value=".include $::LIB/ip62_models"
spice_ignore=false}
C {devices/code_shown.sym} 270 -200 0 0 {name=spice only_toplevel=false value=".option savecurrent
.control
save all

* DC analysis (I/O curve)
dc vin 0 5.0 0.01
plot vout vin
plot i(vd)
wrdata ~/inverter-kato1_tb.txt v(vout)
write inverter-kato1_tb.raw
.endc"}
C {devices/code_shown.sym} 270 70 0 0 {name=measure only_toplevel=false value=".measure dc Vin when v(vout)=2.5"}
C {devices/lab_pin.sym} 0 0 0 0 {name=p1 sig_type=std_logic lab=vin}
C {devices/capa.sym} 180 100 0 0 {name=Cload
m=1
value=10f
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} 180 170 0 0 {name=l3 lab=GND}
C {devices/lab_pin.sym} 180 0 1 0 {name=p2 sig_type=std_logic lab=vout}
C {devices/vsource.sym} -260 100 0 0 {name=Vdd value=5.0 savecurrent=false}
C {devices/vsource.sym} -180 100 0 0 {name=vin value=5.0 savecurrent=false}
C {devices/lab_pin.sym} -180 40 1 0 {name=p3 sig_type=std_logic lab=vin}
C {devices/vdd.sym} -260 40 0 0 {name=l4 lab=VDD}
C {devices/gnd.sym} -260 170 0 0 {name=l5 lab=GND
}
C {devices/gnd.sym} -180 170 0 0 {name=l6 lab=GND
}
C {devices/ammeter.sym} 80 -200 0 0 {name=Vd savecurrent=true spice_ignore=0}
C {devices/vdd.sym} 80 -230 0 0 {name=l1 lab=VDD}
