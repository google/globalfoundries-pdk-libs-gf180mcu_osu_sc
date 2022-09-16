# extspice.py
# Author:  Landon Burleson
# Organization: Oklahoma State University
# E-mail: landon.burleson@okstate.edu
# Description: perform pex at terminal

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
