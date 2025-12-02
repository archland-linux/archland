#!/bin/bash

echo "Installing Hyprland and dependencies..."
sudo pacman -S --noconfirm --needed \
  hyprland \
  hyprpaper

echo "Setting up Hyprland configuration..."
rm -rf ~/.config/hypr
mkdir -p ~/.config/hypr
cp -r $ARCHLAND_PATH/packages/hyprland/config/* ~/.config/hypr

echo "Setting up Hyprpaper to start on Hyprland launch..."
mkdir -p ~/.config/archland
cp $ARCHLAND_PATH/defaults/wallpaper/1.jpg ~/.config/archland/wallpaper
