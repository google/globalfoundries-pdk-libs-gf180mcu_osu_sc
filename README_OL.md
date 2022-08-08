<h4>Note:</h4>

These scripts for synthesis + pnr are still not up to date.  Please
excuse our appearance until we get them correct.  It should take
another week or so.

4 August 2022

<h4>Synthesis and Place-and-Route with OpenLane</h4>

To run through the OpenLane flow, the following steps have to be done: <BR>
1.) Make sure Docker is installed. If so, skip to step 4. Otherwise, follow steps 2 and 3. <BR>
2.) Follow the instructions [here](https://docs.docker.com/engine/install/ubuntu/#install-using-the-convenience-script) <BR>
3.) Follow the instructions [here](https://docs.docker.com/engine/security/rootless/#install) <BR>
4.) `git submodule update --init --recursive` <BR>
5.) `cd OpenLane` <BR>
6.) `make pull-openlane` <BR>
7.) `make pdk` <BR>
8.) `cd ../OpenLane_example` <BR>
9.) `./run_openlane.sh` <BR>
10.) The flow's output will be found under `OpenLane_example/runs` <BR>

