#!/bin/bash
hyprctl activewindow | grep "class: (.*)" -oP | xargs killall -s 15 {}
