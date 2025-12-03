#!/bin/bash

# Exit immediately if a command exits with a non-zero status
set -e

echo "Checking for conflicting JACK packages..."
# Remove jack2 if installed (conflicts with pipewire-jack)
if pacman -Qi jack2 &>/dev/null; then
  echo "Removing jack2 (conflicts with pipewire-jack)..."
  sudo pacman -R --noconfirm jack2 2>/dev/null || true
fi

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
