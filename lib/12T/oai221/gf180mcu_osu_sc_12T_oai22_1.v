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
module gf180mcu_osu_sc_12T_oai22_1 (Y, A0, A1, B0, B1);
	output Y;
	input A0, A1, B0, B1;

	// Function
	wire A0__bar, A1__bar, B0__bar;
	wire B1__bar, int_fwire_0, int_fwire_1;

	not (B1__bar, B1);
	not (B0__bar, B0);
	and (int_fwire_0, B0__bar, B1__bar);
	not (A1__bar, A1);
	not (A0__bar, A0);
	and (int_fwire_1, A0__bar, A1__bar);
	or (Y, int_fwire_1, int_fwire_0);

	// Timing
	specify
		if ((~A1 & B0 & B1))
			(A0 => Y) = 0;
		if ((~A1 & B0 & ~B1))
			(A0 => Y) = 0;
		if ((~A1 & ~B0 & B1))
			(A0 => Y) = 0;
		ifnone (A0 => Y) = 0;
		if ((~A0 & B0 & B1))
			(A1 => Y) = 0;
		if ((~A0 & B0 & ~B1))
			(A1 => Y) = 0;
		if ((~A0 & ~B0 & B1))
			(A1 => Y) = 0;
		ifnone (A1 => Y) = 0;
		if ((A0 & A1 & ~B1))
			(B0 => Y) = 0;
		if ((A0 & ~A1 & ~B1))
			(B0 => Y) = 0;
		if ((~A0 & A1 & ~B1))
			(B0 => Y) = 0;
		ifnone (B0 => Y) = 0;
		if ((A0 & A1 & ~B0))
			(B1 => Y) = 0;
		if ((A0 & ~A1 & ~B0))
			(B1 => Y) = 0;
		if ((~A0 & A1 & ~B0))
			(B1 => Y) = 0;
		ifnone (B1 => Y) = 0;
	endspecify
endmodule
`endcelldefine
