#!/bin/bash

echo "Installing terminal wrapper..."
mkdir -p ~/.local/bin
cp $ARCHLAND_PATH/defaults/bin/terminal ~/.local/bin/terminal
chmod +x ~/.local/bin/terminal

echo "Setting default terminal..."
mkdir -p ~/.config/archland
echo "alacritty" > ~/.config/archland/terminal
