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
module gf180mcu_osu_sc_gp12t3v3__dffsn_1 (Q, QN, D, SN, CLK);
	output Q, QN;
	input D, SN, CLK;
	reg notifier;

	// Function
	buf (Q, 1'b1);
	buf (QN, 1'b1);

	// Timing
	specify
		$width (posedge SN &&& ~CLK, 0, 0, notifier);
	endspecify
endmodule
`endcelldefine
