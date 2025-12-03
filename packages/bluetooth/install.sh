#!/bin/bash

echo "Installing Bluetooth packages..."
sudo pacman -S --noconfirm --needed \
  bluez \
  bluez-utils \
  blueberry

echo "Enabling and starting Bluetooth service..."
sudo systemctl enable bluetooth.service
sudo systemctl start bluetooth.service

echo "Bluetooth setup complete!"
