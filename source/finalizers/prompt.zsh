# Sigil will be randomly selected from the THEME_SIGILS list.

export THEME_SIGILS="⣽⣼⣻⣺⣹⣸⣷⣵⣳⣱⣯⣮⣭⣬⣫⣪⣩⣨⣧⣥⣣⣡⣟⣞⣝⣜⣛⣚⣙⣘⣗⣕⣓⣑⣏⣇⣈⣉⣊⣋⣌⣍⣎⣅⣃⣁⢿⢾⢽⢼⢻⢺⢹⢸⢷⢵⢳⢱⢯⢮⢭⢬⢫⢪⢩⢨⢧⢥⢣⢡⢟⢞⢝⢜⢛⢚⢙⢘⢗⢕⢓⢑⢏⢎⢍⢌⢋⢊⢉⢈⢇⢅⢃⡿⡾⡽⡼⡻⡺⡹⡸⡷⡵⡳⡱⡯⡮⡭⡬⡫⡪⡩⡨⡧⡥⡣⡡⡟⡞⡝⡜⡛⡚⡙⡘⡗⡕⡓⡑⡏⡎⡍⡌⡋⡊⡉⡈⡇⡅⡃⡁"
THEME_SIGIL=$(ruby -e "print ENV['THEME_SIGILS'].chars.sample")

# TODO: Use shell script for this
# FIXME: Below gets all fucked cause unicode characters
# THEME_SIGILS=$(echo "⣽⣼⣻⣺⣹⣸⣷⣵⣳⣱⣯⣮⣭⣬⣫⣪⣩⣨⣧⣥⣣⣡⣟⣞⣝⣜⣛⣚⣙⣘⣗⣕⣓⣑⣏⣇⣈⣉⣊⣋⣌⣍⣎⣅⣃⣁⢿⢾⢽⢼⢻⢺⢹⢸⢷⢵⢳⢱⢯⢮⢭⢬⢫⢪⢩⢨⢧⢥⢣⢡⢟⢞⢝⢜⢛⢚⢙⢘⢗⢕⢓⢑⢏⢎⢍⢌⢋⢊⢉⢈⢇⢅⢃⡿⡾⡽⡼⡻⡺⡹⡸⡷⡵⡳⡱⡯⡮⡭⡬⡫⡪⡩⡨⡧⡥⡣⡡⡟⡞⡝⡜⡛⡚⡙⡘⡗⡕⡓⡑⡏⡎⡍⡌⡋⡊⡉⡈⡇⡅⡃⡁" | grep -o .)
# echo "${#THEME_SIGILS[@]}"
# rand=$[ $RANDOM % $THEME_SIGILS[@] ]
# echo ${arr[$rand]}
# THEME_SIGIL=${THEME_SIGILS[ $(( RANDOM % ${#THEME_SIGILS[@]} )) ] }


THEME_HOST="%{$fg[green]%}%m%{$fg[white]%}%{$reset_color%}"
THEME_PATH="%{$fg[cyan]%}%1~\$(git_prompt_info)%{$reset_color%}\$(parse_git_dirty)"
THEME_USER="%{$fg[red]%}%n%{$reset_color%}"
THEME_PROMPT_CHAR="%{$fg[white]%}$THEME_SIGIL%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[white]%}@%{$fg[blue]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_CLEAN=""
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[cyan]%}✗"

PROMPT="$THEME_USER@$THEME_HOST $THEME_PATH $THEME_PROMPT_CHAR "
