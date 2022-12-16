v {xschem version=3.0.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 320 -430 320 -400 { lab=VDD}
N 320 -70 320 -40 { lab=GND}
N 150 -320 150 -190 { lab=A}
N 240 -100 280 -100 { lab=A}
N 320 -370 350 -370 { lab=VDD}
N 320 -100 350 -100 { lab=GND}
N 320 -190 350 -190 { lab=GND}
N 320 -160 320 -130 { lab=#net1}
N 320 -290 350 -290 { lab=VDD}
N 320 -340 320 -320 { lab=#net2}
N 320 -260 320 -220 { lab=#net3}
N 150 -370 280 -370 { lab=A}
N 150 -370 150 -320 { lab=A}
N 150 -100 240 -100 { lab=A}
N 150 -190 150 -100 { lab=A}
N 260 -290 280 -290 { lab=EN_BAR}
N 260 -190 280 -190 { lab=EN}
N 540 -190 570 -190 { lab=GND}
N 540 -290 570 -290 { lab=VDD}
N 540 -260 540 -220 { lab=Y}
N 450 -290 450 -190 { lab=#net3}
N 450 -290 490 -290 { lab=#net3}
N 490 -290 500 -290 { lab=#net3}
N 450 -190 500 -190 { lab=#net3}
N 540 -160 540 -130 { lab=GND}
N 540 -350 540 -320 { lab=VDD}
N 540 -240 650 -240 { lab=Y}
N 130 -240 150 -240 { lab=A}
N 320 -240 450 -240 { lab=#net3}
C {vdd.sym} 320 -430 0 0 {name=l1 lab=VDD}
C {gnd.sym} 320 -40 0 0 {name=l3 lab=GND}
C {ipin.sym} 130 -240 0 0 {name=p3 lab=A
}
C {opin.sym} 650 -240 0 0 {name=p5 lab=Y}
C {pmos4.sym} 300 -370 0 0 {name=X0 model=pmos_3p3 w=1.7u l=0.3u m=1}
C {nmos4.sym} 300 -100 0 0 {name=X1 model=nmos_3p3 w=0.85u l=0.3u m=1}
C {lab_wire.sym} 350 -370 2 0 {name=l2 sig_type=std_logic lab=VDD
}
C {lab_wire.sym} 350 -100 2 0 {name=l4 sig_type=std_logic lab=GND
}
C {nmos4.sym} 300 -190 0 0 {name=X2 model=nmos_3p3 w=0.85u l=0.3u m=1}
C {lab_wire.sym} 350 -190 2 0 {name=l5 sig_type=std_logic lab=GND
}
C {pmos4.sym} 300 -290 0 0 {name=X3 model=pmos_3p3 w=1.7u l=0.3u m=1}
C {lab_wire.sym} 350 -290 2 0 {name=l6 sig_type=std_logic lab=VDD
}
C {ipin.sym} 260 -290 0 0 {name=p1 lab=EN_BAR
}
C {ipin.sym} 260 -190 0 0 {name=p2 lab=EN
}
C {nmos4.sym} 520 -190 0 0 {name=X4 model=nmos_3p3 w=0.85u l=0.3u m=2}
C {lab_wire.sym} 570 -190 2 0 {name=l7 sig_type=std_logic lab=GND
}
C {pmos4.sym} 520 -290 0 0 {name=X5 model=pmos_3p3 w=1.7u l=0.3u m=2}
C {lab_wire.sym} 570 -290 2 0 {name=l8 sig_type=std_logic lab=VDD
}
C {gnd.sym} 540 -130 0 0 {name=l9 lab=GND}
C {vdd.sym} 540 -350 0 0 {name=l10 lab=VDD}
