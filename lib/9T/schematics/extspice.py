#!/usr/bin/env python
# -*- coding: utf-8 -*-

# extspice.py
# Author:  Landon Burleson
# Organization: Oklahoma State University
# E-mail: landon.burleson@okstate.edu
# Description: perform pex at terminal

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
	This script performs spice extraction from the xschem documents. The extracted spice
	files are used to perform lvs comparison between the xschem spice files and the magic spice
	files.
	
	Use the following terminal command format to extract spice files:
	python3 extspice.py

	If desired, all spice files extracted from the xschem files will be moved to the 'spice'
	subdirectory with the following format:
	python3 extspice.py -move

	Note: This script is intended to be used inside of the xschem schematic library directory.
"""
import subprocess
import traceback
import shutil
import sys
import os

class ExtSpice():
	def __init__(self):
		self.files = os.listdir()
		self.move_flag = False
		self.enter = True

		if (len(sys.argv) > 1):
			self.cmdl_parse(sys.argv)

	def cmdl_parse(self, args):
		for i in range(len(args)):
			if '.sch' in args[i]:
				if self.enter:
					self.enter = False
					self.files = []
				self.files.append(args[i])
			if '-move' in args[i]:
				self.move_flag = True
	
	def move_files(self):
		names = ['.spice']
		files = os.listdir()

		for f in files:
			for s in names:
				if s in f and '.swp' not in f:
					if not os.path.exists(s.split(".")[1]):
						os.mkdir(s.split(".")[1])
					shutil.move(f'./{f}', f'./{s.split(".")[1]}/{f}')
	
	def run_xschem(self):
		for f in self.files:
			if '.sch' in f and '.swp' not in f:
				print(f'Current schematic file: {f}')
				try:
					print(f'Extracting spice from {f.split(".")[0]}.')
					subout = subprocess.Popen([f'xschem -n -o . ./{f} -q'], shell=True) 
					subout.wait()
				except Exception:
					print(traceback.print_exc())

if __name__ == '__main__':
	extspice = ExtSpice()

	extspice.run_xschem()

	if extspice.move_flag:
		extspice.move_files()
