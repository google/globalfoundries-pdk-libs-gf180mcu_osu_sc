.PHONY: clean extract

default: extract 

all: default

clean:
	-@rm -f *.spice 
	-@rm -rf ./spice/

extract: 
	python3 extspice.py -move 
