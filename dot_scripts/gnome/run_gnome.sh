#!/bin/bash

read -r -d '' CONTENT << DELIMITER-1234
[desktop/input-sources]
sources=[('xkb', 'br')]

[desktop/peripherals/keyboard]
delay=uint32 200
repeat=true
repeat-interval=uint32 25
DELIMITER-1234

echo "$CONTENT" | dconf load /org/gnome/


read -r -d '' CONTENT << DELIMITER-1234
[com/github/stunkymonkey/nautilus-open-any-terminal]
terminal='kitty'
DELIMITER-1234

echo "$CONTENT" | dconf load /