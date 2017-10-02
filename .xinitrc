if [ -d $HOME/.config/.xkb/keymap ]; then
  xkbcomp $HOME/.config/.xkb keymap/keymap $DISPLAY
fi
