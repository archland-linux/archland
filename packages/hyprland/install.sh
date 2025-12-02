#!/bin/bash

echo "Installing Hyprland and dependencies..."
sudo pacman -S --noconfirm --needed \
  hyprland

echo "Setting up Hyprland configuration..."
rm -rf ~/.config/hypr
mkdir -p ~/.config/hypr
cp -r $ARCHLAND_PATH/packages/hyprland/config/* ~/.config/hypr
