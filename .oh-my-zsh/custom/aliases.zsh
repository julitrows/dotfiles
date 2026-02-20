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
alias zshconf="cursor ~/.zshrc"
alias wezconf="cursor ~/.wezterm.lua"
alias dotfiles="cursor ~/Code/dotfiles"
# Rails
alias assets="rm -rf public/assets public/packs public/packs-test && bundle exec rails assets:clobber assets:precompile"
alias migratedb="bundle exec rails db:migrate db:test:prepare parallel:prepare"
alias parallel="bundle exec parallel_rspec -n 8"
alias factories_system="RD_PROF=1 EVENT_PROF='factory.create' FPROF=flamegraph FDOC=1 bundle exec rspec spec/system"
alias factories_unit="RD_PROF=1 TAG_PROF=type EVENT_PROF='factory.create' FPROF=flamegraph FDOC=1 bundle exec rspec --exclude-pattern 'spec/system/**/*_spec.rb'"

# RubiconMD
alias login="aws sso login"
alias login_nophi="aws sso login --profile developer-nophi-qa"
alias ssh_qa="aws ssm start-session --target i-07f454bef3cc22f62 --document rmd-ubuntu --profile developer-nophi-qa"
alias dump="bundle exec bin/dumpling download"
alias list_instances="~/Code/rmd-infra-utils/scripts/list-rubicon-instances.sh"
alias list_hosts="cat ~/.ssh/config | grep -E ^Host | grep -v '*'"
alias dotfiles="cursor ~/Code/dotfiles"

# Tools
alias lg="lazygit"
alias ls="lsd"

# Homebrew
alias brewfile="rm Brewfile && brew bundle dump"
alias letsbrew="brew update && brew upgrade && brew cleanup"

# Other
alias wthr="curl wttr.in/Sevilla"
