#!/bin/bash

echo "Installing PipeWire and audio tools..."
sudo pacman -S --noconfirm --needed \
  pipewire \
  pipewire-alsa \
  pipewire-pulse \
  pipewire-jack \
  wireplumber \
  pavucontrol

echo "Enabling PipeWire user services..."
systemctl --user enable pipewire.service
systemctl --user enable pipewire-pulse.service
systemctl --user enable wireplumber.service

systemctl --user start pipewire.service
systemctl --user start pipewire-pulse.service
systemctl --user start wireplumber.service

echo "Audio setup complete!"
