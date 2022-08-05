ROOT_DIR = `pwd`
DESIGN = "mult_seq"
cd ../OpenLane
./flow.tcl -design ${DESIGN} -init design_config -src "${ROOT_DIR}/src/*.v"
cp ${ROOT_DIR}/*config.tcl designs/${DESIGN}
make quick_run QUICK_RUN_DESIGN=${DESIGN}
cp -r designs/${DESIGN}/runs ${ROOT_DIR}/runs
