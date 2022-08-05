<h4>Note:</h4>

These scripts for synthesis + pnr are still not up to date.  Please
excuse our appearance until we get them correct.  It should take
another week or so.

4 August 2022

<h4>Synthesis and Place-and-Route with OpenLane</h4>

To run through the OpenLane flow, the following steps have to be done: 
1.) Make sure Docker is installed. If so, skip to step 4. Otherwise, follow steps 2 and 3. 
2.) Follow the instructions here 
3.) Follow the instructions here 
4.) git submodule update --init --recursive 
5.) cd OpenLane 
6.) make pull-openlane 
7.) make pdk 
8.) cd ../OpenLane_example 
9.) ./run_openlane.sh 
10.) The flow's output will be found under OpenLane_example/runs 