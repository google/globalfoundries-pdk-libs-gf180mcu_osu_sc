# correlateRC.py gcd,ibex,aes,jpeg,chameleon,riscv32i,chameleon_hier
# cap units pf/um
set_layer_rc -layer MET1 -capacitance 1.499e-04 -resistance 7.176e-02
set_layer_rc -layer MET2 -capacitance 1.72375E-04 -resistance 8.929e-04
set_layer_rc -layer MET3 -capacitance 1.36233E-04 -resistance 8.929e-04
set_layer_rc -layer MET4 -capacitance 2.14962E-04 -resistance 1.567e-04
set_layer_rc -layer MET5 -capacitance 1.48128E-04 -resistance 1.567e-04
# end correlate

set_layer_rc -via VIA12 -resistance 9.249146E-3
set_layer_rc -via VIA23 -resistance 4.5E-3
set_layer_rc -via VIA34 -resistance 3.368786E-3
set_layer_rc -via VIA45 -resistance 0.376635E-3

set_wire_rc -signal -layer MET3
set_wire_rc -clock -layer MET5
