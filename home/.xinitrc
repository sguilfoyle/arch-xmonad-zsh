(sleep 10s && xset b off) &
(sleep 10s && xset r rate 250 45) &
#(sleep 20s && xmodmap ~/.Xmodmap) &
setxkbmap -layout "us,ru" -option "grp:toggle,ctrl:nocaps,terminate:ctrl_alt_bksp"
export PATH=~/bin:$PATH
xset +fp /usr/share/fonts/local
xsetroot -cursor_name left_ptr &
~/.mouse
#xmodmap -e "pointer = 1 8 3 4 5 6 7 2" &
#xmodmap -e "pointer = 1 2 3 4 5 6 7 8 9 10" & # normal middle button
#xmodmap -e "keycode  66 = Delete" # map caps lock to delete
numlockx &
#unclutter &
xrdb -merge ~/.Xresources
xxkb &
emacs --daemon
urxvtd -q -o -f
chromium &

exec dbus-launch xmonad
