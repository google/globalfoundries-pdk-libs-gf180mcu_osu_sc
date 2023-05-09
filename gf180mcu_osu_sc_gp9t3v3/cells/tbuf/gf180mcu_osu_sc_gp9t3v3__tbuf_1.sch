v {xschem version=3.0.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 530 -420 530 -390 { lab=VDD}
N 530 -60 530 -30 { lab=GND}
N 600 -230 660 -230 { lab=Y}
N 530 -230 600 -230 { lab=Y}
N 360 -310 360 -180 { lab=A}
N 450 -90 490 -90 { lab=A}
N 530 -360 560 -360 { lab=VDD}
N 530 -90 560 -90 { lab=GND}
N 530 -180 560 -180 { lab=GND}
N 530 -150 530 -120 { lab=#net1}
N 530 -280 560 -280 { lab=VDD}
N 530 -330 530 -310 { lab=#net2}
N 530 -250 530 -210 { lab=Y}
N 360 -360 490 -360 { lab=A}
N 360 -360 360 -310 { lab=A}
N 360 -90 450 -90 { lab=A}
N 360 -180 360 -90 { lab=A}
N 470 -280 490 -280 { lab=EN_BAR}
N 470 -180 490 -180 { lab=A}
N 250 -170 280 -170 { lab=GND}
N 250 -270 280 -270 { lab=VDD}
N 250 -240 250 -200 { lab=Y}
N 160 -270 160 -170 {}
N 160 -270 200 -270 {}
N 200 -270 210 -270 {}
N 160 -170 210 -170 {}
N 140 -220 160 -220 {}
N 250 -140 250 -110 { lab=GND}
N 250 -330 250 -300 { lab=VDD}
N 250 -220 360 -220 {}
C {vdd.sym} 530 -420 0 0 {name=l1 lab=VDD}
C {gnd.sym} 530 -30 0 0 {name=l3 lab=GND}
C {ipin.sym} 140 -220 0 0 {name=p3 lab=A
}
C {opin.sym} 660 -230 0 0 {name=p5 lab=Y}
C {pmos4.sym} 510 -360 0 0 {name=X0 model=pfet_03p3 w=1.7u l=0.3u m=1}
C {nmos4.sym} 510 -90 0 0 {name=X1 model=nfet_03p3 w=0.85u l=0.3u m=1}
C {lab_wire.sym} 560 -360 2 0 {name=l2 sig_type=std_logic lab=VDD
}
C {lab_wire.sym} 560 -90 2 0 {name=l4 sig_type=std_logic lab=GND
}
C {nmos4.sym} 510 -180 0 0 {name=X2 model=nfet_03p3 w=0.85u l=0.3u m=1}
C {lab_wire.sym} 560 -180 2 0 {name=l5 sig_type=std_logic lab=GND
}
C {pmos4.sym} 510 -280 0 0 {name=X3 model=pfet_03p3 w=1.7u l=0.3u m=1}
C {lab_wire.sym} 560 -280 2 0 {name=l6 sig_type=std_logic lab=VDD
}
C {ipin.sym} 470 -280 0 0 {name=p1 lab=EN_BAR
}
C {ipin.sym} 470 -180 0 0 {name=p2 lab=EN
}
C {nmos4.sym} 230 -170 0 0 {name=X4 model=nfet_03p3 w=0.85u l=0.3u m=1}
C {lab_wire.sym} 280 -170 2 0 {name=l7 sig_type=std_logic lab=GND
}
C {pmos4.sym} 230 -270 0 0 {name=X5 model=pfet_03p3 w=1.7u l=0.3u m=1}
C {lab_wire.sym} 280 -270 2 0 {name=l8 sig_type=std_logic lab=VDD
}
C {gnd.sym} 250 -110 0 0 {name=l9 lab=GND}
C {vdd.sym} 250 -330 0 0 {name=l10 lab=VDD}
