# Save current working dir, executed before the prompt is displayed
# TODO: Use XDG data dir
export PROMPT_COMMAND='pwd > "$ZDOTDIR/cwd"'
precmd() { eval "$PROMPT_COMMAND" }

# Change to saved working dir
[[ -f "$ZDOTDIR/cwd" ]] && cd "$(< $ZDOTDIR/cwd)"
