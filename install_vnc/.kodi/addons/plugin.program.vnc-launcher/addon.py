"""
    Plugin for Launching programs
"""

# -*- coding: UTF-8 -*-
# main imports
import sys
import os
import xbmc
import xbmcgui
import xbmcaddon
import subprocess

# plugin constants
__plugin__ = "vnc-launcher"
__author__ = "jcnventura"
__url__ = "http://blog.petrockblock.com/retropie/"
__git_url__ = "https://github.com/mcobit/retrosmc/"
__credits__ = "mcobit"
__version__ = "0.0.2"

kdialog = xbmcgui.Dialog()
addon = xbmcaddon.Addon(id='plugin.program.vnc-launcher')
#keyboard = xbmc.Keyboard("", "Enter server IP", False)
#keyboard.doModal()
myip = xbmc.getIPAddress()
newserverip = kdialog.numeric(3, "Enter server IP", myip)

keypass = xbmc.Keyboard("", "Enter password", True)
keypass.doModal()

if newserverip != "":
   servip = newserverip
if keypass.isConfirmed() and keypass.getText() != "":
   servpass = keypass.getText()

subprocess.Popen('/home/osmc/vnc-client/vncstart2.sh %s %s' % (str(servip),str(servpass)), shell = True)

