.PHONY: clean extract_all 

default: extract_all 

all: default

clean:
	-@rm -f *.cif *.sim *.gds *.ext *.spice 
	-@rm -rf ./cif/ ./sim/ ./gds/ ./ext/ ./spice/ ./ngspice/
	-@rm MAGIC.LOG
	-@rm log.txt

extract_all: 
	python3 ext4mag.py -move -ap -ng
