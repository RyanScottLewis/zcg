# Find and set the default editor
# Override in an initializer or before `export VISUAL=$EDITOR` in this file
editors=('nvim' 'vim' 'vi' 'emacs' 'nano' 'ed')

for command in $editors; do
  if (( $+commands[$command] )); then
    export EDITOR=$(which $command)
    break
  fi
done

# Some applications call for VISUAL instead of EDITOR
export VISUAL=$EDITOR
