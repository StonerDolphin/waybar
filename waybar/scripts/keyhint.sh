#!/bin/sh
W=$(xrandr -q | grep -w Screen | sed 's/.*current //;s/,.*//' | awk '{print $1}')
H=$(xrandr -q | grep -w Screen | sed 's/.*current //;s/,.*//' | awk '{print $3}')
pointX=$(echo $((($W-500)/2)))
pointY=$(echo $((($H-500)/2)))
yad --width=850 --height=500 \
--fixed \
--geometry="+$pointX+$pointY" \
--title="Garuda Hyprland Keybindings" \
--no-buttons \
--list \
--column=Key: \
--column=Description: \
--column=Command: \
--timeout=60 \
--timeout-indicator=right \
"ESC" "close this app" "" "=" "modkey" "(set mod Mod4)" \
"+enter/+t" "Terminal" "(foot)" \
"+d" "Application Menu" "(wofi)" \
"+Shift+d" "Full Launcher" "(nwggrid)" \
"+o" "" "Open Broswer" \
"+n" "" "Open Files" \
"+q" "close focused app" "(kill)" \
"Print-key" "screenshot" "(grim)" \
"+Shift+e" "power-menu" "(wofi)" \
"+Shift+c" "Change wallpaper" "(wpaperd)" \
"+f" "Fullscreen" "Toggles to fullscreen" \
"+Shift+f" "Fake fullscreen" "Makes open window to behave as fullscreen without changing geoometry" \
"+Shift+Spacebar" "Float" "Toggle windows to float" \
"+p" "Dwindle effect" "pseudo" \
"+j" "Dwindle effect" "toggle split" \
"Change keyboard layout in" "~/.config/hypr/hyprland.conf" " " \
"Window closed in 60 sec."\
