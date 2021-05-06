#!/bin/bash

PACKAGES="
git base-devel
gnome firefox
kitty starship
nodejs go

arc-gtk-theme ttf-jetbrains-mono
gnome-tweaks gtk-chtheme
"
sudo pacman -S --needed --noconfirm $PACKAGES

AUR_PACKAGES="
visual-studio-code-bin
bibata-cursor-theme-bin

"
yay -S --needed --noconfirm $AUR_PACKAGES
