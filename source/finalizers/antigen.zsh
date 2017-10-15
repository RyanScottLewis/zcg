if [[ `uname` == 'Darwin' ]]; then
  source /usr/local/share/antigen/antigen.zsh
else
  source /usr/share/zsh/share/antigen.zsh
fi

antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-completions
antigen bundle zsh-users/zsh-history-substring-search
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle djui/alias-tips
antigen bundle Tarrasch/zsh-command-not-found
antigen bundle veelenga/crystal-zsh
antigen bundle b4b4r07/enhancd

antigen apply
