#!/bin/bash

# Script by mcobit

# give VNC time to start up
sleep 15

#check inf directvnc is running or not, if not start mediacenter again
while [ true ]; do
        VAR1="$(pgrep directv)"
                if [ ! "$VAR1" ]; then
                        sudo openvt -c 7 -s -f clear
                        sudo su -c "sudo systemctl restart mediacenter &" &
                        exit
                else
                        sleep 5
                fi
done
exit

