#!/bin/bash
yes | pkg up
pkg install proot-distro -y
pkg install x11-repo -y
pkg install termux-x11-nightly -y
pkg install virglrenderer-android -y
pkg install pulseaudio -y
pkg install tmux -y
pkg install wget -y
pd install ubuntu && pd sh ubuntu -- sh -c "yes | apt update && yes | apt upgrade"
pd sh ubuntu -- sh -c "apt install sudo nano -y"
pd sh ubuntu -- sh -c 'useradd -m -s /bin/bash euphoriys && echo "euphoriys:euphoriys" | chpasswd'
pd sh ubuntu -- sh -c 'usermod -aG sudo euphoriys && echo "euphoriys ALL=(ALL:ALL) NOPASSWD:ALL" > /etc/sudoers.d/euphoriys'
pd sh ubuntu -- sh -c "sudo apt install xfce4 -y"
wget https://raw.githubusercontent.com/euphoriys/ubuntu/main/ubuntu && mv ubuntu ../usr/bin/ubuntu && chmod +x ../usr/bin/ubuntu
