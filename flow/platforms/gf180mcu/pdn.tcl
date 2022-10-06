####################################
# global connections
####################################
add_global_connection -defer_connection -net {VDD} -inst_pattern {.*} -pin_pattern {^VDD$} -power
add_global_connection -defer_connection -net {VDD} -inst_pattern {.*} -pin_pattern {^VDDPE$}
add_global_connection -defer_connection -net {VDD} -inst_pattern {.*} -pin_pattern {^VDDCE$}
add_global_connection -defer_connection -net {VDD} -inst_pattern {.*} -pin_pattern {VPWR}
add_global_connection -defer_connection -net {VDD} -inst_pattern {.*} -pin_pattern {VPB}
add_global_connection -defer_connection -net {GND} -inst_pattern {.*} -pin_pattern {^VSS$} -ground
add_global_connection -defer_connection -net {GND} -inst_pattern {.*} -pin_pattern {^VSSE$}
add_global_connection -defer_connection -net {GND} -inst_pattern {.*} -pin_pattern {VGND}
add_global_connection -defer_connection -net {GND} -inst_pattern {.*} -pin_pattern {VNB}
global_connect
####################################
# voltage domains
####################################
set_voltage_domain -name {CORE} -power {VDD} -ground {GND}
####################################
# standard cell grid
####################################
define_pdn_grid -name {grid} -voltage_domains {CORE}
add_pdn_stripe -grid {grid} -layer {MET1} -width {0.48} -pitch {5.44} -offset {0} -followpins
add_pdn_stripe -grid {grid} -layer {MET4} -width {1.600} -pitch {27.140} -offset {13.570}
add_pdn_stripe -grid {grid} -layer {MET5} -width {1.600} -pitch {27.200} -offset {13.600}
add_pdn_connect -grid {grid} -layers {MET1 MET4}
add_pdn_connect -grid {grid} -layers {MET4 MET5}
####################################
# macro grids
####################################
####################################
# grid for: CORE_macro_grid_1
####################################
define_pdn_grid -name {CORE_macro_grid_1} -voltage_domains {CORE} -macro -orient {R0 R180 MX MY} -halo {2.0 2.0 2.0 2.0} -default -grid_over_boundary
add_pdn_connect -grid {CORE_macro_grid_1} -layers {MET4 MET5}
####################################
# grid for: CORE_macro_grid_2
####################################
define_pdn_grid -name {CORE_macro_grid_2} -voltage_domains {CORE} -macro -orient {R90 R270 MXR90 MYR90} -halo {2.0 2.0 2.0 2.0} -default -grid_over_boundary
add_pdn_connect -grid {CORE_macro_grid_2} -layers {MET4 MET5}
