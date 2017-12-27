#!/bin/sh
if [ -d /etc/X11/xinit/xinitrc.d ] ; then
 for f in /etc/X11/xinit/xinitrc.d/?*.sh ; do
  [ -x "$f" ] && . "$f"
 done
 unset f
fi

# disable blanking
xset s off
xset dpms 0 0 0
xset -dpms

# colors, fonts
xrdb ${HOME}/.Xresources

# displays
if xrandr | grep -q 'DP2 connected'; then
  xrandr --output DP2 --primary --mode 3440x1440
  xrandr --output eDP1 --mode 2560x1440 --right-of DP2
  xinput set-prop "ELAN22CA:00 04F3:22CA" --type=float "Coordinate Transformation Matrix" 0.42666 0 0.57333 0 1.00000 0 0 0 1
else
  xrandr --output eDP1 --mode 2560x1440 --primary
fi

# wallpaper
hsetroot -center ~/images/milky-way-from-earth.jpg

# vsync
compton --vsync opengl-swc &

exec i3
