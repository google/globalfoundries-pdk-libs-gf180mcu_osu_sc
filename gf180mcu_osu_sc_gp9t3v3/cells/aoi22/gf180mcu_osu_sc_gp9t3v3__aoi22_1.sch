v {xschem version=3.0.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 110 -480 110 -450 { lab=VDD}
N 260 -480 260 -450 { lab=VDD}
N 110 -390 110 -360 { lab=#net1}
N 260 -390 260 -360 { lab=#net1}
N 110 -190 110 -150 { lab=#net2}
N 110 -90 110 -60 { lab=GND}
N 50 -420 70 -420 { lab=A0}
N 210 -420 220 -420 { lab=A1}
N 110 -420 130 -420 { lab=VDD}
N 260 -420 280 -420 { lab=VDD}
N 110 -220 120 -220 { lab=GND}
N 110 -120 130 -120 { lab=GND}
N 50 -220 70 -220 { lab=A0}
N 50 -120 70 -120 { lab=A1}
N 60 -320 70 -320 { lab=B0}
N 110 -320 130 -320 { lab=VDD}
N 110 -360 110 -350 { lab=#net1}
N 200 -220 220 -220 { lab=B0}
N 260 -220 280 -220 { lab=GND}
N 210 -330 220 -330 { lab=B1}
N 260 -330 280 -330 { lab=VDD}
N 260 -300 260 -290 { lab=#net3}
N 200 -120 220 -120 { lab=B1}
N 260 -120 280 -120 { lab=GND}
N 260 -90 260 -60 { lab=GND}
N 260 -190 260 -150 { lab=#net4}
N 110 -270 110 -250 { lab=#net3}
N 110 -270 260 -270 { lab=#net3}
N 260 -270 260 -250 { lab=#net3}
N 260 -290 260 -270 { lab=#net3}
N 110 -290 110 -270 { lab=#net3}
N 110 -370 260 -370 { lab=#net1}
N 260 -270 310 -270 {}
C {vdd.sym} 110 -480 0 0 {name=l1 lab=VDD}
C {vdd.sym} 260 -480 0 0 {name=l2 lab=VDD}
C {gnd.sym} 110 -60 0 0 {name=l3 lab=GND}
C {ipin.sym} 50 -420 0 0 {name=p3 lab=A0
}
C {ipin.sym} 210 -420 0 0 {name=p4 lab=A1
}
C {pmos4.sym} 90 -420 0 0 {name=X1 model=pfet_03p3 w=1.7u l=0.3u m=1}
C {pmos4.sym} 240 -420 0 0 {name=X0 model=pfet_03p3 w=1.7u l=0.3u m=1}
C {nmos4.sym} 90 -220 0 0 {name=X2 model=nfet_03p3 w=0.85u l=0.3u m=1}
C {nmos4.sym} 90 -120 0 0 {name=X3 model=nfet_03p3 w=0.85u l=0.3u m=1}
C {lab_wire.sym} 130 -420 2 0 {name=l4 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 280 -420 2 0 {name=l5 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 120 -220 2 0 {name=l6 sig_type=std_logic lab=GND}
C {lab_wire.sym} 130 -120 2 0 {name=l7 sig_type=std_logic lab=GND}
C {lab_wire.sym} 50 -220 0 0 {name=l8 sig_type=std_logic lab=A0}
C {lab_wire.sym} 50 -120 0 0 {name=l9 sig_type=std_logic lab=A1}
C {nmos4.sym} 240 -220 0 0 {name=X4 model=nfet_03p3 w=0.85u l=0.3u m=1}
C {ipin.sym} 60 -320 0 0 {name=p1 lab=B0
}
C {pmos4.sym} 90 -320 0 0 {name=X5 model=pfet_03p3 w=1.7u l=0.3u m=1}
C {lab_wire.sym} 130 -320 2 0 {name=l10 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 200 -220 0 0 {name=l11 sig_type=std_logic lab=B0

}
C {lab_wire.sym} 280 -220 2 0 {name=l12 sig_type=std_logic lab=GND}
C {ipin.sym} 210 -330 0 0 {name=p2 lab=B1
}
C {pmos4.sym} 240 -330 0 0 {name=X6 model=pfet_03p3 w=1.7u l=0.3u m=1}
C {lab_wire.sym} 280 -330 2 0 {name=l13 sig_type=std_logic lab=VDD}
C {nmos4.sym} 240 -120 0 0 {name=X7 model=nfet_03p3 w=0.85u l=0.3u m=1}
C {lab_wire.sym} 200 -120 0 0 {name=l14 sig_type=std_logic lab=B1

}
C {lab_wire.sym} 280 -120 2 0 {name=l15 sig_type=std_logic lab=GND}
C {gnd.sym} 260 -60 0 0 {name=l16 lab=GND}
C {opin.sym} 310 -270 0 0 {name=p5 lab=Y}
