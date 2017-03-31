# Read a markdown document formatted for manual pages
function md {
  if [ ! -z "$1" ]; then
    pandoc -s -f markdown -t man $1 | groff -T utf8 -man
  fi
}
