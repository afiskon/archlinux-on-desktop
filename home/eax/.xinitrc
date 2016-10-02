export PATH=/home/eax/bin:$PATH

setxkbmap -layout 'us,ru' -option 'grp:alt_shift_toggle'
rm ~/.cache/dmenu_run || true

exec i3
