#!/bin/bash
sudo openvt -c 7 -s -f clear
sudo su osmc -c "sh /home/osmc/vnc-client/vnc_watchdog.sh &" &
#sudo echo $1 $2 > /home/osmc/debug.txt &
sudo su osmc -c "nohup openvt -c 7 -f -s sh /home/osmc/vnc-client/vnc_ip_server.sh "$1" "$2" " &
sudo su -c "systemctl stop mediacenter &" &

exit
