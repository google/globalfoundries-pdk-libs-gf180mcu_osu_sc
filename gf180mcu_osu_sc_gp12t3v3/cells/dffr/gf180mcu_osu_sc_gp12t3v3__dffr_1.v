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
module gf180mcu_osu_sc_gp12t3v3__dffr_1 (Q, QN, D, RN, CLK);
	output Q, QN;
	input D, RN, CLK;
	reg notifier;
	wire delayed_D, delayed_CLK;

	// Function
	wire int_fwire_IQ, int_fwire_IQN, int_fwire_r;
	wire xcr_0;

	not (int_fwire_r, RN);
	altos_dff_r_err (xcr_0, delayed_CLK, delayed_D, int_fwire_r);
	altos_dff_r (int_fwire_IQ, notifier, delayed_CLK, delayed_D, int_fwire_r, xcr_0);
	buf (Q, int_fwire_IQ);
	not (int_fwire_IQN, int_fwire_IQ);
	buf (QN, int_fwire_IQN);

	// Timing

	// Additional timing wires
	wire adacond0, adacond1, D__bar;


	// Additional timing gates
	and (adacond0, D, RN);
	not (D__bar, D);
	and (adacond1, D__bar, RN);

	specify
		if (CLK)
			(negedge RN => (Q+:1'b0)) = 0;
		if ((~CLK & D))
			(negedge RN => (Q+:1'b0)) = 0;
		if ((~CLK & ~D))
			(negedge RN => (Q+:1'b0)) = 0;
		ifnone (negedge RN => (Q+:1'b0)) = 0;
		(posedge CLK => (Q+:D)) = 0;
		if (CLK)
			(negedge RN => (QN-:1'b0)) = 0;
		if ((~CLK & D))
			(negedge RN => (QN-:1'b0)) = 0;
		if ((~CLK & ~D))
			(negedge RN => (QN-:1'b0)) = 0;
		ifnone (negedge RN => (QN-:1'b0)) = 0;
		(posedge CLK => (QN-:D)) = 0;
		$setuphold (posedge CLK &&& RN, posedge D &&& RN, 0, 0, notifier,,, delayed_CLK, delayed_D);
		$setuphold (posedge CLK &&& RN, negedge D &&& RN, 0, 0, notifier,,, delayed_CLK, delayed_D);
		$setuphold (posedge CLK, posedge D, 0, 0, notifier,,, delayed_CLK, delayed_D);
		$setuphold (posedge CLK, negedge D, 0, 0, notifier,,, delayed_CLK, delayed_D);
		$recovery (posedge RN &&& D, posedge CLK &&& D, 0, notifier);
		$recovery (posedge RN, posedge CLK, 0, notifier);
		$hold (posedge CLK &&& D, posedge RN &&& D, 0, notifier);
		$hold (posedge CLK, posedge RN, 0, notifier);
		$width (negedge RN &&& CLK, 0, 0, notifier);
		$width (negedge RN &&& ~CLK, 0, 0, notifier);
		$width (posedge CLK &&& adacond0, 0, 0, notifier);
		$width (negedge CLK &&& adacond0, 0, 0, notifier);
		$width (posedge CLK &&& adacond1, 0, 0, notifier);
		$width (negedge CLK &&& adacond1, 0, 0, notifier);
	endspecify
endmodule
`endcelldefine
