#!/bin/bash
sudo apt install ufw -y
sudo ufw allow 22
sudo ufw allow 3000/tcp
echo y | sudo ufw enable
wget -q https://github.com/cloudflare/cloudflared/releases/latest/download/cloudflared-linux-amd64.deb
sudo dpkg -i cloudflared-linux-amd64.deb
