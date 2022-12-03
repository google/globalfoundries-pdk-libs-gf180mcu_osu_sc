v {xschem version=3.0.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 465 -350 465 -320 { lab=VDD}
N 465 -260 465 -230 { lab=out1}
N 465 -230 465 -190 { lab=out1}
N 465 -130 465 -100 { lab=GND}
N 405 -290 425 -290 { lab=A}
N 385 -290 385 -160 { lab=A}
N 365 -230 385 -230 { lab=A}
N 385 -290 405 -290 { lab=A}
N 385 -160 425 -160 { lab=A}
N 465 -290 495 -290 { lab=VDD}
N 465 -160 495 -160 { lab=GND}
N 100 -290 100 -190 { lab=out2}
N 250 -290 250 -190 { lab=#net1}
N 100 -370 100 -350 { lab=VDDH}
N 250 -370 250 -350 { lab=VDDH}
N 100 -370 250 -370 { lab=VDDH}
N 100 -130 100 -110 { lab=GND}
N 100 -110 250 -110 { lab=GND}
N 250 -130 250 -110 { lab=GND}
N 100 -250 210 -320 { lab=out2}
N 60 -320 250 -260 { lab=#net1}
N 170 -110 170 -80 { lab=GND}
N 100 -320 130 -320 { lab=VDDH}
N 250 -320 280 -320 { lab=VDDH}
N 100 -160 130 -160 { lab=GND}
N 250 -160 280 -160 { lab=GND}
N 725 -360 725 -330 { lab=VDDH}
N 725 -270 725 -240 { lab=Y}
N 725 -240 725 -200 { lab=Y}
N 725 -140 725 -110 { lab=GND}
N 665 -300 685 -300 { lab=out2}
N 645 -300 645 -170 { lab=out2}
N 625 -240 645 -240 { lab=out2}
N 645 -300 665 -300 { lab=out2}
N 645 -170 685 -170 { lab=out2}
N 725 -300 755 -300 { lab=VDDH}
N 725 -170 755 -170 { lab=GND}
N 465 -230 485 -230 { lab=out1}
N 725 -240 755 -240 { lab=Y}
C {vdd.sym} 465 -350 0 0 {name=l1 lab=VDD}
C {gnd.sym} 465 -100 0 0 {name=l3 lab=GND}
C {pmos4.sym} 445 -290 0 0 {name=X0 model=pmos_3p3 w=1.7u l=0.3u m=1}
C {nmos4.sym} 445 -160 0 0 {name=X1 model=nmos_3p3 w=0.85u l=0.3u m=1}
C {lab_wire.sym} 495 -290 2 0 {name=l2 sig_type=std_logic lab=VDD
}
C {lab_wire.sym} 495 -160 2 0 {name=l4 sig_type=std_logic lab=GND
}
C {pmos4.sym} 80 -320 0 0 {name=X2 model=pmos_3p3 w=0.85u l=0.3u m=1}
C {pmos4.sym} 230 -320 0 0 {name=X3 model=pmos_3p3 w=0.85u l=0.3u m=1}
C {nmos4.sym} 80 -160 0 0 {name=X4 model=nmos_3p3 w=0.85u l=0.3u m=1}
C {nmos4.sym} 230 -160 0 0 {name=X5 model=nmos_3p3 w=0.85u l=0.3u m=1}
C {vdd.sym} 170 -370 0 0 {name=l5 lab=VDDH}
C {gnd.sym} 170 -80 0 0 {name=l6 lab=GND}
C {lab_wire.sym} 130 -320 2 0 {name=l7 sig_type=std_logic lab=VDDH
}
C {lab_wire.sym} 280 -320 2 0 {name=l8 sig_type=std_logic lab=VDDH
}
C {lab_wire.sym} 130 -160 2 0 {name=l9 sig_type=std_logic lab=GND
}
C {lab_wire.sym} 280 -160 2 0 {name=l10 sig_type=std_logic lab=GND
}
C {vdd.sym} 725 -360 0 0 {name=l11 lab=VDDH}
C {gnd.sym} 725 -110 0 0 {name=l12 lab=GND}
C {pmos4.sym} 705 -300 0 0 {name=X6 model=pmos_3p3 w=0.85u l=0.3u m=1}
C {nmos4.sym} 705 -170 0 0 {name=X7 model=nmos_3p3 w=0.85u l=0.3u m=1}
C {lab_wire.sym} 755 -300 2 0 {name=l13 sig_type=std_logic lab=VDDH
}
C {lab_wire.sym} 755 -170 2 0 {name=l14 sig_type=std_logic lab=GND
}
C {lab_wire.sym} 485 -230 2 0 {name=l16 sig_type=std_logic lab=out1
}
C {lab_wire.sym} 210 -160 2 1 {name=l17 sig_type=std_logic lab=out1
}
C {lab_wire.sym} 60 -160 2 1 {name=l18 sig_type=std_logic lab=A
}
C {lab_wire.sym} 100 -235 2 1 {name=l19 sig_type=std_logic lab=out2
}
C {lab_wire.sym} 625 -240 2 1 {name=l20 sig_type=std_logic lab=out2
}
C {lab_wire.sym} 365 -230 2 1 {name=l27 sig_type=std_logic lab=A
}
C {lab_wire.sym} 755 -240 2 0 {name=l28 sig_type=std_logic lab=Y
}
