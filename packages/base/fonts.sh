#!/bin/bash

echo "Installing JetBrains Mono Nerd Font..."
sudo pacman -S --noconfirm --needed ttf-jetbrains-mono-nerd

echo "Setting JetBrains Mono Nerd Font as default monospace font..."
mkdir -p ~/.config/fontconfig
cat > ~/.config/fontconfig/fonts.conf << 'EOF'
<?xml version="1.0"?>
<!DOCTYPE fontconfig SYSTEM "fonts.dtd">
<fontconfig>
  <!-- Set JetBrains Mono Nerd Font as default monospace -->
  <alias>
    <family>monospace</family>
    <prefer>
      <family>JetBrainsMono Nerd Font</family>
    </prefer>
  </alias>
  <alias>
    <family>mono</family>
    <prefer>
      <family>JetBrainsMono Nerd Font</family>
    </prefer>
  </alias>
</fontconfig>
EOF

echo "Rebuilding font cache..."
fc-cache -fv
