feh --bg-fill $HOME/usr/pictures/bg.png
compton --config /home/tato/.compton.conf &
xbindkeys &
xsetroot -cursor_name left_ptr &
./bin/bar.sh &
./bin/mountem.sh &
#./bin/cover.sh &
wmname LG3D &
urxvt &
exec xfce4-session
