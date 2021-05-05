#!/bin/bash

read -r -d '' CONTENT << GNOME-KB-EOF
[/]
area-screenshot=@as []
area-screenshot-clip=@as []
calculator=['Calculator']
custom-keybindings=['/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/', '/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom1/', '/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom2/', '/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom3/', '/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom4/']
email=['Mail']
help=@as []
home=['<Super>e']
magnifier=@as []
magnifier-zoom-in=@as []
magnifier-zoom-out=@as []
media=['Tools']
next=['AudioNext']
pause=@as []
play=['AudioPlay']
previous=['AudioPrev']
screencast=@as []
screenreader=@as []
screenshot=['<Super>Print']
screenshot-clip=['Print']
stop=['AudioStop']
window-screenshot=@as []
window-screenshot-clip=@as []
www=['HomePage']

[custom-keybindings/custom0]
binding='<Super>r'
command='rofi -show drun'
name='Rofi Run'

[custom-keybindings/custom1]
binding='<Super>space'
command='rofi -show combi'
name='Rofi Search'

[custom-keybindings/custom2]
binding='<Super>Return'
command='kitty'
name='Kitty'

[custom-keybindings/custom3]
binding='<Primary><Shift>Escape'
command='gnome-system-monitor'
name='System Monitor'

[custom-keybindings/custom4]
binding='<Super>Delete'
command='xkill'
name='XKill'

GNOME-KB-EOF

# dconf dump /org/gnome/settings-daemon/plugins/media-keys/
echo "$CONTENT" | dconf load /org/gnome/settings-daemon/plugins/media-keys/