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
module gf180mcu_osu_sc_gp9t3v3__tinv_1 (Y, A, EN, EN_BAR);
	output Y;
	input A, EN, EN_BAR;

	// Function
	wire A__bar, EN__bar, EN_BAR__bar;
	wire int_fwire_0, int_fwire_1, int_fwire___Y;
	wire int_fwire_enable_Y;

	not (A__bar, A);
	and (int_fwire_0, A__bar, EN_BAR);
	not (EN__bar, EN);
	and (int_fwire_1, A, EN__bar);
	or (int_fwire_enable_Y, int_fwire_1, int_fwire_0);
	not (EN_BAR__bar, EN_BAR);
	and (int_fwire___Y, A__bar, EN_BAR__bar);
	bufif0 (Y, int_fwire___Y, int_fwire_enable_Y);

	// Timing
	specify
		if ((EN & EN_BAR))
			(posedge A => (Y-:1'b0)) = 0;
		if ((EN & ~EN_BAR))
			(A => Y) = 0;
		if ((~EN & ~EN_BAR))
			(negedge A => (Y+:1'b1)) = 0;
		ifnone (A => Y) = 0;
		ifnone (negedge A => (Y:((!A && !EN_BAR)))) = 0;
		ifnone (posedge EN => (Y-:1'b0)) = 0;
		(negedge EN => (Y:((!A && !EN_BAR)))) = 0;
		ifnone (negedge EN_BAR => (Y+:1'b1)) = 0;
	endspecify
endmodule
`endcelldefine
