precmd() {
    [ -n $TMUX ] && tmux refresh-client -S
}

eza() {
    if [ $# -eq 0 ]; then
      command eza .
    else
      command eza "$@"
    fi
}

zky () {
    title="$(curl -s $1 | \
        grep --color=never -oP '(?<=<meta name="title" content=").*?(?=")')"

    # Truncates, if necessary:
    [[ "$title" == "${title:0:50}" ]] || title="${title:0:50}..."
    echo "$title"
    zk new "$NOTES2" --title "$title" --extra link="$1" --template video.md
}
