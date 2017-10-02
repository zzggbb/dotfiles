if [ -d /etc/X11/xinit/xinitrc.d ] ; then
 for f in /etc/X11/xinit/xinitrc.d/?*.sh ; do
  [ -x "$f" ] && . "$f"
 done
 unset f
fi

xrdb ${HOME}/.Xresources
xrandr --output DP2 --primary --left-of eDP1
xrandr --output eDP1 --scale 0.6x0.6
hsetroot -full ~/images/milky-way-from-earth-cropped.jpg
compton &

exec i3
