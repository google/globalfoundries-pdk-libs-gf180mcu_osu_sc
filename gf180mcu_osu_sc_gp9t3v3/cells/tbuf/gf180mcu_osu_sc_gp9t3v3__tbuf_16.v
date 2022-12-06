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
module gf180mcu_osu_sc_gp9t3v3__tbuf_16 (Y, A, EN, EN_BAR);
	output Y;
	input A, EN, EN_BAR;

	// Function
	or (Y, A, EN_BAR);

	// Timing
	specify
		if ((EN & EN_BAR))
			(posedge A => (Y+:1'b1)) = 0;
		if ((EN & ~EN_BAR))
			(A => Y) = 0;
		if ((~EN & ~EN_BAR))
			(negedge A => (Y+:1'b0)) = 0;
		ifnone (A => Y) = 0;
		if ((A & EN_BAR))
			(posedge EN => (Y+:1'b1)) = 0;
		if ((A & ~EN_BAR))
			(posedge EN => (Y+:1'b1)) = 0;
		ifnone (posedge EN => (Y+:1'b1)) = 0;
		if ((~A & EN))
			(negedge EN_BAR => (Y+:1'b0)) = 0;
		if ((~A & ~EN))
			(negedge EN_BAR => (Y+:1'b0)) = 0;
		ifnone (negedge EN_BAR => (Y+:1'b0)) = 0;
	endspecify
endmodule
`endcelldefine
