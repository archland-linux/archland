#!/bin/bash

yay -S --noconfirm --needed aether

rm -rf ~/.config/aether

mkdir -p ~/.config/aether

cp -r $ARCHLAND_PATH/packages/aether/config/* ~/.config/aether/
