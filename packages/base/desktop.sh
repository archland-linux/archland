#!/bin/bash

echo "Copy default desktop entities..."
mkdir -p ~/.local/share/applications
cp -r $ARCHLAND_PATH/defaults/apps/* ~/.local/share/applications/
