v {xschem version=3.0.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 140 -620 140 -590 { lab=VDD}
N 280 -620 280 -590 { lab=VDD}
N 140 -530 140 -500 { lab=#net1}
N 140 -500 280 -500 { lab=#net1}
N 280 -530 280 -500 { lab=#net1}
N 210 -330 210 -290 { lab=#net2}
N 210 -230 210 -200 { lab=#net3}
N 80 -560 100 -560 { lab=A0}
N 230 -560 240 -560 { lab=A1}
N 210 -410 270 -410 { lab=Y}
N 140 -560 160 -560 { lab=VDD}
N 280 -560 300 -560 { lab=VDD}
N 210 -360 220 -360 { lab=GND}
N 210 -260 230 -260 { lab=GND}
N 150 -360 170 -360 { lab=A0}
N 150 -260 170 -260 { lab=A1}
N 320 -270 320 -210 { lab=#net4}
N 160 -460 170 -460 { lab=B}
N 210 -460 230 -460 { lab=VDD}
N 210 -500 210 -490 { lab=#net1}
N 210 -430 210 -390 { lab=Y}
N 260 -300 280 -300 { lab=B}
N 320 -300 340 -300 { lab=GND}
N 320 -390 320 -330 { lab=Y}
N 210 -390 320 -390 { lab=Y}
N 450 -620 450 -590 { lab=VDD}
N 400 -560 410 -560 { lab=A2}
N 450 -560 470 -560 { lab=VDD}
N 280 -500 450 -500 { lab=#net1}
N 450 -530 450 -500 { lab=#net1}
N 210 -140 210 -110 { lab=#net5}
N 210 -170 230 -170 { lab=GND}
N 150 -170 170 -170 { lab=A1}
N 320 -210 320 -130 {}
N 210 -130 320 -130 {}
C {vdd.sym} 140 -620 0 0 {name=l1 lab=VDD}
C {vdd.sym} 280 -620 0 0 {name=l2 lab=VDD}
C {gnd.sym} 210 -110 0 0 {name=l3 lab=GND}
C {ipin.sym} 80 -560 0 0 {name=p3 lab=A0
}
C {ipin.sym} 230 -560 0 0 {name=p4 lab=A1
}
C {opin.sym} 270 -410 0 0 {name=p5 lab=Y}
C {pmos4.sym} 120 -560 0 0 {name=X1 model=pmos_3p3 w=1.7u l=0.3u m=1}
C {pmos4.sym} 260 -560 0 0 {name=X0 model=pmos_3p3 w=1.7u l=0.3u m=1}
C {nmos4.sym} 190 -360 0 0 {name=X2 model=nmos_3p3 w=0.85u l=0.3u m=1}
C {nmos4.sym} 190 -260 0 0 {name=X3 model=nmos_3p3 w=0.85u l=0.3u m=1}
C {lab_wire.sym} 160 -560 2 0 {name=l4 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 300 -560 2 0 {name=l5 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 220 -360 2 0 {name=l6 sig_type=std_logic lab=GND}
C {lab_wire.sym} 230 -260 2 0 {name=l7 sig_type=std_logic lab=GND}
C {lab_wire.sym} 150 -360 0 0 {name=l8 sig_type=std_logic lab=A0}
C {lab_wire.sym} 150 -260 0 0 {name=l9 sig_type=std_logic lab=A1}
C {nmos4.sym} 300 -300 0 0 {name=X4 model=nmos_3p3 w=0.85u l=0.3u m=1}
C {ipin.sym} 160 -460 0 0 {name=p1 lab=B
}
C {pmos4.sym} 190 -460 0 0 {name=X5 model=pmos_3p3 w=1.7u l=0.3u m=1}
C {lab_wire.sym} 230 -460 2 0 {name=l10 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 260 -300 0 0 {name=l11 sig_type=std_logic lab=B
}
C {lab_wire.sym} 340 -300 2 0 {name=l12 sig_type=std_logic lab=GND}
C {vdd.sym} 450 -620 0 0 {name=l13 lab=VDD}
C {ipin.sym} 400 -560 0 0 {name=p2 lab=A2
}
C {pmos4.sym} 430 -560 0 0 {name=X6 model=pmos_3p3 w=1.7u l=0.3u m=1}
C {lab_wire.sym} 470 -560 2 0 {name=l14 sig_type=std_logic lab=VDD}
C {nmos4.sym} 190 -170 0 0 {name=X7 model=nmos_3p3 w=0.85u l=0.3u m=1}
C {lab_wire.sym} 230 -170 2 0 {name=l15 sig_type=std_logic lab=GND}
C {lab_wire.sym} 150 -170 0 0 {name=l16 sig_type=std_logic lab=A2}
