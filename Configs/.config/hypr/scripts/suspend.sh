#!/bin/bash
swayidle -w \
timeout 120 ' swaylock ' \
timeout 300 ' hyprctl dispatch dpms off' \
timeout 600 'systemctl suspend' \
resume ' hyprctl dispatch dpms on' \
before-sleep 'swaylock'
