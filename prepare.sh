#!/bin/sh

echo "------------------ Install basic require ------------------"
apt-get install -y software-properties-common apparmor-utils apt-transport-https ca-certificates dbus jq network-manager htop
systemctl disable ModemManager
systemctl stop ModemManager

echo "------------------ Install docker ------------------"
apt install docker-ce=5:19.03.13~3-0~debian-buster



# echo "------------------ Install Home Assistant ------------------"
# curl -sL "https://raw.githubusercontent.com/Kanga-Who/home-assistant/master/supervised-installer.sh" | bash -s -- -m raspberrypi4-64

# echo "------------------ Clear unused file ------------------"
# apt update && sudo apt upgrade -y && sudo apt autoremove –y

