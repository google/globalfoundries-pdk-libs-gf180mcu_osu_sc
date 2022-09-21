*
* Filename: test.sp
* Author: James E. Stine, Jr.
* Course: none
* Credits: none
* Title: GF180 MCU test

***********************************************************************
* Parameters and models
***********************************************************************
.inc "../char/techfiles/design.hspice"
.lib "../char/techfiles/sm141064.hspice" typical
.temp 25
.param SUPPLY=3.3V

***********************************************************************
* Simulation netlist
***********************************************************************
Vdd	vdd	gnd	'SUPPLY'
Vin	A	gnd	PULSE	0 'SUPPLY' 0ps 25p 25p 500p 1000p

** Insert SPICE deck here
.option scale=0.05u

.subckt gf180mcu_osu_sc_12T_inv_1 A Y
X0 Y A VDD VDD pmos_3p3 w=34 l=6
X1 Y A GND GND nmos_3p3 w=17 l=6
.ends

** hspice subcircuit dictionary

***********************************************************************
* Stimulus
***********************************************************************

.dc Vin 0V +5V 100mV
.tran .05n 5n

.probe v(A) v(Out)
.op
.options probe post acct list node measout captab
.end
