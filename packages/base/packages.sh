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
