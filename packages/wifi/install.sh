#!/bin/bash

# Exit immediately if a command exits with a non-zero status
set -e

echo "Installing iwd (iNet Wireless Daemon) and WiFi tools..."
sudo pacman -S --noconfirm --needed \
  iwd \
  wireless-regdb \
  impala

echo "Enabling iwd service..."
sudo systemctl enable iwd.service

echo "Preventing systemd-networkd-wait-online timeout on boot..."
sudo systemctl disable systemd-networkd-wait-online.service
sudo systemctl mask systemd-networkd-wait-online.service

echo "WiFi/Network setup complete!"
