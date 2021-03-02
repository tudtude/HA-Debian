# HA-Debian-Pi4
Installation Home Assitstant on Raspberry PI4 os Debain 10 Buster 

## Requirement
- Raspbery pi4
- Internet
- Memory card > 16Gb 

## Step
### Install Home Assistant base
1) Download Debian 10 Buster for Raspberry PI4 from link https://raspi.debian.net/tested-images/
2) Flash image to Memory card by used https://www.balena.io/etcher/
3) login with root ( no password )
4) apt update && apt upgrade -y
5) apt install sudo and apt install curl -y
6) curl -sL "https://raw.githubusercontent.com/tudtude/haDebian/master/prepare.sh" | bash
