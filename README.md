# HA-Debian-Pi4
Installation Home Assitstant on Raspberry PI4 os Debain 10 Buster 

## Requirement
- Raspbery pi4
- Internet
- Memory card > 16Gb 

## Step
### 1) Install Home Assistant base
1) Download Debian 10 Buster for Raspberry PI4 from link https://raspi.debian.net/tested-images/
2) Flash image to Memory card by used https://www.balena.io/etcher/
3) login with root ( no password )
4) apt update && apt upgrade -y
5) apt install sudo and apt install curl -y
6) curl -sL "https://raw.githubusercontent.com/tudtude/haDebian/pi4/prepare.sh" | bash

### 2) Install OpenVpn
1) sudo apt install openvpn
2) *** Get openvpn file form supplier ***
3) sudo cp /home/username/username.ovpn /etc/openvpn/username.conf
4) sudo systemctl enable openvpn@username
5) sudo systemctl start openvpn@username

### 3) Install HACS
1) wget -q -O - https://hacs.xyz/install | bash -
2) Reboot
3) Configuration -> Integrations -> Add Integration -> HACS
4) Following UI instructions
