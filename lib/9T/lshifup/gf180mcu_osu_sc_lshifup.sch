v {xschem version=3.0.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 455 -320 455 -290 { lab=VDD}
N 455 -230 455 -200 { lab=out1}
N 455 -200 455 -160 { lab=out1}
N 455 -100 455 -70 { lab=GND}
N 395 -260 415 -260 { lab=A}
N 375 -260 375 -130 { lab=A}
N 355 -200 375 -200 { lab=A}
N 375 -260 395 -260 { lab=A}
N 375 -130 415 -130 { lab=A}
N 455 -260 485 -260 { lab=VDD}
N 455 -130 485 -130 { lab=GND}
N 90 -260 90 -160 { lab=out2}
N 240 -260 240 -160 { lab=#net1}
N 90 -340 90 -320 { lab=VDDH}
N 240 -340 240 -320 { lab=VDDH}
N 90 -340 240 -340 { lab=VDDH}
N 90 -100 90 -80 { lab=GND}
N 90 -80 240 -80 { lab=GND}
N 240 -100 240 -80 { lab=GND}
N 90 -220 200 -290 { lab=out2}
N 50 -290 240 -230 { lab=#net1}
N 160 -80 160 -50 { lab=GND}
N 90 -290 120 -290 { lab=VDDH}
N 240 -290 270 -290 { lab=VDDH}
N 90 -130 120 -130 { lab=GND}
N 240 -130 270 -130 { lab=GND}
N 715 -330 715 -300 { lab=VDDH}
N 715 -240 715 -210 { lab=Y}
N 715 -210 715 -170 { lab=Y}
N 715 -110 715 -80 { lab=GND}
N 655 -270 675 -270 { lab=out2}
N 635 -270 635 -140 { lab=out2}
N 615 -210 635 -210 { lab=out2}
N 635 -270 655 -270 { lab=out2}
N 635 -140 675 -140 { lab=out2}
N 715 -270 745 -270 { lab=VDDH}
N 715 -140 745 -140 { lab=GND}
N 455 -200 475 -200 { lab=out1}
N 715 -210 745 -210 { lab=Y}
C {vdd.sym} 455 -320 0 0 {name=l1 lab=VDD}
C {gnd.sym} 455 -70 0 0 {name=l3 lab=GND}
C {pmos4.sym} 435 -260 0 0 {name=X0 model=pmos_3p3 w=1.7u l=0.3u m=1}
C {nmos4.sym} 435 -130 0 0 {name=X1 model=nmos_3p3 w=0.85u l=0.3u m=1}
C {lab_wire.sym} 485 -260 2 0 {name=l2 sig_type=std_logic lab=VDD
}
C {lab_wire.sym} 485 -130 2 0 {name=l4 sig_type=std_logic lab=GND
}
C {pmos4.sym} 70 -290 0 0 {name=X2 model=pmos_3p3 w=0.85u l=0.3u m=1}
C {pmos4.sym} 220 -290 0 0 {name=X3 model=pmos_3p3 w=0.85u l=0.3u m=1}
C {nmos4.sym} 70 -130 0 0 {name=X4 model=nmos_3p3 w=0.85u l=0.3u m=1}
C {nmos4.sym} 220 -130 0 0 {name=X5 model=nmos_3p3 w=0.85u l=0.3u m=1}
C {vdd.sym} 160 -340 0 0 {name=l5 lab=VDDH}
C {gnd.sym} 160 -50 0 0 {name=l6 lab=GND}
C {lab_wire.sym} 120 -290 2 0 {name=l7 sig_type=std_logic lab=VDDH
}
C {lab_wire.sym} 270 -290 2 0 {name=l8 sig_type=std_logic lab=VDDH
}
C {lab_wire.sym} 120 -130 2 0 {name=l9 sig_type=std_logic lab=GND
}
C {lab_wire.sym} 270 -130 2 0 {name=l10 sig_type=std_logic lab=GND
}
C {vdd.sym} 715 -330 0 0 {name=l11 lab=VDDH}
C {gnd.sym} 715 -80 0 0 {name=l12 lab=GND}
C {pmos4.sym} 695 -270 0 0 {name=X6 model=pmos_3p3 w=0.85u l=0.3u m=1}
C {nmos4.sym} 695 -140 0 0 {name=X7 model=nmos_3p3 w=0.85u l=0.3u m=1}
C {lab_wire.sym} 745 -270 2 0 {name=l13 sig_type=std_logic lab=VDDH
}
C {lab_wire.sym} 745 -140 2 0 {name=l14 sig_type=std_logic lab=GND
}
C {lab_wire.sym} 475 -200 2 0 {name=l16 sig_type=std_logic lab=out1
}
C {lab_wire.sym} 200 -130 2 1 {name=l17 sig_type=std_logic lab=out1
}
C {lab_wire.sym} 50 -130 2 1 {name=l18 sig_type=std_logic lab=A
}
C {lab_wire.sym} 90 -205 2 1 {name=l19 sig_type=std_logic lab=out2
}
C {lab_wire.sym} 615 -210 2 1 {name=l20 sig_type=std_logic lab=out2
}
C {lab_wire.sym} 355 -200 2 1 {name=l27 sig_type=std_logic lab=A
}
C {lab_wire.sym} 745 -210 2 0 {name=l28 sig_type=std_logic lab=Y
}
