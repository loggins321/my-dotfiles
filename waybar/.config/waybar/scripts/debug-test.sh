#!/bin/bash

x=$(source ~/.config/waybar/scripts/gempa.sh)

if grep -q "konawewq" <<< "$x"; then
        notify-send "ya"
        exit 1
fi
