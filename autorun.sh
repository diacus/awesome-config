#!/bin/sh

run() {
  if ! pgrep -f "$1";
  then
    echo -n starting $@
    "$@"&
    echo DONE
  fi
}

# Set screen order
run xrandr --output eDP-1 --auto --output HDMI-1 --primary --left-of eDP-1

# Start emacs server
run emacs --daemon

# Set background image
run feh --no-fehbg --bg-scale '/usr/share/wallpapers/Mexico-Xochimilco-Wallpaper-1080p.jpg'

# Enable keyboard layouts
run setxkbmap -layout "us,us(intl),latam"
