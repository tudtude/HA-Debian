#!/bin/sh

echo "------------------ Update ------------------"
apt update && apt upgrade -y

echo "------------------ Install sudo ------------------"
apt install sudo -y

echo "------------------ Install basic require ------------------"
apt-get install -y software-properties-common apparmor-utils apt-transport-https ca-certificates curl dbus jq network-manager htop
systemctl disable ModemManager
systemctl stop ModemManager

echo "------------------ Install docker ------------------"
curl -fsSL get.docker.com | sh

# echo "------------------ Install Home Assistant ------------------"
# curl -sL "https://raw.githubusercontent.com/Kanga-Who/home-assistant/master/supervised-installer.sh" | bash -s -- -m raspberrypi4-64

# echo "------------------ Clear unused file ------------------"
# apt update && sudo apt upgrade -y && sudo apt autoremove –y

