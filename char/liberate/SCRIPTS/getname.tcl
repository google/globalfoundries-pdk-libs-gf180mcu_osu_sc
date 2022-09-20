#!/usr/bin/tclsh
puts "gf180mcu_$env(VARIANT)_$env(CORNER)_[string map {. P} $env(VLTG)]_$env(TEMP)C[string map {- . " " ""} $env(ARGS)]"
