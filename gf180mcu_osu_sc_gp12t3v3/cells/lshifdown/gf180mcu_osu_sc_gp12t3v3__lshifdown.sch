v {xschem version=3.0.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 615 -480 615 -450 { lab=VDDH}
N 615 -390 615 -360 { lab=out1}
N 615 -360 615 -320 { lab=out1}
N 615 -260 615 -230 { lab=GND}
N 555 -420 575 -420 { lab=A}
N 535 -420 535 -290 { lab=A}
N 515 -360 535 -360 { lab=A}
N 535 -420 555 -420 { lab=A}
N 535 -290 575 -290 { lab=A}
N 615 -420 645 -420 { lab=VDD}
N 615 -290 645 -290 { lab=GND}
N 875 -480 875 -450 { lab=VDD}
N 875 -390 875 -360 { lab=Y}
N 875 -360 875 -320 { lab=Y}
N 875 -260 875 -230 { lab=GND}
N 815 -420 835 -420 { lab=out1}
N 795 -420 795 -290 { lab=out1}
N 775 -360 795 -360 { lab=out1}
N 795 -420 815 -420 { lab=out1}
N 795 -290 835 -290 { lab=out1}
N 875 -420 905 -420 { lab=VDDH}
N 875 -290 905 -290 { lab=GND}
N 615 -360 635 -360 { lab=out1}
N 875 -360 905 -360 { lab=Y}
N 235 -400 235 -375 { lab=GND}
N 235 -480 235 -460 { lab=VDDH}
N 320 -400 320 -375 { lab=GND}
N 320 -480 320 -460 { lab=VDD}
N 230 -225 230 -200 { lab=GND}
N 230 -305 230 -285 { lab=A}
C {vdd.sym} 615 -480 0 0 {name=l1 lab=VDDH}
C {gnd.sym} 615 -230 0 0 {name=l3 lab=GND}
C {pmos4.sym} 595 -420 0 0 {name=X0 model=pfet_03p3 w=1.7u l=0.3u m=1}
C {nmos4.sym} 595 -290 0 0 {name=X1 model=nfet_03p3 w=0.85u l=0.3u m=1}
C {lab_wire.sym} 645 -420 2 0 {name=l2 sig_type=std_logic lab=VDD
}
C {lab_wire.sym} 645 -290 2 0 {name=l4 sig_type=std_logic lab=GND
}
C {vdd.sym} 875 -480 0 0 {name=l11 lab=VDD}
C {gnd.sym} 875 -230 0 0 {name=l12 lab=GND}
C {pmos4.sym} 855 -420 0 0 {name=X6 model=pfet_03p3 w=1.7u l=0.3u m=1}
C {nmos4.sym} 855 -290 0 0 {name=X7 model=nfet_03p3 w=0.85u l=0.3u m=1}
C {lab_wire.sym} 905 -420 2 0 {name=l13 sig_type=std_logic lab=VDDH
}
C {lab_wire.sym} 905 -290 2 0 {name=l14 sig_type=std_logic lab=GND
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
.tran 0.3p 5n
.probe v(A) v(Y)
.options probe post acct list node measout captab
.end
"}
C {lab_wire.sym} 635 -360 2 0 {name=l16 sig_type=std_logic lab=out1
}
C {lab_wire.sym} 775 -360 2 1 {name=l20 sig_type=std_logic lab=out1
}
C {vsource.sym} 235 -430 0 0 {name=V1 value=5.0V}
C {gnd.sym} 235 -375 0 0 {name=l21 lab=GND}
C {vdd.sym} 235 -480 0 0 {name=l22 lab=VDDH}
C {vsource.sym} 320 -430 0 0 {name=V2 value=3.3V}
C {gnd.sym} 320 -375 0 0 {name=l23 lab=GND}
C {vdd.sym} 320 -480 0 0 {name=l24 lab=VDD}
C {vsource.sym} 230 -255 0 0 {name=V3 value="PULSE	0 5.0V 0ps 25p 25p 500p 1000p"}
C {gnd.sym} 230 -200 0 0 {name=l25 lab=GND}
C {lab_wire.sym} 230 -305 3 1 {name=l26 sig_type=std_logic lab=A
}
C {lab_wire.sym} 515 -360 2 1 {name=l27 sig_type=std_logic lab=A
}
C {lab_wire.sym} 905 -360 2 0 {name=l28 sig_type=std_logic lab=Y
}
