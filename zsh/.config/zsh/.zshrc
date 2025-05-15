# Sourcing custom modules:
source "$ZDOTDIR/aliases.zsh"
source "$ZDOTDIR/options.zsh"
source "$ZDOTDIR/plugins.zsh" 
source "$ZDOTDIR/completions.zsh"

# Source history fuzzy-finding script provided by fzf itself:
zvm_after_init_commands+=('source <(fzf --zsh)') # workaround for the zvm plugin

# Last but obviously not least:
fastfetch
