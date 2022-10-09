# Urban mobility modeling in sumo

## setup
suggested OS is linux
* install sumo from [sourceforge](https://sourceforge.net/projects/sumo/) 
* follow install steps in the readme

## steps
* use python3 $SUMO_HOME/tools/osmWebWizard.py & to clip a map of interest
* $SUMO_HOME/bin/netconvert --osm ../map/Eindhoven.osm.xml
* $SUMO_HOME/bin/polyconvert --net-file ../map/Eindhoven.net.xml --osm-files ../map/Eindhoven.osm.xml  -o ../map/Eindhoven.poly.xml
* python3 $SUMO_HOME/tools/randomTrips.py -n ../map/Eindhoven.net.xml -r ../map/Eindhoven.rou.xml -o ../map/Eindhoven.trips.xml -e 600 -p 0.5 --validate

* $SUMO_HOME/bin/sumo-gui & 
