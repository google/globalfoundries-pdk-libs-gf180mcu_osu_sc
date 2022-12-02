v {xschem version=3.0.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 260 -420 260 -390 { lab=VDD}
N 260 -60 260 -30 { lab=GND}
N 90 -310 90 -180 { lab=A}
N 70 -220 90 -220 { lab=A}
N 180 -90 220 -90 { lab=A}
N 260 -360 290 -360 { lab=VDD}
N 260 -90 290 -90 { lab=GND}
N 260 -180 290 -180 { lab=GND}
N 260 -150 260 -120 { lab=#net1}
N 260 -280 290 -280 { lab=VDD}
N 260 -330 260 -310 { lab=#net2}
N 260 -250 260 -210 { lab=#net3}
N 90 -360 220 -360 { lab=A}
N 90 -360 90 -310 { lab=A}
N 90 -90 180 -90 { lab=A}
N 90 -180 90 -90 { lab=A}
N 200 -280 220 -280 { lab=EN_BAR}
N 200 -180 220 -180 { lab=EN}
N 450 -230 520 -230 { lab=#net4}
N 450 -180 480 -180 { lab=GND}
N 450 -280 480 -280 { lab=VDD}
N 450 -250 450 -210 { lab=#net4}
N 390 -180 410 -180 { lab=#net3}
N 370 -180 390 -180 { lab=#net3}
N 370 -280 370 -180 { lab=#net3}
N 370 -280 400 -280 { lab=#net3}
N 450 -340 450 -310 { lab=VDD}
N 450 -150 450 -100 { lab=GND}
N 400 -280 410 -280 { lab=#net3}
N 600 -230 670 -230 { lab=Y}
N 600 -180 630 -180 { lab=GND}
N 600 -280 630 -280 { lab=VDD}
N 600 -250 600 -210 { lab=Y}
N 540 -180 560 -180 { lab=#net4}
N 520 -180 540 -180 { lab=#net4}
N 520 -280 520 -180 { lab=#net4}
N 520 -280 550 -280 { lab=#net4}
N 600 -340 600 -310 { lab=VDD}
N 600 -150 600 -100 { lab=GND}
N 550 -280 560 -280 { lab=#net4}
N 260 -230 370 -230 { lab=#net3}
C {vdd.sym} 260 -420 0 0 {name=l1 lab=VDD}
C {gnd.sym} 260 -30 0 0 {name=l3 lab=GND}
C {ipin.sym} 70 -220 0 0 {name=p3 lab=A
}
C {opin.sym} 670 -230 0 0 {name=p5 lab=Y}
C {pmos4.sym} 240 -360 0 0 {name=X0 model=pmos_3p3 w=1.7u l=0.3u m=1}
C {nmos4.sym} 240 -90 0 0 {name=X1 model=nmos_3p3 w=0.85u l=0.3u m=1}
C {lab_wire.sym} 290 -360 2 0 {name=l2 sig_type=std_logic lab=VDD
}
C {lab_wire.sym} 290 -90 2 0 {name=l4 sig_type=std_logic lab=GND
}
C {nmos4.sym} 240 -180 0 0 {name=X2 model=nmos_3p3 w=0.85u l=0.3u m=1}
C {lab_wire.sym} 290 -180 2 0 {name=l5 sig_type=std_logic lab=GND
}
C {pmos4.sym} 240 -280 0 0 {name=X3 model=pmos_3p3 w=1.7u l=0.3u m=1}
C {lab_wire.sym} 290 -280 2 0 {name=l6 sig_type=std_logic lab=VDD
}
C {ipin.sym} 200 -280 0 0 {name=p1 lab=EN_BAR
}
C {ipin.sym} 200 -180 0 0 {name=p2 lab=EN
}
C {nmos4.sym} 430 -180 0 0 {name=X4 model=nmos_3p3 w=0.85u l=0.3u m=1}
C {lab_wire.sym} 480 -180 2 0 {name=l7 sig_type=std_logic lab=GND
}
C {pmos4.sym} 430 -280 0 0 {name=X5 model=pmos_3p3 w=1.7u l=0.3u m=1}
C {lab_wire.sym} 480 -280 2 0 {name=l8 sig_type=std_logic lab=VDD
}
C {vdd.sym} 450 -340 0 0 {name=l9 lab=VDD}
C {gnd.sym} 450 -100 0 0 {name=l10 lab=GND}
C {nmos4.sym} 580 -180 0 0 {name=X6 model=nmos_3p3 w=0.85u l=0.3u m=4}
C {lab_wire.sym} 630 -180 2 0 {name=l11 sig_type=std_logic lab=GND
}
C {pmos4.sym} 580 -280 0 0 {name=X7 model=pmos_3p3 w=1.7u l=0.3u m=4}
C {lab_wire.sym} 630 -280 2 0 {name=l12 sig_type=std_logic lab=VDD
}
C {vdd.sym} 600 -340 0 0 {name=l13 lab=VDD}
C {gnd.sym} 600 -100 0 0 {name=l14 lab=GND}
