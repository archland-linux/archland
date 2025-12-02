#!/bin/bash

echo "Installing GTK..."
sudo pacman -S --noconfirm --needed \
  gtk3 \
  gtk4 \
  gjs

echo "GTK installed!"
