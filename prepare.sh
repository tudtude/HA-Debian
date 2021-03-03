#!/bin/sh

echo "------------------ Install basic require ------------------"
apt-get install -y  software-properties-common apparmor-utils apt-transport-https ca-certificates dbus jq network-manager gnupg2 htop


echo "------------------ Install docker ------------------"
curl -fsSL https://download.docker.com/linux/debian/gpg | sudo apt-key add -
add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/debian $(lsb_release -cs) stable"
apt update
apt install -y docker-ce-cli=5:19.03.14~3-0~debian-buster && apt install -y docker-ce=5:19.03.14~3-0~debian-buster

echo "------------------ Remove unused ------------------"
systemctl disable ModemManager
systemctl stop ModemManager

echo "------------------ Install Home Assistant ------------------"
curl -sL "https://raw.githubusercontent.com/Kanga-Who/home-assistant/master/supervised-installer.sh" | bash 

echo "------------------ update and clear  ------------------"
apt-mark hold docker-ce docker-ce-cli containerd.io
apt update && sudo apt upgrade -y && sudo apt autoremove –y

