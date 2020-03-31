#!/bin/bash
#
# This shell script will install the most recent Folding @ Home CLI application on your Debian/Ubuntu/Mint machine.
#
# For documentation: 
# FAHClient --help.
#
# To configure: FAHClient --configure
# ./FAHClient or FAHClient
#
# Must be in home directory to run:
# FAHClient --configure	// type "FAHClient" to run and start accepting Folding(at)Home WU's (Work Unit's).					
#
# To simply get started:
# ./FAHClient --user=Anonymous --team=0 --passkey=123passphrasehere321 --gpu=false --smp=true																			

wget https://download.foldingathome.org/releases/public/release/fahclient/debian-stable-64bit/v7.5/fahclient_7.5.1_amd64.deb
wget https://download.foldingathome.org/releases/public/release/fahcontrol/debian-stable-64bit/v7.5/fahcontrol_7.5.1-1_all.deb
wget https://download.foldingathome.org/releases/public/release/fahviewer/debian-stable-64bit/v7.5/fahviewer_7.5.1_amd64.deb
sudo dpkg -i --force-depends fahclient_7.5.1_amd64.deb
sudo dpkg -i --force-depends fahviewer_7.5.1_amd64.deb
sudo dpkg -i --force-depends fahcontrol_7.5.1-1_all.deb

# Complete.  The FAHClient is now installed and running as a service.
# Manage, monitor and update settings using the FAHControl.
