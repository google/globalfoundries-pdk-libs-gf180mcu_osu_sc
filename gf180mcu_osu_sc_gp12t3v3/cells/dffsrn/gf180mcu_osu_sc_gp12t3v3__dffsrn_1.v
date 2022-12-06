// Copyright 2022 Google LLC
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//      http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.
`timescale 1ns/10ps
`celldefine
module gf180mcu_osu_sc_gp12t3v3__dffsrn_1 (Q, QN, D, RN, SN, CLKN);
	output Q, QN;
	input D, RN, SN, CLKN;
	reg notifier;
	wire delayed_D, delayed_RN, delayed_SN, delayed_CLKN;

	// Function
	wire int_fwire_IQ, int_fwire_IQN, int_fwire_r;
	wire int_fwire_s, xcr_0;

	not (int_fwire_s, delayed_SN);
	not (int_fwire_r, delayed_RN);
	altos_dff_sr_err (xcr_0, delayed_CLKN, delayed_D, int_fwire_s, int_fwire_r);
	altos_dff_sr_0 (int_fwire_IQ, notifier, delayed_CLKN, delayed_D, int_fwire_s, int_fwire_r, xcr_0);
	buf (Q, int_fwire_IQ);
	not (int_fwire_IQN, int_fwire_IQ);
	buf (QN, int_fwire_IQN);

	// Timing

	// Additional timing wires
	wire adacond0, adacond1, adacond2;
	wire adacond3, adacond4, adacond5;
	wire adacond6, adacond7, adacond8;
	wire CLKN__bar, D__bar;


	// Additional timing gates
	and (adacond0, RN, SN);
	and (adacond1, D, SN);
	and (adacond2, CLKN, SN);
	not (CLKN__bar, CLKN);
	and (adacond3, CLKN__bar, SN);
	not (D__bar, D);
	and (adacond4, D__bar, RN);
	and (adacond5, CLKN, RN);
	and (adacond6, CLKN__bar, RN);
	and (adacond7, D, RN, SN);
	and (adacond8, D__bar, RN, SN);

	specify
		if ((CLKN & SN))
			(negedge RN => (Q+:1'b0)) = 0;
		if ((CLKN & ~SN))
			(negedge RN => (Q+:1'b0)) = 0;
		if ((~CLKN & D & SN))
			(negedge RN => (Q+:1'b0)) = 0;
		if ((~CLKN & D & ~SN))
			(negedge RN => (Q+:1'b0)) = 0;
		if ((~CLKN & ~D & SN))
			(negedge RN => (Q+:1'b0)) = 0;
		if ((~CLKN & ~D & ~SN))
			(negedge RN => (Q+:1'b0)) = 0;
		ifnone (negedge RN => (Q+:1'b0)) = 0;
		if ((CLKN & ~SN))
			(posedge RN => (Q+:1'b1)) = 0;
		if ((~CLKN & D & ~SN))
			(posedge RN => (Q+:1'b1)) = 0;
		if ((~CLKN & ~D & ~SN))
			(posedge RN => (Q+:1'b1)) = 0;
		ifnone (posedge RN => (Q+:1'b1)) = 0;
		if ((CLKN & RN))
			(negedge SN => (Q+:1'b1)) = 0;
		if ((~CLKN & D & RN))
			(negedge SN => (Q+:1'b1)) = 0;
		if ((~CLKN & ~D & RN))
			(negedge SN => (Q+:1'b1)) = 0;
		ifnone (negedge SN => (Q+:1'b1)) = 0;
		(posedge CLKN => (Q+:D)) = 0;
		if ((CLKN & ~SN))
			(posedge RN => (QN-:1'b1)) = 0;
		if ((~CLKN & D & ~SN))
			(posedge RN => (QN-:1'b1)) = 0;
		if ((~CLKN & ~D & ~SN))
			(posedge RN => (QN-:1'b1)) = 0;
		ifnone (posedge RN => (QN-:1'b1)) = 0;
		if ((CLKN & SN))
			(negedge RN => (QN-:1'b0)) = 0;
		if ((CLKN & ~SN))
			(negedge RN => (QN-:1'b0)) = 0;
		if ((~CLKN & D & SN))
			(negedge RN => (QN-:1'b0)) = 0;
		if ((~CLKN & D & ~SN))
			(negedge RN => (QN-:1'b0)) = 0;
		if ((~CLKN & ~D & SN))
			(negedge RN => (QN-:1'b0)) = 0;
		if ((~CLKN & ~D & ~SN))
			(negedge RN => (QN-:1'b0)) = 0;
		ifnone (negedge RN => (QN-:1'b0)) = 0;
		if ((CLKN & RN))
			(negedge SN => (QN-:1'b1)) = 0;
		if ((~CLKN & D & RN))
			(negedge SN => (QN-:1'b1)) = 0;
		if ((~CLKN & ~D & RN))
			(negedge SN => (QN-:1'b1)) = 0;
		ifnone (negedge SN => (QN-:1'b1)) = 0;
		(posedge CLKN => (QN-:D)) = 0;
		$setuphold (posedge CLKN &&& adacond0, posedge D &&& adacond0, 0, 0, notifier,,, delayed_CLKN, delayed_D);
		$setuphold (posedge CLKN &&& adacond0, negedge D &&& adacond0, 0, 0, notifier,,, delayed_CLKN, delayed_D);
		$setuphold (posedge CLKN, posedge D, 0, 0, notifier,,, delayed_CLKN, delayed_D);
		$setuphold (posedge CLKN, negedge D, 0, 0, notifier,,, delayed_CLKN, delayed_D);
		$setuphold (posedge SN &&& CLKN, posedge RN &&& CLKN, 0, 0, notifier,,, delayed_SN, delayed_RN);
		$setuphold (posedge SN &&& ~CLKN, posedge RN &&& ~CLKN, 0, 0, notifier,,, delayed_SN, delayed_RN);
		$setuphold (posedge SN, posedge RN, 0, 0, notifier,,, delayed_SN, delayed_RN);
		$recovery (posedge RN &&& adacond1, posedge CLKN &&& adacond1, 0, notifier);
		$recovery (posedge RN, posedge CLKN, 0, notifier);
		$hold (posedge CLKN &&& adacond1, posedge RN &&& adacond1, 0, notifier);
		$hold (posedge CLKN, posedge RN, 0, notifier);
		$recovery (posedge SN &&& adacond4, posedge CLKN &&& adacond4, 0, notifier);
		$recovery (posedge SN, posedge CLKN, 0, notifier);
		$hold (posedge CLKN &&& adacond4, posedge SN &&& adacond4, 0, notifier);
		$hold (posedge CLKN, posedge SN, 0, notifier);
		$width (negedge RN &&& adacond2, 0, 0, notifier);
		$width (negedge RN &&& adacond3, 0, 0, notifier);
		$width (negedge SN &&& adacond5, 0, 0, notifier);
		$width (negedge SN &&& adacond6, 0, 0, notifier);
		$width (posedge CLKN &&& adacond7, 0, 0, notifier);
		$width (negedge CLKN &&& adacond7, 0, 0, notifier);
		$width (posedge CLKN &&& adacond8, 0, 0, notifier);
		$width (negedge CLKN &&& adacond8, 0, 0, notifier);
	endspecify
endmodule
`endcelldefine