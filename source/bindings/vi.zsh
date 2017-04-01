# Enable Vi mode
bindkey -v

zle -N edit-command-line
autoload -Uz edit-command-line
bindkey -M vicmd 'v' edit-command-line # [V] - Edit the command line

# Remove annoying mode change delay
export KEYTIMEOUT=1
