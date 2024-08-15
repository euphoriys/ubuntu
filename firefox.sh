#!/bin/bash

# Remove outdated configuration files
sudo rm -f /etc/apt/sources.list.d/firefox-ubuntu.list
sudo rm -f /etc/apt/preferences.d/99bionic-updates

# Add the Mozilla PPA and disable the Firefox Snap package
sudo add-apt-repository ppa:mozillateam/ppa -y

# Configure APT to prioritize Firefox from the PPA
echo 'Package: firefox*
Pin: release o=LP-PPA-mozillateam
Pin-Priority: 1000

Package: firefox*
Pin: release o=Ubuntu*
Pin-Priority: -1' | sudo tee /etc/apt/preferences.d/firefox >/dev/null

# Allow unattended upgrades for Firefox from the PPA
echo 'Unattended-Upgrade::Allowed-Origins:: "LP-PPA-mozillateam:$(lsb_release -sc)";' | sudo tee /etc/apt/apt.conf.d/51unattended-upgrades-firefox >/dev/null

# Install or upgrade Firefox from the PPA
sudo apt update
sudo apt install --only-upgrade --allow-downgrades firefox -y
