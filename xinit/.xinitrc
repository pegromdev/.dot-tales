#!/bin/sh

userresources=$HOME/.Xresources
sysresources=/etc/X11/xinit/.Xresources

#
# merge in defaults and keymaps
if [ -f $sysresources ]; then
    xrdb -merge $sysresources
fi
if [ -f "$userresources" ]; then
    xrdb -merge "$userresources"
fi

xmodmap ~/.Xmodmap
xmodmap -e 'clear lock'

exec qtile start
exec source ~/.zshrc
