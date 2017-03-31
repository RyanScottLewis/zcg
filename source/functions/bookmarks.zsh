# TODO: Use $BOOKMARKS path based on hostname

# Change directory to programming bookmark, or the bookmarks directory if none is given
function bm {
  cd "/Volumes/Media/Self/Science/Technology/Software Engineering/Bookmarks/$1"
}

# Add a bookmark
function bmadd {
  if [ ! -z "$1" ]; then
    ln -s "../$1" "/Volumes/Media/Self/Science/Technology/Software Engineering/Bookmarks/"
  fi
}

# Remove a bookmark
function bmrm {
  if [ ! -z "$1" ]; then
    rm "/Volumes/Media/Self/Science/Technology/Software Engineering/Bookmarks/$1"
  fi
}

function bmls {
  ls "/Volumes/Media/Self/Science/Technology/Software Engineering/Bookmarks" | col | sort
}
