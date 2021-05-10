#!/bin/bash

read -r -d '' CONTENT << DELIMITER-1234
[desktop/interface]
cursor-theme='Bibata-Modern-Ice'
document-font-name='Fira Sans Semi-Light 11'
font-name='Fira Sans 11'
gtk-theme='Arc-Dark-solid'
icon-theme='Arc'
monospace-font-name='JetBrains Mono 10'

[desktop/wm/preferences]
titlebar-font='Fira Sans 11'
DELIMITER-1234
echo "$CONTENT" | dconf load /org/gnome/

read -r -d '' CONTENT << DELIMITER-1234
[settings/file-chooser]
sort-directories-first=true
DELIMITER-1234
echo "$CONTENT" | dconf load /org/gtk/