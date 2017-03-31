# Save current working dir, executed before the prompt is displayed
# TODO: Use XDG data dir
export CWD_PATH="$HOME/.local/share/zsh/cwd"
export PROMPT_COMMAND='pwd > "$CWD_PATH"'
precmd() { eval "$PROMPT_COMMAND" }

# Change to saved working dir
[[ -f "$CWD_PATH" ]] && cd "$(< $CWD_PATH)"
