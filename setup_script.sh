#!/bin/bash

# Install curl
sudo apt install curl

# Add Brave Browser repository and install
sudo curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg
echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg] https://brave-browser-apt-release.s3.brave.com/ stable main" | sudo tee /etc/apt/sources.list.d/brave-browser-release.list
sudo apt update
sudo apt install brave-browser

# Remove Firefox via Snap
sudo snap remove firefox

# Install required packages and software
sudo apt install gcc make libsdl2-dev libsdl2-image-dev libsdl2-mixer-dev libsdl2-ttf-dev libjansson-dev gdb valgrind cloc
sudo snap install code --classic
sudo snap install spotify
sudo snap install discord
sudo snap install steam

# Install Neofetch and add to ~/.bashrc
sudo apt install neofetch
echo "neofetch" >> ~/.bashrc

# Configure Git user email and name
git config --global user.email "ryanzmuda@gmail.com"
git config --global user.name "ryan zmuda"

echo "Setup completed!"