# TODO: Use $BOOKMARKS path based on hostname
export BOOKMARKS_PATH="/Volumes/Media/Self/Science/Technology/Software/Bookmarks"

# Change directory to programming bookmark, or the bookmarks directory if none is given
function bm {
  cd "$BOOKMARKS_PATH/$1"
}

# Add a bookmark
function bmadd {
  if [ ! -z "$1" ]; then
    ln -s "../$1" "$BOOKMARKS_PATH/"
  fi
}

# Remove a bookmark
function bmrm {
  if [ ! -z "$1" ]; then
    rm "$BOOKMARKS_PATH/$1"
  fi
}

function bmls {
  ls "$BOOKMARKS_PATH" | col | sort
}
