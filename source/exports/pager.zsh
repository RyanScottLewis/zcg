# Find and set the default pager
# Override in an initializer or at the end of this file
pagers=('vimpager' 'less' 'more')

for command in $pagers; do
  if (( $+commands[$command] )); then
    export PAGER=$(which $command)
    break
  fi
done
