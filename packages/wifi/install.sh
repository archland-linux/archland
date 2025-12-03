#!/bin/bash

echo "Installing NetworkManager and WiFi tools..."
sudo pacman -S --noconfirm --needed \
  networkmanager \
  network-manager-applet \
  nm-connection-editor

echo "Enabling and starting NetworkManager service..."
sudo systemctl enable NetworkManager.service
sudo systemctl start NetworkManager.service

echo "WiFi/Network setup complete!"
