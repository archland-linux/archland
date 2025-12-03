#!/bin/bash

echo "Installing PipeWire and audio tools..."
sudo pacman -S --noconfirm --needed \
  pipewire \
  pipewire-audio \
  pipewire-alsa \
  pipewire-pulse \
  pipewire-jack \
  wireplumber \
  pavucontrol

echo "Audio setup complete!"
echo "PipeWire will start automatically on next login via socket activation."
