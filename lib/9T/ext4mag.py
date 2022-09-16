# ext4mag.py
# Author:  Landon Burleson/James Stine
# Organization: Oklahoma State University
# E-mail: landon.burleson@okstate.edu
# Description: extract info from magic at terminal

import subprocess
import traceback
import shutil
import sys
import os

class Ext4Mag():
	def __init__(self):
		self.files = os.listdir()
		self.move_flag = False
		self.add_params = False
		self.exng = False 
		self.enter = True
		self.cwd = os.getcwd()

		os.chdir('../../char/techfiles/')

		self.pdk_spice = os.getcwd()
		os.chdir(self.cwd)

		if (len(sys.argv) > 1):
			self.cmdl_parse(sys.argv)

	def cmdl_parse(self, args):
		for i in range(len(args)):
			if '.mag' in args[i]:
				if self.enter:
					self.enter = False
					self.files = []
				self.files.append(args[i])
			if '-move' in args[i]:
				self.move_flag = True
			if '-ap' in args[i]:
				self.add_params = True
			if '-ng' in args[i]:
				self.exng = True
				
	
	def move_files(self):
		names = ['.sim', '.spice', '.gds', '.ext', '.cif']
		files = os.listdir()

		for f in files:
			for s in names:
				if s in f and '.magicrc' not in f:
					if not os.path.exists(s.split(".")[1]):
						os.mkdir(s.split(".")[1])
					shutil.move(f'./{f}', f'./{s.split(".")[1]}/{f}')
	
	def run_magic(self):
		for f in self.files:
			if '.mag' in f and '.magicrc' not in f:
				print(f'Current magic file: {f}')
				string='drc off\nextract all\next2sim -y 6\next2spice subcircuit top on\next2spice -F -y 6 -f hspice\next2sim merge aggressive\next2sim -y 6 -R -C -o ' + f.split(".")[0] + '.sim\ncif\ncalma\nquit -noprompt\n'

				try:
					print(f'Extracting files from {f.split(".")[0]}.')
					subout = subprocess.run(['magic -dnull -noconsole ' + str(f) +  ' 1> MAGIC.LOG 2>&1'], shell=True, input=string.encode()) 
				except Exception:
					print(traceback.print_exc())

	def extract_ngspice(self):
		for f in self.files:
			if '.mag' in f and '.magicrc' not in f:
				print(f'Current magic file for ngspice extraction: {f}')
				string='drc off\nextract\next2spice scale off\next2spice subcircuit top off\next2spice -F -y 6 -f ngspice\nquit -noprompt\n'

				try:
					print(f'Extracting files from {f.split(".")[0]}.')
					subout = subprocess.run(['magic -dnull -noconsole ' + str(f) +  ' 1> MAGIC.LOG 2>&1'], shell=True, input=string.encode()) 
				except Exception:
					print(traceback.print_exc())
		
		if ( not os.path.exists('ngspice')):
			os.mkdir('ngspice')

		files = os.listdir()

		for f in files:
			if ((('.spice' in f) or ('.ext' in f)) and (not os.path.isdir(f))):
				shutil.move(f'./{f}', f'./ngspice/{f}')
	
	def add_params_to_spice(self, dir):
		param = f'.inc \"{self.pdk_spice}/design.hspice\"\n.lib \"{self.pdk_spice}/sm141064.hspice\" typical\n\n'

		os.chdir(f'{self.cwd}/{dir}')
		files = os.listdir()

		for f in files:	
			if('.swp' in f):
				continue
			with open(f, 'r+') as out:
				lines = out.readlines()

				lines.insert(2, param)

				out.seek(0) #Sets the first line as the current location of the file ready to overwrite.

				for line in lines:
					out.write(line)
		os.chdir(self.cwd)
	
	def label_adjust(self): #This function adjusts the cell labels to only reside on the metal 2 layer. Possible future iterations may not need this function.
		files = os.listdir()
  
		for f in files:
			if (('.mag' in f) and ('.swp' not in f) and ('.swo' not in f)):
				print(f'Current magic file: {f}')
				with open(f, 'r+') as out: 
					lines = out.readlines()
					for i, line in enumerate(lines):
						if ('rlabel via1' in line):
							print(f'Replacing label rlabel via1 in {f} on line {i}')
							newline = line
							newline = newline.replace('rlabel via1', 'rlabel metal2')
							lines[i] = newline
						else:
							continue

					out.seek(0)

					for line in lines:
						out.write(line)

if __name__ == '__main__':
	ext4mag = Ext4Mag()

	ext4mag.label_adjust()
	ext4mag.run_magic()

	if ext4mag.move_flag:
		ext4mag.move_files()

	if ext4mag.exng:
		ext4mag.extract_ngspice()

	if ext4mag.add_params:
		ext4mag.add_params_to_spice('spice')
		ext4mag.add_params_to_spice('ngspice')
