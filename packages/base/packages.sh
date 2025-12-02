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
  yay \
  fcitx5 \
  fcitx5-gtk \
  fcitx5-qt
