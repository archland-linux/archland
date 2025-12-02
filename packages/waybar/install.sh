#!/bin/bash

echo "Installing Waybar and dependencies..."
sudo pacman -S --noconfirm --needed \
  waybar

echo "Setting up Waybar configuration..."
rm -rf ~/.config/waybar
mkdir -p ~/.config/waybar
cp -r $ARCHLAND_PATH/packages/waybar/config/* ~/.config/waybar

