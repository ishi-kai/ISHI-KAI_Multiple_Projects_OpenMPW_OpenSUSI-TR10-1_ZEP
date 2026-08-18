v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 60 -170 60 -100 {lab=VDD}
N 60 -40 60 40 {lab=xxx}
N 60 100 60 170 {lab=GND}
N 20 -70 20 70 {lab=A}
N 60 -70 90 -70 {lab=VDD}
N 90 -130 90 -70 {lab=VDD}
N 60 -130 90 -130 {lab=VDD}
N 60 70 90 70 {lab=GND}
N 90 70 90 130 {lab=GND}
N 60 130 90 130 {lab=GND}
N -30 0 20 0 {lab=A}
N 60 -0 130 0 {lab=xxx}
C {TR-1umLIB/MP.sym} 20 -70 0 0 {name=M1
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
C {TR-1umLIB/MN.sym} 20 70 0 0 {name=M2
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
C {devices/vdd.sym} 60 -170 0 0 {name=l1 lab=VDD}
C {devices/gnd.sym} 60 170 0 0 {name=l2 lab=GND}
C {devices/ipin.sym} -20 0 0 0 {name=p1 lab=A}
C {devices/opin.sym} 130 0 0 0 {name=p2 lab=Q}
