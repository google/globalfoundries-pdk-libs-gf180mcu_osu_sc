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
module gf180mcu_osu_sc_gp9t3v3__tinv_1 (Y, A, EN);
	output Y;
	input A, EN;

	// Function
	wire A__bar, EN__bar, int_fwire_0;
	wire int_fwire_enable;

	not (A__bar, A);
	not (EN__bar, EN);
	and (int_fwire_0, A, EN__bar);
	or (int_fwire_enable, int_fwire_0, A__bar);
	notif0 (Y, A, int_fwire_enable);

	// Timing
	specify
		if (EN)
			(negedge A => (Y+:1'b1)) = 0;
		if (~EN)
			(negedge A => (Y+:1'b1)) = 0;
		ifnone (A => Y) = 0;
		ifnone (negedge A => (Y:!A)) = 0;
		(EN => Y) = 0;
	endspecify
endmodule
`endcelldefine
