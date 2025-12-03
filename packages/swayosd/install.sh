#!/bin/bash

echo "Installing SwayOSD and dependencies..."
sudo pacman -S --noconfirm --needed \
  swayosd

echo "Setting up SwayOSD configuration..."
rm -rf ~/.config/swayosd
mkdir -p ~/.config/swayosd
cp -r $ARCHLAND_PATH/packages/swayosd/config/* ~/.config/swayosd

