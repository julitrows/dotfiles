# Put files in this folder to add your own custom functionality.
# See: https://github.com/ohmyzsh/ohmyzsh/wiki/Customization
#
# Files in the custom/ directory will be:
# - loaded automatically by the init script, in alphabetical order
# - loaded last, after all built-ins in the lib/ directory, to override them
# - ignored by git by default
#
# Example: add custom/shortcuts.zsh for shortcuts to your local projects
#
# brainstormr=~/Projects/development/planetargon/brainstormr
# cd $brainstormr

# Set personal aliases, overriding those provided by Oh My Zsh libs,
# plugins, and themes. Aliases can be placed here, though Oh My Zsh
# users are encouraged to define aliases within a top-level file in
# the $ZSH_CUSTOM folder, with .zsh extension. Examples:
# - $ZSH_CUSTOM/aliases.zsh
# - $ZSH_CUSTOM/macos.zsh
# For a full list of active aliases, run `alias`.
#
# Config
alias zshconf="nvim ~/.zshrc"
alias wezconf="nvim ~/.wezterm.lua"
alias dotfiles="nvim ~/Code/dotfiles"

alias concertus="cd ~/Code/concertus/ && git pull && cargo run --release"
alias flac2mp3="mkdir -p mp3; for f in *.flac; do ffmpeg -i \"$f\" -ab 320k -acodec libmp3lame \"mp3/${f%.flac}.mp3\"; done"
alias lg="lazygit"
alias ls="lsd"

alias brewfile="rm Brewfile && brew bundle dump"
alias letsbrew="brew update && brew upgrade && brew cleanup"

alias wthr="curl wttr.in/Sevilla"
