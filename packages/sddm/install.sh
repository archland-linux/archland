#!/bin/bash

echo "Installing SDDM..."
sudo pacman -S --noconfirm --needed sddm

echo "Setting up SDDM for automatic login with Hyprland..."
sudo mkdir -p /etc/sddm.conf.d
cat <<EOF | sudo tee /etc/sddm.conf.d/autologin.conf
[Autologin]
User=$USER
Session=hyprland-uwsm
EOF

echo "Enabling SDDM service..."
sudo systemctl enable sddm.service

echo "SDDM setup complete!"
