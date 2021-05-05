#!/bin/bash

read -r -d '' CONTENT << DELIMITER-1234

[org/gnome/desktop/peripherals/keyboard]
delay=uint32 200
repeat=true
repeat-interval=uint32 25

DELIMITER-1234

echo "$CONTENT" | dconf load /