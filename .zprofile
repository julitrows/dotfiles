eval "$(/usr/local/bin/brew shellenv)"

# mise
if [[ "$TERM_PROGRAM" == "vscode" ]]; then
  eval "$($HOME/.local/bin/mise activate zsh --shims)"
else
  eval "$($HOME/.local/bin/mise activate zsh)"
fi

# Set up fzf key bindings and fuzzy completion
source <(fzf --zsh)
