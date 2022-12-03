v {xschem version=3.0.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 155 -290 155 -260 { lab=VDDH}
N 155 -200 155 -170 { lab=out1}
N 155 -170 155 -130 { lab=out1}
N 155 -70 155 -40 { lab=GND}
N 95 -230 115 -230 { lab=A}
N 75 -230 75 -100 { lab=A}
N 55 -170 75 -170 { lab=A}
N 75 -230 95 -230 { lab=A}
N 75 -100 115 -100 { lab=A}
N 155 -230 185 -230 { lab=VDD}
N 155 -100 185 -100 { lab=GND}
N 415 -290 415 -260 { lab=VDD}
N 415 -200 415 -170 { lab=Y}
N 415 -170 415 -130 { lab=Y}
N 415 -70 415 -40 { lab=GND}
N 355 -230 375 -230 { lab=out1}
N 335 -230 335 -100 { lab=out1}
N 315 -170 335 -170 { lab=out1}
N 335 -230 355 -230 { lab=out1}
N 335 -100 375 -100 { lab=out1}
N 415 -230 445 -230 { lab=VDDH}
N 415 -100 445 -100 { lab=GND}
N 155 -170 175 -170 { lab=out1}
N 415 -170 445 -170 { lab=Y}
C {vdd.sym} 155 -290 0 0 {name=l1 lab=VDDH}
C {gnd.sym} 155 -40 0 0 {name=l3 lab=GND}
C {pmos4.sym} 135 -230 0 0 {name=X0 model=pmos_3p3 w=1.7u l=0.3u m=1}
C {nmos4.sym} 135 -100 0 0 {name=X1 model=nmos_3p3 w=0.85u l=0.3u m=1}
C {lab_wire.sym} 185 -230 2 0 {name=l2 sig_type=std_logic lab=VDD
}
C {lab_wire.sym} 185 -100 2 0 {name=l4 sig_type=std_logic lab=GND
}
C {vdd.sym} 415 -290 0 0 {name=l11 lab=VDD}
C {gnd.sym} 415 -40 0 0 {name=l12 lab=GND}
C {pmos4.sym} 395 -230 0 0 {name=X6 model=pmos_3p3 w=1.7u l=0.3u m=1}
C {nmos4.sym} 395 -100 0 0 {name=X7 model=nmos_3p3 w=0.85u l=0.3u m=1}
C {lab_wire.sym} 445 -230 2 0 {name=l13 sig_type=std_logic lab=VDDH
}
C {lab_wire.sym} 445 -100 2 0 {name=l14 sig_type=std_logic lab=GND
}
C {lab_wire.sym} 175 -170 2 0 {name=l16 sig_type=std_logic lab=out1
}
C {lab_wire.sym} 315 -170 2 1 {name=l20 sig_type=std_logic lab=out1
}
C {lab_wire.sym} 55 -170 2 1 {name=l27 sig_type=std_logic lab=A
}
C {lab_wire.sym} 445 -170 2 0 {name=l28 sig_type=std_logic lab=Y
}
