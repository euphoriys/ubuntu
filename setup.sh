yes | pkg up
pkg install proot-distro x11-repo virglrenderer-android wget -y
pkg install termux-x11-nightly pulseaudio -y 
pd install ubuntu && pd sh ubuntu -- sh -c "yes | apt update && yes | apt upgrade"
pd sh ubuntu -- sh -c "apt install sudo nano -y"
pd sh ubuntu -- sh -c 'useradd -m -s /bin/bash euphoriys && echo "euphoriys:euphoriys" | chpasswd'
pd sh ubuntu -- sh -c 'usermod -aG sudo euphoriys && echo "euphoriys ALL=(ALL:ALL) NOPASSWD:ALL" > /etc/sudoers.d/euphoriys'
pd sh ubuntu -- sh -c "sudo apt install xfce4"
wget https://raw.githubusercontent.com/euphoriys/ubuntu/main/ubuntu && mv ubuntu ../usr/bin/ubuntu && chmod +x ../usr/bin/ubuntu
