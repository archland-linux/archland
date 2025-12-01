#!/bin/bash

echo "Install build tools"
sudo pacman -S --needed --noconfirm base-devel

echo "Adding Chaotic-AUR repository"
sudo pacman-key --recv-key 3056513887B78AEB --keyserver keyserver.ubuntu.com
sudo pacman-key --lsign-key 3056513887B78AEB
sudo pacman -U 'https://cdn-mirror.chaotic.cx/chaotic-aur/chaotic-keyring.pkg.tar.zst' --noconfirm
sudo pacman -U 'https://cdn-mirror.chaotic.cx/chaotic-aur/chaotic-mirrorlist.pkg.tar.zst' --noconfirm
sudo cp -f $ARCHLAND_PATH/pre-flight/pacman.conf /etc/pacman.conf

echo "Updating package database"
sudo pacman -Syu --noconfirm
