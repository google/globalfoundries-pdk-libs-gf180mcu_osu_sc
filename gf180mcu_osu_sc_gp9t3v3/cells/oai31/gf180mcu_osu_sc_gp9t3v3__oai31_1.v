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
module gf180mcu_osu_sc_gp9t3v3__oai31_1 (Y, A0, A1, A2, B);
	output Y;
	input A0, A1, A2, B;

	// Function
	wire A0__bar, A1__bar, A2__bar;
	wire B__bar, int_fwire_0;

	not (B__bar, B);
	not (A2__bar, A2);
	not (A1__bar, A1);
	not (A0__bar, A0);
	and (int_fwire_0, A0__bar, A1__bar, A2__bar);
	or (Y, int_fwire_0, B__bar);

	// Timing
	specify
		(A0 => Y) = 0;
		(A1 => Y) = 0;
		(A2 => Y) = 0;
		if ((A0 & A1 & A2))
			(B => Y) = 0;
		if ((A0 & A1 & ~A2) | (~A0 & A1 & A2))
			(B => Y) = 0;
		if ((A0 & ~A1 & A2))
			(B => Y) = 0;
		if ((A0 & ~A1 & ~A2))
			(B => Y) = 0;
		if ((~A0 & A1 & ~A2))
			(B => Y) = 0;
		if ((~A0 & ~A1 & A2))
			(B => Y) = 0;
		ifnone (B => Y) = 0;
	endspecify
endmodule
`endcelldefine
