# Setup RVM, if there is a ~/.rvm directory

if [[ -x "$HOME/.rvm" ]]; then
  export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting

  [[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
fi
