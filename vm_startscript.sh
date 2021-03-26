#!/bin/bash
echo "This is a VirtualBox shellscript for setting up new VirtualBox VMs!"
echo "It will install the VirtualBox guest additions and optional packages."
read -p "Press enter to continue"
sudo apt-get update && sudo apt-get upgrade
sudo apt-get install virtualbox-guest-dkms virtualbox-guest-utils virtualbox-guest-x11
echo "Guest additions have been installed!"
echo ""
# Add whatever packages you want to install
while true; do
    read -p "Do you wish to install helpful optional programs? " yn
    case $yn in
        [Yy]* ) sudo apt-get install neofetch htop net-tools; break;;
        [Nn]* ) exit;;
        * ) echo "Please answer yes or no.";;
    esac
done
echo ""
echo "Optional programs have been installed!"
echo "It is recommended to reboot in order to use every newly installed feature properly."
while true; do
    read -p "Do you want to reboot? " yn
    case $yn in
        [Yy]* ) sudo reboot; break;;
        [Nn]* ) exit;;
        * ) echo "Please answer yes or no.";;
    esac
done
