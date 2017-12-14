# Setup Antigen Zsh plugin manager
if [[ `uname` == 'Darwin' ]]; then
  source /usr/local/share/antigen/antigen.zsh
else
  source /usr/share/zsh/share/antigen.zsh
fi

# List of plugins

# Syntax highlighting for zsh commands.
antigen bundle zsh-users/zsh-syntax-highlighting

# Adds a lot of completions for commands which are not packages with them.
antigen bundle zsh-users/zsh-completions

# Show completions in a muted color and press right to complete.
antigen bundle zsh-users/zsh-autosuggestions

# Start typing a command and press up or down to search. Must be after zsh-syntax-highlighting.
antigen bundle zsh-users/zsh-history-substring-search

# TODO: This is cool but it does it EVERYTIME I do `cd ..`, `cd ...`, etc
# Ruins the whole point of my aliases, perhaps moving this file to initializers would work as
# aliases are loaded right before finalizers.
# # antigen bundle b4b4r07/enhancd

# Install and/or setup plugins
antigen apply
