# HA-Debian-Pi4
วิธีการติดตั้ง Home assistant บน Raspbery pi4 os Debain 10 Buster 

## ของที่ต้องมี
- Raspbery pi4
- Internet
- Memory card อย่างน้อย 16 Gb


## ขั้นตอน
1) Download Debian 10 for pi4 from link https://raspi.debian.net/tested-images/
2) Flash image to Memory card by used https://www.balena.io/etcher/
3) login with root ( no password )
4) apt update && apt upgrade -y
5) apt install sudo and apt install curl -y
6) curl -sL "https://raw.githubusercontent.com/tudtude/haDebian/master/prepare.sh" | bash
