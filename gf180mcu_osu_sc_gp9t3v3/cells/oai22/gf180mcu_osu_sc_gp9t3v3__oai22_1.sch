v {xschem version=3.0.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 120 -520 120 -490 { lab=VDD}
N 260 -520 260 -490 { lab=VDD}
N 120 -430 120 -400 { lab=#net1}
N 120 -340 120 -310 { lab=Y}
N 70 -370 80 -370 { lab=A1}
N 120 -460 140 -460 { lab=VDD}
N 120 -370 140 -370 { lab=VDD}
N 120 -120 130 -120 { lab=GND}
N 270 -120 290 -120 { lab=GND}
N 60 -120 80 -120 { lab=A0}
N 210 -120 230 -120 { lab=A1}
N 210 -460 220 -460 { lab=B0}
N 260 -460 280 -460 { lab=VDD}
N 60 -230 80 -230 { lab=B0}
N 120 -230 140 -230 { lab=GND}
N 190 -60 190 -40 { lab=GND}
N 120 -60 190 -60 { lab=GND}
N 120 -90 120 -60 { lab=GND}
N 190 -60 270 -60 { lab=GND}
N 270 -90 270 -60 { lab=GND}
N 120 -180 120 -150 { lab=#net2}
N 120 -180 270 -180 { lab=#net2}
N 270 -180 270 -150 { lab=#net2}
N 120 -310 260 -310 { lab=Y}
N 190 -290 320 -290 { lab=Y}
N 70 -460 80 -460 { lab=A0}
N 210 -230 230 -230 { lab=B1}
N 270 -230 290 -230 { lab=GND}
N 120 -200 120 -180 { lab=#net2}
N 270 -200 270 -180 { lab=#net2}
N 120 -270 120 -260 { lab=Y}
N 120 -270 270 -270 { lab=Y}
N 270 -270 270 -260 { lab=Y}
N 190 -290 190 -270 { lab=Y}
N 190 -310 190 -290 { lab=Y}
N 210 -370 220 -370 { lab=B}
N 260 -370 280 -370 { lab=VDD}
N 260 -340 260 -310 { lab=Y}
N 260 -430 260 -400 { lab=#net3}
C {vdd.sym} 120 -520 0 0 {name=l1 lab=VDD}
C {vdd.sym} 260 -520 0 0 {name=l2 lab=VDD}
C {gnd.sym} 190 -40 0 0 {name=l3 lab=GND}
C {ipin.sym} 70 -460 0 0 {name=p3 lab=A0
}
C {ipin.sym} 70 -370 0 0 {name=p4 lab=A1
}
C {opin.sym} 320 -290 0 0 {name=p5 lab=Y}
C {pmos4.sym} 100 -460 0 0 {name=X1 model=pfet_03p3 w=1.7u l=0.3u m=1}
C {pmos4.sym} 100 -370 0 0 {name=X0 model=pfet_03p3 w=1.7u l=0.3u m=1}
C {nmos4.sym} 100 -120 0 0 {name=X2 model=nfet_03p3 w=0.85u l=0.3u m=1}
C {nmos4.sym} 250 -120 0 0 {name=X3 model=nfet_03p3 w=0.85u l=0.3u m=1}
C {lab_wire.sym} 140 -460 2 0 {name=l4 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 140 -370 2 0 {name=l5 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 130 -120 2 0 {name=l6 sig_type=std_logic lab=GND}
C {lab_wire.sym} 290 -120 2 0 {name=l7 sig_type=std_logic lab=GND}
C {lab_wire.sym} 60 -120 0 0 {name=l8 sig_type=std_logic lab=A0}
C {lab_wire.sym} 210 -120 0 0 {name=l9 sig_type=std_logic lab=A1}
C {nmos4.sym} 100 -230 0 0 {name=X4 model=nfet_03p3 w=0.85u l=0.3u m=1}
C {ipin.sym} 210 -460 0 0 {name=p1 lab=B0
}
C {pmos4.sym} 240 -460 0 0 {name=X5 model=pfet_03p3 w=1.7u l=0.3u m=1}
C {lab_wire.sym} 280 -460 2 0 {name=l10 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 60 -230 0 0 {name=l11 sig_type=std_logic lab=B0
}
C {lab_wire.sym} 140 -230 2 0 {name=l12 sig_type=std_logic lab=GND}
C {nmos4.sym} 250 -230 0 0 {name=X6 model=nfet_03p3 w=0.85u l=0.3u m=1}
C {lab_wire.sym} 210 -230 0 0 {name=l13 sig_type=std_logic lab=B1
}
C {lab_wire.sym} 290 -230 2 0 {name=l14 sig_type=std_logic lab=GND}
C {ipin.sym} 210 -370 0 0 {name=p2 lab=B1
}
C {pmos4.sym} 240 -370 0 0 {name=X7 model=pfet_03p3 w=1.7u l=0.3u m=1}
C {lab_wire.sym} 280 -370 2 0 {name=l15 sig_type=std_logic lab=VDD}
