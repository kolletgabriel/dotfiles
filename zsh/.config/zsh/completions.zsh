#!/usr/bin/zsh

# Setting up cache directory and initializing the completion system:
COMPCACHE="$XDG_CACHE_HOME/zsh/compcache"
[ -d "$COMPCACHE" ] || mkdir -p "$COMPCACHE"
autoload -U compinit
compinit -d "$COMPCACHE/zcompdump"  # no .zcompdump inside $ZDOTDIR

# `zstyle`ing the completion system:
zstyle ':completion:*' use-cache 1
zstyle ':completion:*' cache-path "$COMPCACHE"
zstyle ':completion:*' completer _list _complete
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'  # like Vim's smartcase
zstyle ':completion:*' menu 'false'  # Leave that for fzf
zstyle ':completion:*' rehash 1
