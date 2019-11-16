#!/bin/bash
#wait untill medicenter has shutdown
#sudo echo $1 $2 > /home/osmc/debug2.txt &
sleep 5
#changeing resolution on Framebuffer, if you wanna change this you have to edit
# sudo nano /root/.directfbrc
# too
sudo su root -c "fbset -xres 1280"
sudo su root -c "fbset -yres 1024"
sudo su root -c "fbset -vxres 1280"
sudo su root -c "fbset -vyres 1024"
#If your connectio is 192.168.1.114 port 5901 and password "qwerty123456"
# your line should be like this:
# directvnc 192.168.1.114:1 -p qwerty123456 -m do_not_change_this &"
sudo su root -c "directvnc "$1" -p "$2" -m do_not_change_this &" &
exit
