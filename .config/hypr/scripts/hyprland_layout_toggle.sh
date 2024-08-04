#!/bin/bash -   
#title          :hyprland_layout_toggle.sh
#description    :A very simple script that toggles between Hyprland's "dwindle" and "master" layouts.
#author         :Afonso Bras Sousa (https://github.com/abtsousa)
#date           :20230710
#version        :0.1.0  
#usage          :./hyprland_layout_toggle.sh
#notes          :You probably want to bind this in your Hyprland config like this: bind = $mainMod, L, exec, path/to/script

#bash_version   :5.1.16(1)-release
#============================================================================

#!/usr/bin/env sh
HYPRLAYOUT=$(hyprctl getoption general:layout | sed -n '4p' | awk '{print $2}')
if [ "$HYPRLAYOUT" = "\"dwindle\"" ] ; then
    hyprctl keyword general:layout "master"
    exit
else
    hyprctl keyword general:layout "dwindle"
    exit
fi
hyprctl reload
