import subprocess
import traceback
import shutil
import sys
import os

class extlvs():
	def __init__(self):
		self.layoutpath = '../lib/12T/ngspice/'
		self.sourcepath = '../lib/xschem/spice/'

		self.currentdirectory = os.getcwd()

		os.chdir(self.layoutpath)
		self.files = os.listdir()
		os.chdir(self.currentdirectory)
		self.moveflag = False
		self.enter = True

		if (len(sys.argv) > 1):
			self.cmdlParse(sys.argv)

	def cmdlParse(self, args):
		for i in range(len(args)):
			if '.spice' in args[i]:
				if self.enter:
					self.enter = False
					self.files = []
				self.files.append(args[i])
			if '-move' in args[i]:
				self.moveflag = True
	
	def moveFiles(self):
		names = ['.lvs']
		files = os.listdir()

		for f in files:
			for s in names:
				if s in f and '.swp' not in f:
					if not os.path.exists(s.split(".")[1]):
						os.mkdir(s.split(".")[1])
					shutil.move(f'./{f}', f'./{s.split(".")[1]}/{f}')
	
	def runLVS(self):
		for f in self.files:
			if '.spice' in f and '.swp' not in f:
				print(f'Current lvs file(s): {f}')
				try:
					print(f'Running LVS on {f.split(".")[0]}.')
					subout = subprocess.Popen([f'./runlvs.sh {self.layoutpath}{f} {self.sourcepath}{f}'], shell=True) 
					subout.wait()
					mov = subprocess.Popen([f'mv comp.out {f.split(".")[0]}.lvs.txt'], shell=True)
					mov.wait()
				except Exception:
					print(traceback.print_exc())

if __name__ == '__main__':
	extlvs = extlvs()

	extlvs.runLVS()

	if extlvs.moveflag:
		extlvs.moveFiles()
