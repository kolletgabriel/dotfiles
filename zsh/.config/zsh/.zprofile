# Source environment variables:
source "$ZDOTDIR/environment.zsh"

# If X hasn't been started and if user's in TTY 1:
if [ -z "$DISPLAY" ] && [ "$XDG_VTNR" = 1 ]; then
  pamixer --get-mute > /dev/null  # workaround to turn off mute key's led
  exec startx -- -dpi 144 &> /dev/null  # no log messages in the TTY
fi
