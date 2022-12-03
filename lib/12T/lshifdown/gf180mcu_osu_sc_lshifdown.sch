v {xschem version=3.0.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 135 -340 135 -310 { lab=VDDH}
N 135 -250 135 -220 { lab=out1}
N 135 -220 135 -180 { lab=out1}
N 135 -120 135 -90 { lab=GND}
N 75 -280 95 -280 { lab=A}
N 55 -280 55 -150 { lab=A}
N 35 -220 55 -220 { lab=A}
N 55 -280 75 -280 { lab=A}
N 55 -150 95 -150 { lab=A}
N 135 -280 165 -280 { lab=VDD}
N 135 -150 165 -150 { lab=GND}
N 395 -340 395 -310 { lab=VDD}
N 395 -250 395 -220 { lab=Y}
N 395 -220 395 -180 { lab=Y}
N 395 -120 395 -90 { lab=GND}
N 335 -280 355 -280 { lab=out1}
N 315 -280 315 -150 { lab=out1}
N 295 -220 315 -220 { lab=out1}
N 315 -280 335 -280 { lab=out1}
N 315 -150 355 -150 { lab=out1}
N 395 -280 425 -280 { lab=VDDH}
N 395 -150 425 -150 { lab=GND}
N 135 -220 155 -220 { lab=out1}
N 395 -220 425 -220 { lab=Y}
C {vdd.sym} 135 -340 0 0 {name=l1 lab=VDDH}
C {gnd.sym} 135 -90 0 0 {name=l3 lab=GND}
C {pmos4.sym} 115 -280 0 0 {name=X0 model=pmos_3p3 w=1.7u l=0.3u m=1}
C {nmos4.sym} 115 -150 0 0 {name=X1 model=nmos_3p3 w=0.85u l=0.3u m=1}
C {lab_wire.sym} 165 -280 2 0 {name=l2 sig_type=std_logic lab=VDD
}
C {lab_wire.sym} 165 -150 2 0 {name=l4 sig_type=std_logic lab=GND
}
C {vdd.sym} 395 -340 0 0 {name=l11 lab=VDD}
C {gnd.sym} 395 -90 0 0 {name=l12 lab=GND}
C {pmos4.sym} 375 -280 0 0 {name=X6 model=pmos_3p3 w=1.7u l=0.3u m=1}
C {nmos4.sym} 375 -150 0 0 {name=X7 model=nmos_3p3 w=0.85u l=0.3u m=1}
C {lab_wire.sym} 425 -280 2 0 {name=l13 sig_type=std_logic lab=VDDH
}
C {lab_wire.sym} 425 -150 2 0 {name=l14 sig_type=std_logic lab=GND
}
C {lab_wire.sym} 155 -220 2 0 {name=l16 sig_type=std_logic lab=out1
}
C {lab_wire.sym} 295 -220 2 1 {name=l20 sig_type=std_logic lab=out1
}
C {lab_wire.sym} 35 -220 2 1 {name=l27 sig_type=std_logic lab=A
}
C {lab_wire.sym} 425 -220 2 0 {name=l28 sig_type=std_logic lab=Y
}
