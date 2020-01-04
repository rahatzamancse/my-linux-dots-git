#!/bin/bash

CURRENT_GTK_THEME="$(gsettings get org.gnome.desktop.interface gtk-theme)"
CURRENT_WM_THEME="$(gsettings get org.gnome.desktop.wm.preferences theme)"

if [ "$CURRENT_GTK_THEME" == "'$GTK_WHITE_THEME'" ]; then
echo if
gsettings set org.gnome.desktop.interface gtk-theme $GTK_DARK_THEME
gsettings set org.gnome.desktop.wm.preferences theme $GTK_DARK_THEME

else
echo else
gsettings set org.gnome.desktop.wm.preferences theme $GTK_WHITE_THEME
gsettings set org.gnome.desktop.interface gtk-theme $GTK_WHITE_THEME

fi

