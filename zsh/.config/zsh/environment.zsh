#!/usr/bin/zsh

# Reenforcing XDG compliancy:
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_STATE_HOME="$HOME/.local/state"

# Updating PATH to run custom scripts:
export PATH="$HOME/.local/bin:$PATH"

# History files should be in ~/.local/state:
export LESSHISTFILE="$XDG_STATE_HOME/lesshst"
export PYTHON_HISTORY="$XDG_STATE_HOME/python_history"
export SQLITE_HISTORY="$XDG_STATE_HOME/sqlite_history"

# Xorg stuff:
export XINITRC="$XDG_CONFIG_HOME/xorg/xinitrc"
export XPROFILE="$XDG_CONFIG_HOME/xorg/xprofile"
export XRESOURCES="$XDG_CONFIG_HOME/xorg/xresources"
export XAUTHORITY="$XDG_RUNTIME_DIR/Xauthority"

# __pycache__ dirs should be in ~/.cache:
export PYTHONPYCACHEPREFIX="$XDG_CACHE_HOME/python"

# Default applications:
export TERM="alacritty"
export TERMINAL="alacritty"
export EDITOR="nvim"
