#!/bin/bash

echo "Installing base packages..."

sudo pacman -S --noconfirm --needed \
  uwsm \
  git \
  alacritty \
  fastfetch \
  btop \
  vim \
  nano \
  yay

echo "Copy default desktop entities..."
mkdir -p ~/.local/share/applications
cp -r $ARCHLAND_PATH/defaults/apps/* ~/.local/share/applications/

echo "Installing terminal wrapper..."
mkdir -p ~/.local/bin
cp $ARCHLAND_PATH/defaults/bin/terminal ~/.local/bin/terminal
chmod +x ~/.local/bin/terminal

echo "Setting default terminal..."
mkdir -p ~/.config/archland
echo "alacritty" > ~/.config/archland/terminal
