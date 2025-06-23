precmd() {
    tmux set -g status-left "$(~/.local/bin/tmux-sessions/tmux-status.sh)"
}

eza() {
    if [ $# -eq 0 ]; then
      command eza .
    else
      command eza "$@"
    fi
}
