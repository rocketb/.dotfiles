#!/bin/sh
# Script to configure X, start common apps, and start xmonad.


# Configure PATH so that we can access our scripts below
export PATH=$PATH:~/.cabal/bin:/home/esv/.xmonad/bin

# Configure X
xsetroot -cursor_name left_ptr &
xrdb -merge ~/.Xdefaults &

# Start a window compositor. This ensures Google Chrome paints correctly.
xcompmgr -n &

# Activate primary screen
#xrandr --output DVI-I-3 --auto --primary

# Start the system tray
tray &

# Start two terminals
gnome-terminal &
gnome-terminal &

# Start messengers
telegram &
icq &

# Start a browser
google-chrome &

# Start screensaver
gnome-screensaver &

# Start sound server
pulseaudio --start --log-target=syslog &

# Load background
nitrogen --restore &

# Start dropbox client
~/.dropbox-dist/dropboxd &3

# Create socket for volume level
export _volume_pipe=/tmp/.volume-pipe
[[ -S $_volume_pipe ]] || mkfifo $_volume_pipe

# Lanch xmonad
exec xmonad
#gnome-session &

# keyboard layot setup
xkbcomp $HOME/.config/xkb/my $DISPLAY
