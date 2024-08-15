yes | pkg up
pkg install proot-distro -y && pd install ubuntu
pd sh ubuntu -- sh -c "yes | apt update && yes | apt upgrade"
pd sh ubuntu -- sh -c "apt install sudo nano -y"
pd sh ubuntu -- sh -c 'useradd -m -s /bin/bash onuralp && echo "onuralp:onuralp" | chpasswd'
pd sh ubuntu -- sh -c 'usermod -aG sudo onuralp && echo "onuralp ALL=(ALL:ALL) NOPASSWD:ALL" > /etc/sudoers.d/onuralp'