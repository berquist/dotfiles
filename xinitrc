# -*- mode: shell-script -*-

if [ -d /etc/X11/xinit/xinitrc.d ] ; then
    for f in /etc/X11/xinit/xinitrc.d/?* ; do
        [ -x "$f" ] && . "$f"
    done
    unset f
fi

## Xfce
# compton -b --config=~/.compton.conf
# exec startxfce4
# thunar --daemon

## GNOME
export XDG_SESSION_TYPE=x11
export GDK_BACKEND=x11
exec gnome-session
