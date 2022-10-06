# Process node
export PROCESS = 180

#-----------------------------------------------------
# Tech/Libs
# ----------------------------------------------------
export TECH_LEF = $(PLATFORM_DIR)/lef/gf180mcu_5LM_1TM_9K_11t.tlef
export SC_LEF = $(PLATFORM_DIR)/lef/gf180mcu_osu_sc_12T.lef

export LIB_FILES = $(PLATFORM_DIR)/lib/gf180mcu_12T_TT_3P3_25C_ccs.lib\
                     $(ADDITIONAL_LIBS)
export GDS_FILES = $(wildcard $(PLATFORM_DIR)/gds/*.gds)\
                     $(ADDITIONAL_GDS_FILES)

# Dont use cells to ease congestion
# Specify at least one filler cell if none

# The *probe* are for inserting probe points and have metal shapes
# on all layers.
# *lpflow* cells are for multi-power domains
#export DONT_USE_CELLS += \
#   sky130_fd_sc_hd__probe_p_8 sky130_fd_sc_hd__probec_p_8 \
#   sky130_fd_sc_hd__lpflow_bleeder_1 \
#   sky130_fd_sc_hd__lpflow_clkbufkapwr_1 \
#   sky130_fd_sc_hd__lpflow_clkbufkapwr_16 \
#   sky130_fd_sc_hd__lpflow_clkbufkapwr_2 \
#   sky130_fd_sc_hd__lpflow_clkbufkapwr_4 \
#   sky130_fd_sc_hd__lpflow_clkbufkapwr_8 \
#   sky130_fd_sc_hd__lpflow_clkinvkapwr_1 \
#   sky130_fd_sc_hd__lpflow_clkinvkapwr_16 \
#   sky130_fd_sc_hd__lpflow_clkinvkapwr_2 \
#   sky130_fd_sc_hd__lpflow_clkinvkapwr_4 \
#   sky130_fd_sc_hd__lpflow_clkinvkapwr_8 \
#   sky130_fd_sc_hd__lpflow_decapkapwr_12 \
#   sky130_fd_sc_hd__lpflow_decapkapwr_3 \
#   sky130_fd_sc_hd__lpflow_decapkapwr_4 \
#   sky130_fd_sc_hd__lpflow_decapkapwr_6 \
#   sky130_fd_sc_hd__lpflow_decapkapwr_8 \
#   sky130_fd_sc_hd__lpflow_inputiso0n_1 \
#   sky130_fd_sc_hd__lpflow_inputiso0p_1 \
#   sky130_fd_sc_hd__lpflow_inputiso1n_1 \
#   sky130_fd_sc_hd__lpflow_inputiso1p_1 \
#   sky130_fd_sc_hd__lpflow_inputisolatch_1 \
#   sky130_fd_sc_hd__lpflow_isobufsrc_1 \
#   sky130_fd_sc_hd__lpflow_isobufsrc_16 \
#   sky130_fd_sc_hd__lpflow_isobufsrc_2 \
#   sky130_fd_sc_hd__lpflow_isobufsrc_4 \
#   sky130_fd_sc_hd__lpflow_isobufsrc_8 \
#   sky130_fd_sc_hd__lpflow_isobufsrckapwr_16 \
#   sky130_fd_sc_hd__lpflow_lsbuf_lh_hl_isowell_tap_1 \
#   sky130_fd_sc_hd__lpflow_lsbuf_lh_hl_isowell_tap_2 \
#   sky130_fd_sc_hd__lpflow_lsbuf_lh_hl_isowell_tap_4 \
#   sky130_fd_sc_hd__lpflow_lsbuf_lh_isowell_4 \
#   sky130_fd_sc_hd__lpflow_lsbuf_lh_isowell_tap_1 \
#   sky130_fd_sc_hd__lpflow_lsbuf_lh_isowell_tap_2 \
#   sky130_fd_sc_hd__lpflow_lsbuf_lh_isowell_tap_4

# Define fill cells
export FILL_CELLS = gf180mcu_osu_sc_12T_fill_1 gf180mcu_osu_sc_12T_fill_16 gf180mcu_osu_sc_12T_fill_2 gf180mcu_osu_sc_12T_fill_4 gf180mcu_osu_sc_12T_fill_8
# -----------------------------------------------------
#  Yosys
#  ----------------------------------------------------
# Set the TIEHI/TIELO cells
# These are used in yosys synthesis to avoid logical 1/0's in the netlist
export TIEHI_CELL_AND_PORT = gf180mcu_osu_sc_12T_tiehi HI
export TIELO_CELL_AND_PORT = gf180mcu_osu_sc_12T_tielo LO

# Used in synthesis
export MIN_BUF_CELL_AND_PORTS = gf180mcu_osu_sc_12T_buf_1 A Y

# Yosys mapping files
#export LATCH_MAP_FILE = $(PLATFORM_DIR)/cells_latch_hd.v
# export CLKGATE_MAP_FILE = $(PLATFORM_DIR)/cells_clkgate_hd.v
# export ADDER_MAP_FILE ?= $(PLATFORM_DIR)/cells_adders_hd.v
#
# Define ABC driver and load
export ABC_DRIVER_CELL = gf180mcu_osu_sc_12T_buf_1
export ABC_LOAD_IN_FF = 1
# Set yosys-abc clock period to first "clk_period" value or "-period" value found in sdc file
export ABC_CLOCK_PERIOD_IN_PS ?= $(shell sed -nr "s/^set clk_period (.+)|.* -period (.+) .*/\1\2/p" $(SDC_FILE) | head -1 | awk '{print $$1*1000}')
#--------------------------------------------------------
# Floorplan
# -------------------------------------------------------

# Placement site for core cells
# This can be found in the technology lef
# export PLACE_SITE = unithd

# IO Placer pin layers
export IO_PLACER_H = MET3
export IO_PLACER_V = MET2

# Define default PDN config
export PDN_TCL ?= $(PLATFORM_DIR)/pdn.tcl

# Endcap and Welltie cells
#export TAPCELL_TCL = $(PLATFORM_DIR)/tapcell.tcl

export MACRO_PLACE_HALO ?= 40 40
export MACRO_PLACE_CHANNEL ?= 80 80

#---------------------------------------------------------
# Place
# --------------------------------------------------------
# default cell padding for cells 
export CELL_PAD_IN_SITES_GLOBAL_PLACEMENT ?= 1
export CELL_PAD_IN_SITES_DETAIL_PLACEMENT ?= 0
#

export PLACE_DENSITY ?= 0.60

# Cell padding in SITE widths to ease rout-ability
export CELL_PAD_IN_SITES ?= 4
# 
# --------------------------------------------------------
#  CTS
#  -------------------------------------------------------
# TritonCTS options
# export CTS_BUF_CELL   ?= gf180mcu_osu_sc_12T_buf_1

# ---------------------------------------------------------
#  Route
# ---------------------------------------------------------
# FastRoute options
export MIN_ROUTING_LAYER = MET1
export MAX_ROUTING_LAYER = MET5
#
# Define fastRoute tcl
export FASTROUTE_TCL ?= $(PLATFORM_DIR)/fastroute.tcl

# KLayout technology file
#export KLAYOUT_TECH_FILE = $(PLATFORM_DIR)/$(PLATFORM).lyt
#
# Rules for metal fill
export FILL_CONFIG = $(PLATFORM_DIR)/fill.json
#
# Template definition for power grid analysis
export TEMPLATE_PGA_CFG ?= $(PLATFORM_DIR)/template_pga.cfg

# OpenRCX extRules
#export RCX_RULES = $(PLATFORM_DIR)/rcx_patterns.rules

# ---------------------------------------------------------
#  IR Drop
# ---------------------------------------------------------

# IR drop estimation supply net name to be analyzed and supply voltage variable
# For multiple nets: PWR_NETS_VOLTAGES  = "VDD1 1.8 VDD2 1.2"
export PWR_NETS_VOLTAGES  ?= "VDD 3.3"
export GND_NETS_VOLTAGES  ?= "VSS 0.0"
export IR_DROP_LAYER ?= MET1
