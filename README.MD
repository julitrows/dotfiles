# Dotfiles

After an org-wide issue with some security software rollout on a company I work for that resulted in my laptop being wiped without a chance for backups, I had to restart my config from scratch. I usually would back my files up before going to a new laptop so I had something to work on, but disaster struck me hard.

I decided then it was finally a good time to set up a dotfiles repo and learn more about these config files and how to maintain them properly.

[Docs & Intro](https://www.daytona.io/dotfiles/ultimate-guide-to-dotfiles)

## Branches

- `main` branch is my personal laptop: old trusty intel macbook from 2021. What's there works but it is basic. Things may be missing.
- `work-machine` is the work laptop I use now: an M3. This branch will see most movement. Some things will eventually end up in the `main` branch.

## Dependencies

- Homebrew. Use `brew bundle install` to install deps listed on the [`Brewfile`](https://github.com/julitrows/dotfiles/blob/work-machine/Brewfile). Some like postgres and redis need some additional set up as services in the OS.
- Oh My Zsh.

## How to use the files

1. Clone the repo somewhere. Example: `/Users/<you>/Code/dotfiles`
2. Except for `.gitignore` and this `README`, assume the repo structure resembles your `~` folder (`/Users/<you>/`).
3. You'll need to create symlinks from the right place to the file in the repo. Eg:

```sh
/Users/<you>$ ln -s /Users/<you>/Code/dotfiles/.wezterm.lua .wezterm.lua

# Check its there:
/Users/<you>$ ls -lha
# ...
lrwxr-xr-x@  1 <you>  staff    26B Jun 17 14:13 .wezterm.lua -> Code/dotfiles/.wezterm.lua
# ...
```

4. If the file is supposed to be in a folder, you'll need to recreate the structure

```sh
/Users/<you>$ mkdir -p .config/lazygit
/Users/<you>$ cd .config/lazygit
/Users/<you>/.config/lazygit$ ln -s /Users/<you>/Code/dotfiles/.config/.lazygit/config.yml config.yml

# Check its there:
/Users/<you>/.config/lazygit$ ls -lha
# ...
lrwxr-xr-x@ 1 <you>  staff    53B Jun 17 15:00 config.yml -> /Users/<you>/Code/dotfiles/.config/lazygit/config.yml
# ...
```

## TODOs

Check how to use stow to automate symlinking
Check out [Nate Berkopec's dotfiles](https://github.com/nateberkopec/dotfiles) for inspo/rubyfication
