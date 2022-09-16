# extlvs.py
# Author:  Landon Burleson
# Organization: Oklahoma State University
# E-mail: landon.burleson@okstate.edu
# Description: perform lvs at terminal

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
