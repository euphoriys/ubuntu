yes | pkg up && yes | pkg install proot-distro && pd install ubuntu
pd login ubuntu -- bash -c "yes | apt update && yes | apt upgrade && yes | apt install sudo nano adduser"
pd login ubuntu -- bash -c "useradd -m -s /bin/bash -G sudo onuralp && echo 'onuralp:onuralp' | chpasswd && echo 'onuralp ALL=(ALL:ALL) NOPASSWD: ALL'"
pd login ubuntu -- bash -c "su - onuralp -c 'yes | sudo apt install xfce4 xfce4-goodies -y'"
