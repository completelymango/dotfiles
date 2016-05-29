#!/bin/bash

# Wifi setup: https://bugs.launchpad.net/ubuntu/+source/linux-firmware/+bug/1520343/comments/65
sudo wget -O /lib/firmware/ath10k/QCA6174/hw3.0/board-2.bin https://github.com/kvalo/ath10k-firmware/blob/master/QCA6174/hw3.0/board-2.bin?raw=true
sudo rmmod ath10k_pci ath10k_core
sudo modprobe ath10k_pci
