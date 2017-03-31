function search {
  grep -Rnb --color=always "$1" .
}
