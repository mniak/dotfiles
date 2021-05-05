#!/bin/bash

read -r -d '' CONTENT << DELIMITER-1234

[org/gnome/desktop/org/gnome/desktop/peripherals/keyboard]
delay=uint32 200
repeat=true
repeat-interval=uint32 20

[org/gnome/desktop/wm/keybindings]
activate-window-menu=@as []
begin-move=@as []
begin-resize=@as []
close=['<Alt>F4']
cycle-group=@as []
cycle-group-backward=@as []
cycle-panels=@as []
cycle-panels-backward=@as []
cycle-windows=@as []
cycle-windows-backward=@as []
maximize=@as []
minimize=['<Super>Down']
move-to-monitor-down=@as []
move-to-monitor-left=@as []
move-to-monitor-right=@as []
move-to-monitor-up=@as []
move-to-workspace-1=@as []
move-to-workspace-last=@as []
move-to-workspace-left=@as []
move-to-workspace-right=@as []
panel-main-menu=@as []
panel-run-dialog=@as []
show-desktop=['<Super>d']
switch-applications=['<Super>Tab']
switch-applications-backward=['<Shift><Super>Tab']
switch-group=['<Super>grave']
switch-group-backward=['<Shift><Super>grave']
switch-panels=@as []
switch-panels-backward=@as []
switch-to-workspace-1=@as []
switch-to-workspace-2=@as []
switch-to-workspace-3=@as []
switch-to-workspace-last=@as []
switch-to-workspace-left=['<Primary><Super>Left']
switch-to-workspace-right=['<Primary><Super>Right']
switch-windows=['<Alt>Tab']
switch-windows-backward=['<Shift><Alt>Tab']
toggle-maximized=['<Super>Up']
unmaximize=@as []

[org/gnome/mutter/wayland/keybindings]
restore-shortcuts=@as []

[org/gnome/settings-daemon/plugins/media-keys]
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
search=['Search']
stop=['AudioStop']
window-screenshot=@as []
window-screenshot-clip=@as []
www=['HomePage']

[org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0]
binding='<Super>r'
command='rofi -show drun'
name='Rofi Run'

[org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom1]
binding='<Super>space'
command='rofi -show combi'
name='Rofi Search'

[org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom2]
binding='<Super>Return'
command='kitty'
name='Kitty'

[org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom3]
binding='<Primary><Shift>Escape'
command='gnome-system-monitor'
name='System Monitor'

[org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom4]
binding='<Super>Delete'
command='xkill'
name='XKill'

[org/gnome/shell/keybindings]
focus-active-notification=@as []
open-application-menu=@as []
toggle-application-view=@as []
toggle-message-tray=@as []
toggle-overview=@as []

DELIMITER-1234

echo "$CONTENT" | dconf load /