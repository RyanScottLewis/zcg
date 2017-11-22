# Enable Vi mode
bindkey -v

# Enable edit-command-line function
zle -N edit-command-line
autoload -Uz edit-command-line

export KEYTIMEOUT=1 # Remove annoying mode change delay
