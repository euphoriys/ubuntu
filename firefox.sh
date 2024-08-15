#!/bin/bash

pd sh ubuntu -- sh -c "sudo apt install software-properties-common"
pd sh ubuntu -- sh -c "sudo add-apt-repository ppa:mozillateam/ppa"
pd sh ubuntu -- sh -c '
echo "
Package: *
Pin: release o=LP-PPA-mozillateam
Pin-Priority: 1001
Package: firefox
Pin: version 1:1snap*
Pin-Priority: -1
" | sudo tee /etc/apt/preferences.d/mozilla-firefox'
pd sh ubuntu -- sh -c "sudo apt install firefox"
pd sh ubuntu -- sh -c 'echo "Unattended-Upgrade::Allowed-Origins:: \"LP-PPA-mozillateam:${distro_codename}\";" | sudo tee /etc/apt/apt.conf.d/51unattended-upgrades-firefox'
