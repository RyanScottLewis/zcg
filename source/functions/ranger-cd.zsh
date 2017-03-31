# Automatically change the directory after closing ranger
function ranger-cd {
  tempfile="$(mktemp -t tmp.XXXXXX)"
  $(which ranger) --choosedir="$tempfile" "${@:-$(pwd)}"
  test -f "$tempfile" &&
  if [ "$(cat -- "$tempfile")" != "$(echo -n `pwd`)" ]; then
    cd -- "$(cat "$tempfile")"
  fi
  rm -f -- "$tempfile"
}
