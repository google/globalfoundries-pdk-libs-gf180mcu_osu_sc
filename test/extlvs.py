#!/usr/bin/env python
# -*- coding: utf-8 -*-
# extlvs.py
# Author:  Landon Burleson
# Organization: Oklahoma State University
# E-mail: landon.burleson@okstate.edu
# Description: perform lvs at terminal

# Copyright 2022 Oklahoma State University
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License. 

"""Script Description
	This script performs LVS (Layout vs Schematic) on the spice decks extracted using the ext4mag and extspice scripts in the 
	magic and xschem subdirectories of lib, respectively. 
	
	Use the following terminal command format to run LVS on all designs:
	python3 extlvs.py

	If desired, all output lvs files will be moved to the 'comp'
	subdirectory with the following format:
	python3 extlvs.py -move

	Please modify the paths of the layout and source files appropriately inside of the
	initialization constructor in the ExtLVS class below.
"""
import subprocess
import traceback
import shutil
import sys
import os

class ExtLVS():
	def __init__(self):
		self.layout_path = '../lib/12T/ngspice/'
		self.source_path = '../lib/xschem/spice/'

		self.current_directory = os.getcwd()

		os.chdir(self.layout_path)
		self.files = os.listdir()
		os.chdir(self.current_directory)
		self.move_flag = False
		self.enter = True

		if (len(sys.argv) > 1):
			self.cmdl_parse(sys.argv)

	def cmdl_parse(self, args):
		for i in range(len(args)):
			if '.spice' in args[i]:
				if self.enter:
					self.enter = False
					self.files = []
				self.files.append(args[i])
			if '-move' in args[i]:
				self.move_flag = True
	
	def move_files(self):
		names = ['.lvs']
		files = os.listdir()

		for f in files:
			for s in names:
				if s in f and '.swp' not in f:
					if not os.path.exists(s.split(".")[1]):
						os.mkdir(s.split(".")[1])
					shutil.move(f'./{f}', f'./{s.split(".")[1]}/{f}')
	
	def run_lvs(self):
		for f in self.files:
			if '.spice' in f and '.swp' not in f:
				print(f'Current lvs file(s): {f}')
				try:
					print(f'Running LVS on {f.split(".")[0]}.')
					subout = subprocess.Popen([f'./runlvs.sh {self.layout_path}{f} {self.source_path}{f}'], shell=True) 
					subout.wait()
					mov = subprocess.Popen([f'mv comp.out {f.split(".")[0]}.lvs.txt'], shell=True)
					mov.wait()
				except Exception:
					print(traceback.print_exc())

if __name__ == '__main__':
	extlvs = ExtLVS()

	extlvs.run_lvs()

	if extlvs.move_flag:
		extlvs.move_files()
