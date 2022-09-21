*
* Filename: test.sp
* Author: James E. Stine, Jr.
* Course: none
* Credits: none
* Title: GF180 MCU inverter test

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

* NGSPICE file created from INV2_12T.ext - technology: gf180mcuC

.option scale=0.05u

X0 Out A vdd vdd pmos_3p3 w=34 l=6
X1 Out A gnd gnd nmos_3p3 w=17 l=6


***********************************************************************
* Stimulus
***********************************************************************

.dc Vin 0V +5V 100mV
.tran .05n 5n 

.probe v(A) v(Out)
.op
.options probe post acct list node measout captab
.end
