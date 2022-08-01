SHELL:=csh

# Valid ARGS:
# -gui
# -extract
# -noexit
# -debug (gui + noexit)

VARIANT:=12T
TRACKS:=$(firstword $(subst _, ,${VARIANT}))

.PHONY: do clean

do:
	@sed -i 's/12T/${VARIANT}/g' lef_gen
	@sed -i 's/12T/${VARIANT}/g' abstract_SKILL_script
	@sed -i 's/12T/${TRACKS}/g' abstract_SKILL_script
	@./clean_all
	@setenv VARIANT ${VARIANT}; \
	./lef_gen $(ARGS)
	@sed -i 's/${VARIANT}/12T/g' lef_gen
	@sed -i 's/${VARIANT}/12T/g' abstract_SKILL_script
	@sed -i 's/${TRACKS}/12T/g' abstract_SKILL_script
	@cp *.lef* ../techfiles

clean:
	@./clean_all
