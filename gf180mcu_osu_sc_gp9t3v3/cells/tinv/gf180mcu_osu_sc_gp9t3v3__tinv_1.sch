v {xschem version=3.0.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 260 -420 260 -390 { lab=VDD}
N 260 -60 260 -30 { lab=GND}
N 330 -230 390 -230 { lab=Y}
N 260 -230 330 -230 { lab=Y}
N 90 -310 90 -180 { lab=A}
N 70 -220 90 -220 { lab=A}
N 180 -90 220 -90 { lab=A}
N 260 -360 290 -360 { lab=VDD}
N 260 -90 290 -90 { lab=GND}
N 260 -180 290 -180 { lab=GND}
N 260 -150 260 -120 { lab=#net1}
N 260 -280 290 -280 { lab=VDD}
N 260 -330 260 -310 { lab=#net2}
N 260 -250 260 -210 { lab=Y}
N 90 -360 220 -360 { lab=A}
N 90 -360 90 -310 { lab=A}
N 90 -90 180 -90 { lab=A}
N 90 -180 90 -90 { lab=A}
N 200 -280 220 -280 { lab=EN_BAR}
N 200 -180 220 -180 { lab=A}
C {vdd.sym} 260 -420 0 0 {name=l1 lab=VDD}
C {gnd.sym} 260 -30 0 0 {name=l3 lab=GND}
C {ipin.sym} 70 -220 0 0 {name=p3 lab=A
}
C {opin.sym} 390 -230 0 0 {name=p5 lab=Y}
C {pmos4.sym} 240 -360 0 0 {name=X0 model=pfet_03p3 w=1.7u l=0.3u m=1}
C {nmos4.sym} 240 -90 0 0 {name=X1 model=nfet_03p3 w=0.85u l=0.3u m=1}
C {lab_wire.sym} 290 -360 2 0 {name=l2 sig_type=std_logic lab=VDD
}
C {lab_wire.sym} 290 -90 2 0 {name=l4 sig_type=std_logic lab=GND
}
C {nmos4.sym} 240 -180 0 0 {name=X2 model=nfet_03p3 w=0.85u l=0.3u m=1}
C {lab_wire.sym} 290 -180 2 0 {name=l5 sig_type=std_logic lab=GND
}
C {pmos4.sym} 240 -280 0 0 {name=X3 model=pfet_03p3 w=1.7u l=0.3u m=1}
C {lab_wire.sym} 290 -280 2 0 {name=l6 sig_type=std_logic lab=VDD
}
C {ipin.sym} 200 -280 0 0 {name=p1 lab=EN_BAR
}
C {ipin.sym} 200 -180 0 0 {name=p2 lab=EN
}
