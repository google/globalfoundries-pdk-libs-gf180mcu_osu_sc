v {xschem version=3.0.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 875 -490 875 -460 { lab=VDD}
N 875 -400 875 -370 { lab=out1}
N 875 -370 875 -330 { lab=out1}
N 875 -270 875 -240 { lab=GND}
N 815 -430 835 -430 { lab=A}
N 795 -430 795 -300 { lab=A}
N 775 -370 795 -370 { lab=A}
N 795 -430 815 -430 { lab=A}
N 795 -300 835 -300 { lab=A}
N 875 -430 905 -430 { lab=VDD}
N 875 -300 905 -300 { lab=GND}
N 510 -430 510 -330 { lab=out2}
N 660 -430 660 -330 { lab=#net1}
N 510 -510 510 -490 { lab=VDDH}
N 660 -510 660 -490 { lab=VDDH}
N 510 -510 660 -510 { lab=VDDH}
N 510 -270 510 -250 { lab=GND}
N 510 -250 660 -250 { lab=GND}
N 660 -270 660 -250 { lab=GND}
N 510 -390 620 -460 { lab=out2}
N 470 -460 660 -400 { lab=#net1}
N 580 -250 580 -220 { lab=GND}
N 510 -460 540 -460 { lab=VDDH}
N 660 -460 690 -460 { lab=VDDH}
N 510 -300 540 -300 { lab=GND}
N 660 -300 690 -300 { lab=GND}
N 1135 -500 1135 -470 { lab=VDDH}
N 1135 -410 1135 -380 { lab=Y}
N 1135 -380 1135 -340 { lab=Y}
N 1135 -280 1135 -250 { lab=GND}
N 1075 -440 1095 -440 { lab=out2}
N 1055 -440 1055 -310 { lab=out2}
N 1035 -380 1055 -380 { lab=out2}
N 1055 -440 1075 -440 { lab=out2}
N 1055 -310 1095 -310 { lab=out2}
N 1135 -440 1165 -440 { lab=VDDH}
N 1135 -310 1165 -310 { lab=GND}
N 875 -370 895 -370 { lab=out1}
N 1135 -380 1165 -380 { lab=Y}
N 235 -400 235 -375 { lab=GND}
N 235 -480 235 -460 { lab=VDDH}
N 320 -400 320 -375 { lab=GND}
N 320 -480 320 -460 { lab=VDD}
N 230 -225 230 -200 { lab=GND}
N 230 -305 230 -285 { lab=A}
C {vdd.sym} 875 -490 0 0 {name=l1 lab=VDD}
C {gnd.sym} 875 -240 0 0 {name=l3 lab=GND}
C {pmos4.sym} 855 -430 0 0 {name=X0 model=pfet_03p3 w=1.7u l=0.3u m=1}
C {nmos4.sym} 855 -300 0 0 {name=X1 model=nfet_03p3 w=0.85u l=0.3u m=1}
C {lab_wire.sym} 905 -430 2 0 {name=l2 sig_type=std_logic lab=VDD
}
C {lab_wire.sym} 905 -300 2 0 {name=l4 sig_type=std_logic lab=GND
}
C {pmos4.sym} 490 -460 0 0 {name=X2 model=pfet_03p3 w=0.85u l=0.3u m=1}
C {pmos4.sym} 640 -460 0 0 {name=X3 model=pfet_03p3 w=0.85u l=0.3u m=1}
C {nmos4.sym} 490 -300 0 0 {name=X4 model=nfet_03p3 w=0.85u l=0.3u m=1}
C {nmos4.sym} 640 -300 0 0 {name=X5 model=nfet_03p3 w=0.85u l=0.3u m=1}
C {vdd.sym} 580 -510 0 0 {name=l5 lab=VDDH}
C {gnd.sym} 580 -220 0 0 {name=l6 lab=GND}
C {lab_wire.sym} 540 -460 2 0 {name=l7 sig_type=std_logic lab=VDDH
}
C {lab_wire.sym} 690 -460 2 0 {name=l8 sig_type=std_logic lab=VDDH
}
C {lab_wire.sym} 540 -300 2 0 {name=l9 sig_type=std_logic lab=GND
}
C {lab_wire.sym} 690 -300 2 0 {name=l10 sig_type=std_logic lab=GND
}
C {vdd.sym} 1135 -500 0 0 {name=l11 lab=VDDH}
C {gnd.sym} 1135 -250 0 0 {name=l12 lab=GND}
C {pmos4.sym} 1115 -440 0 0 {name=X6 model=pfet_03p3 w=0.85u l=0.3u m=1}
C {nmos4.sym} 1115 -310 0 0 {name=X7 model=nfet_03p3 w=0.85u l=0.3u m=1}
C {lab_wire.sym} 1165 -440 2 0 {name=l13 sig_type=std_logic lab=VDDH
}
C {lab_wire.sym} 1165 -310 2 0 {name=l14 sig_type=std_logic lab=GND
}
C {title.sym} 175 -45 0 0 {name=l15 author="Landon Burleson"}
C {code.sym} 30 -505 0 0 {name=MODELS
only_toplevel=true 
format="tcleval( @value )"
value="
.temp 25
.inc \\"/import/yukari1/lrburle/OSU_180/char/techfiles/design.hspice\\"
.lib \\"/import/yukari1/lrburle/OSU_180/char/techfiles/sm141064.hspice\\" typical
"}
C {code_shown.sym} 10 -670 0 0 {name=SIM 
only_toplevel=true 
value="
.tran 0.3p 2n
.probe v(A) v(Y)
.options probe post acct list node measout captab
.end
"}
C {lab_wire.sym} 895 -370 2 0 {name=l16 sig_type=std_logic lab=out1
}
C {lab_wire.sym} 620 -300 2 1 {name=l17 sig_type=std_logic lab=out1
}
C {lab_wire.sym} 470 -300 2 1 {name=l18 sig_type=std_logic lab=A
}
C {lab_wire.sym} 510 -375 2 1 {name=l19 sig_type=std_logic lab=out2
}
C {lab_wire.sym} 1035 -380 2 1 {name=l20 sig_type=std_logic lab=out2
}
C {vsource.sym} 235 -430 0 0 {name=V1 value=5.0V}
C {gnd.sym} 235 -375 0 0 {name=l21 lab=GND}
C {vdd.sym} 235 -480 0 0 {name=l22 lab=VDDH}
C {vsource.sym} 320 -430 0 0 {name=V2 value=3.3V}
C {gnd.sym} 320 -375 0 0 {name=l23 lab=GND}
C {vdd.sym} 320 -480 0 0 {name=l24 lab=VDD}
C {vsource.sym} 230 -255 0 0 {name=V3 value="PULSE	0 3.3V 0ps 25p 25p 500p 1000p"}
C {gnd.sym} 230 -200 0 0 {name=l25 lab=GND}
C {lab_wire.sym} 230 -305 3 1 {name=l26 sig_type=std_logic lab=A
}
C {lab_wire.sym} 775 -370 2 1 {name=l27 sig_type=std_logic lab=A
}
C {lab_wire.sym} 1165 -380 2 0 {name=l28 sig_type=std_logic lab=Y
}
