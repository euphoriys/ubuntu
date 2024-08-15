yes | pkg up
pkg install proot-distro x11-repo termux-x11-nightly pulseaudio virglrenderer-android wget -y 
pd install ubuntu && pd sh ubuntu -- sh -c "yes | apt update && yes | apt upgrade"
pd sh ubuntu -- sh -c "apt install sudo nano -y"
pd sh ubuntu -- sh -c 'useradd -m -s /bin/bash euphoriys && echo "euphoriys:euphoriys" | chpasswd'
pd sh ubuntu -- sh -c 'usermod -aG sudo euphoriys && echo "euphoriys ALL=(ALL:ALL) NOPASSWD:ALL" > /etc/sudoers.d/euphoriys'
pd sh ubuntu -- sh -c "sudo apt install xfce4"
