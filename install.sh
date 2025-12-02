#!/bin/bash

clear
echo """
 █████╗ ██████╗  ██████╗██╗  ██╗██╗      █████╗ ███╗   ██╗██████╗ 
██╔══██╗██╔══██╗██╔════╝██║  ██║██║     ██╔══██╗████╗  ██║██╔══██╗
███████║██████╔╝██║     ███████║██║     ███████║██╔██╗ ██║██║  ██║
██╔══██║██╔══██╗██║     ██╔══██║██║     ██╔══██║██║╚██╗██║██║  ██║
██║  ██║██║  ██║╚██████╗██║  ██║███████╗██║  ██║██║ ╚████║██████╔╝
╚═╝  ╚═╝╚═╝  ╚═╝ ╚═════╝╚═╝  ╚═╝╚══════╝╚═╝  ╚═╝╚═╝  ╚═══╝╚═════╝ 
"""

echo "Starting Archland Linux installation..."

echo "Updating package database and installing git..."
sudo pacman -Syu --noconfirm --needed git

echo "Cloning Archland installation scripts..."
if [ -z "$ARCHLAND_PATH" ]; then
    export ARCHLAND_PATH=$(mktemp -d /tmp/archland-XXXXXX)
fi
git clone https://github.com/archland-linux/archland.git $ARCHLAND_PATH

echo "Running pre-flight installation script..."
source $ARCHLAND_PATH/pre-flight/install.sh

echo "Installing packages"
source $ARCHLAND_PATH/packages/all.sh

echo "Starting Hyprland..."
pkill -x hyprland
setsid uwsm-app -- hyprland >/dev/null 2>&1 &
