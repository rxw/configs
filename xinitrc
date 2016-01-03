#!/bin/bash

compton --config /home/tato/.compton.conf &
xsetroot -cursor_name left_ptr &
xrdb ~/.Xresources &
wmname LG3D &
feh --bg-fill usr/img/wps/wp.png &
sxhkd -c ~/.sxhkdrc_bspc &
sh ~/bin/bar.sh &
exec 2bwm
# None
