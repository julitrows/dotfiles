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

# Rails
alias assets="rm -rf public/assets public/packs public/packs-test && bundle exec rails assets:clobber assets:precompile"
alias dump="bundle exec bin/dumpling download"
alias lg="lazygit"
alias migratedb="bundle exec rails db:migrate db:test:prepare parallel:prepare"
alias parallel="bundle exec parallel_rspec -n 8"

# RubiconMD
alias list_instances="~/Code/rmd-infra-utils/scripts/list-rubicon-instances.sh"
alias list_hosts="cat ~/.ssh/config | grep -E ^Host | grep -v '*'"
