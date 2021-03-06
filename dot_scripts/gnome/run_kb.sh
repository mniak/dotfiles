#!/bin/bash

read -r -d '' CONTENT << DELIMITER-1234

[desktop/interface]
cursor-theme='Bibata-Modern-Ice'
gtk-theme='Arc-Darker'
icon-theme='Arc'
monospace-font-name='JetBrains Mono 10'

[desktop/wm/keybindings]
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
switch-group=['<Super>apostrophe']
switch-group-backward=['<Shift><Super>apostrophe']
switch-input-source=@as []
switch-input-source-backward=@as []
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

[mutter/wayland/keybindings]
restore-shortcuts=@as []

[settings-daemon/plugins/media-keys]
area-screenshot=@as []
area-screenshot-clip=@as []
calculator=['Calculator']
custom-keybindings=['/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/rofi-combi/', '/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/rofi-drun/', '/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/rofi-emoji/', '/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/system-monitor/', '/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/xkill/', '/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/kitty/', '/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/flameshot/']
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
screenshot=@as []
screenshot-clip=@as []
search=['Search']
stop=['AudioStop']
volume-step=1
window-screenshot=@as []
window-screenshot-clip=@as []
www=['HomePage']


[org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/flameshot]
binding='Print'
command='flameshot gui'
name='Take Screenshot'

[settings-daemon/plugins/media-keys/custom-keybindings/rofi-combi]
binding='<Super>space'
command='rofi -show combi'
name='Rofi Combi'

[settings-daemon/plugins/media-keys/custom-keybindings/rofi-drun]
binding='<Super>r'
command='rofi -show drun'
name='Rofi Drun'

[settings-daemon/plugins/media-keys/custom-keybindings/rofi-emoji]
binding='<Super>period'
command='rofi -show emoji'
name='Rofi Emoji'

[settings-daemon/plugins/media-keys/custom-keybindings/system-monitor]
binding='<Primary><Shift>Escape'
command='gnome-system-monitor'
name='System Monitor'

[settings-daemon/plugins/media-keys/custom-keybindings/xkill]
binding='<Super>Delete'
command='xkill'
name='XKill'

[settings-daemon/plugins/media-keys/custom-keybindings/kitty]
binding='<Super>Return'
command='kitty'
name='Open Terminal'

[shell/keybindings]
focus-active-notification=@as []
open-application-menu=@as []
toggle-application-view=@as []
toggle-message-tray=@as []
toggle-overview=@as []

DELIMITER-1234

echo "$CONTENT" | dconf load /org/gnome/