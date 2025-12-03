#!/bin/bash

# Exit immediately if a command exits with a non-zero status
set -e

echo "Installing PipeWire and audio tools..."
sudo pacman -S --noconfirm --needed \
  pipewire \
  pipewire-alsa \
  pipewire-pulse \
  pipewire-jack \
  wireplumber \
  gst-plugin-pipewire \
  libpulse \
  pamixer \
  wiremix

echo "Audio setup complete!"
echo "PipeWire will start automatically on next login via socket activation."
