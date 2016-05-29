#!/bin/bash

# Wifi setup: https://bugs.launchpad.net/ubuntu/+source/linux-firmware/+bug/1520343/comments/65
sudo wget -O /lib/firmware/ath10k/QCA6174/hw3.0/board-2.bin https://github.com/kvalo/ath10k-firmware/blob/master/QCA6174/hw3.0/board-2.bin?raw=true
sudo rmmod ath10k_pci ath10k_core
sudo modprobe ath10k_pci

#glxinfo
sudo apt-get install mesa-utils

#glxinfo and lspci will fail until kernel gets updated
wget http://kernel.ubuntu.com/%7Ekernel-ppa/mainline/v4.6-rc7-wily/linux-headers-4.6.0-040600rc7-generic_4.6.0-040600rc7.201605081830_amd64.deb
wget http://kernel.ubuntu.com/%7Ekernel-ppa/mainline/v4.6-rc7-wily/linux-headers-4.6.0-040600rc7_4.6.0-040600rc7.201605081830_all.deb
wget http://kernel.ubuntu.com/%7Ekernel-ppa/mainline/v4.6-rc7-wily/linux-image-4.6.0-040600rc7-generic_4.6.0-040600rc7.201605081830_amd64.deb
sudo dpkg -i linux*
