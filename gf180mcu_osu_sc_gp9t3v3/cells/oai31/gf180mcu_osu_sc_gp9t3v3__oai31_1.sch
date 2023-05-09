v {xschem version=3.0.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 120 -640 120 -610 { lab=VDD}
N 260 -520 260 -490 { lab=VDD}
N 120 -550 120 -520 { lab=#net1}
N 120 -340 120 -310 { lab=Y}
N 70 -490 80 -490 { lab=A1}
N 120 -580 140 -580 { lab=VDD}
N 120 -490 140 -490 { lab=VDD}
N 120 -120 130 -120 { lab=GND}
N 270 -120 290 -120 { lab=GND}
N 60 -120 80 -120 { lab=A0}
N 210 -120 230 -120 { lab=A1}
N 210 -480 220 -480 { lab=B}
N 260 -480 280 -480 { lab=VDD}
N 130 -230 150 -230 { lab=B}
N 190 -230 210 -230 { lab=GND}
N 190 -60 190 -40 { lab=GND}
N 120 -60 190 -60 { lab=GND}
N 120 -90 120 -60 { lab=GND}
N 190 -60 270 -60 { lab=GND}
N 270 -90 270 -60 { lab=GND}
N 120 -180 120 -150 { lab=#net2}
N 120 -180 270 -180 { lab=#net2}
N 270 -180 270 -150 { lab=#net2}
N 190 -200 190 -180 { lab=#net2}
N 120 -310 260 -310 { lab=Y}
N 260 -370 260 -310 { lab=Y}
N 190 -310 190 -260 { lab=Y}
N 190 -290 320 -290 { lab=Y}
N 70 -580 80 -580 { lab=A0}
N 70 -400 80 -400 { lab=A2}
N 120 -400 140 -400 { lab=VDD}
N 120 -460 120 -430 { lab=#net3}
N 120 -370 120 -340 { lab=Y}
N 260 -640 260 -520 { lab=VDD}
N 260 -450 260 -360 { lab=Y}
N 440 -120 460 -120 { lab=GND}
N 380 -120 400 -120 { lab=A1}
N 270 -180 430 -180 { lab=#net2}
N 430 -180 440 -180 { lab=#net2}
N 440 -180 440 -150 { lab=#net2}
N 270 -60 440 -60 { lab=GND}
N 440 -90 440 -60 { lab=GND}
C {vdd.sym} 120 -640 0 0 {name=l1 lab=VDD}
C {vdd.sym} 260 -640 0 0 {name=l2 lab=VDD}
C {gnd.sym} 190 -40 0 0 {name=l3 lab=GND}
C {ipin.sym} 70 -580 0 0 {name=p3 lab=A0
}
C {ipin.sym} 70 -490 0 0 {name=p4 lab=A1
}
C {opin.sym} 320 -290 0 0 {name=p5 lab=Y}
C {pmos4.sym} 100 -580 0 0 {name=X1 model=pfet_03p3 w=1.7u l=0.3u m=1}
C {pmos4.sym} 100 -490 0 0 {name=X0 model=pfet_03p3 w=1.7u l=0.3u m=1}
C {nmos4.sym} 100 -120 0 0 {name=X2 model=nfet_03p3 w=0.85u l=0.3u m=1}
C {nmos4.sym} 250 -120 0 0 {name=X3 model=nfet_03p3 w=0.85u l=0.3u m=1}
C {lab_wire.sym} 140 -580 2 0 {name=l4 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 140 -490 2 0 {name=l5 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 130 -120 2 0 {name=l6 sig_type=std_logic lab=GND}
C {lab_wire.sym} 290 -120 2 0 {name=l7 sig_type=std_logic lab=GND}
C {lab_wire.sym} 60 -120 0 0 {name=l8 sig_type=std_logic lab=A0}
C {lab_wire.sym} 210 -120 0 0 {name=l9 sig_type=std_logic lab=A1}
C {nmos4.sym} 170 -230 0 0 {name=X4 model=nfet_03p3 w=0.85u l=0.3u m=1}
C {ipin.sym} 210 -480 0 0 {name=p1 lab=B
}
C {pmos4.sym} 240 -480 0 0 {name=X5 model=pfet_03p3 w=1.7u l=0.3u m=1}
C {lab_wire.sym} 280 -480 2 0 {name=l10 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 130 -230 0 0 {name=l11 sig_type=std_logic lab=B
}
C {lab_wire.sym} 210 -230 2 0 {name=l12 sig_type=std_logic lab=GND}
C {ipin.sym} 70 -400 0 0 {name=p2 lab=A2
}
C {pmos4.sym} 100 -400 0 0 {name=X6 model=pfet_03p3 w=1.7u l=0.3u m=1}
C {lab_wire.sym} 140 -400 2 0 {name=l13 sig_type=std_logic lab=VDD}
C {nmos4.sym} 420 -120 0 0 {name=X7 model=nfet_03p3 w=0.85u l=0.3u m=1}
C {lab_wire.sym} 460 -120 2 0 {name=l14 sig_type=std_logic lab=GND}
C {lab_wire.sym} 380 -120 0 0 {name=l15 sig_type=std_logic lab=A2}
