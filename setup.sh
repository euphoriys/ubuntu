yes | pkg up && yes | pkg install proot-distro && pd install ubuntu
pd login ubuntu -- bash -c "yes | apt update && yes | apt upgrade && yes | apt install sudo nano adduser"
pd login ubuntu -- bash -c "adduser --gecos '' --disabled-password 'onuralp' && echo 'onuralp:onuralp' | chpasswd && usermod -aG sudo onuralp && echo 'onuralp ALL=(ALL:ALL) NOPASSWD: ALL' > /etc/sudoers.d/onuralp && sudo chmod 0440 /etc/sudoers.d/onuralp"
pd login ubuntu -- bash -c "su - onuralp -c 'yes | sudo apt install xfce4 xfce4-goodies -y'"
