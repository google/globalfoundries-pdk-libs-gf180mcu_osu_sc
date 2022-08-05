*
* Filename: test.sp
* Author: James E. Stine, Jr.
* Course: none
* Credits: none
* Title: GF180 MCU test

***********************************************************************
* Parameters and models
***********************************************************************
.inc "/home/jstine/Desktop/gf180/mcu/018MCU/MODEL/Hspice/YI-141-SM064/Rev9/design.hspice"
.lib "/home/jstine/Desktop/gf180/mcu/018MCU/MODEL/Hspice/YI-141-SM064/Rev9/sm141064.hspice" typical
.temp 25
.param SUPPLY=3.3V

***********************************************************************
* Simulation netlist
***********************************************************************
Vdd	vdd	gnd	'SUPPLY'
Vin	A	gnd	PULSE	0 'SUPPLY' 0ps 25p 25p 500p 1000p

** Insert SPICE deck here




***********************************************************************
* Stimulus
***********************************************************************

.dc Vin 0V +5V 100mV
.tran .05n 5n 

.probe v(A) v(Out)
.op
.options probe post acct list node measout captab
.end
