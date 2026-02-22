if [[ $(uname -m) == 'arm64' ]]; then
  BREW_HOME=/opt/homebrew/bin
else
  BREW_HOME=/usr/local/bin
fi

# homebrew
eval "$($BREW_HOME/brew shellenv)" # Silicon Macbook

# mise
if [[ "$TERM_PROGRAM" == "vscode" ]]; then
  eval "$($BREW_HOME/mise activate zsh --shims)"
else
  eval "$($BREW_HOME/mise activate zsh)"
fi

# Set up fzf key bindings and fuzzy completion
source <(fzf --zsh)

fastfetch

# Added by Obsidian
export PATH="$PATH:/Applications/Obsidian.app/Contents/MacOS"
