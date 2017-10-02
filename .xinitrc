xrdb ${HOME}/.Xresources
xrandr --output DP2 --primary --left-of eDP1
xrandr --output eDP1 --scale 0.6x0.6
hsetroot -full ~/images/milky-way-from-earth-cropped.jpg
compton &
exec i3
