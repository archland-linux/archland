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
