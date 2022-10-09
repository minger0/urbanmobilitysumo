# first install sumo, following its readme
# use python3 $SUMO_HOME/tools/osmWebWizard.py & to clip a map of interest
netconvert --osm ~/shared_mobility_Eindhoven/map/Eindhoven.osm.xml
polyconvert --net-file ../map/Eindhoven.net.xml --osm-files ../map/Eindhoven.osm.xml  -o ../map/Eindhoven.poly.xml
python3 tools/randomTrips.py -n ./Eindhoven.net.xml -r Eindhoven.rou.xml -o Eindhoven.trips.xml -e 600 -p 0.5 --validate
bin/sumo-gui &

