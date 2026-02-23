# Dotfiles (GNU Stow)

This repo manages my macOS dotfiles using **GNU Stow**.

## What’s included

- **zsh**
  - `~/.zshrc`
- **git**
  - `~/.gitconfig`
- **direnv**
  - Uses the zsh hook in `.zshrc`
  - No global `~/.config/direnv` tracked yet
- **nvim** (placeholder)
  - `~/.config/nvim` (for future LazyVim setup)
- **iterm** (placeholder)
  - iTerm2 settings are not tracked yet (will be configured to load prefs from this repo)

## How it works

Each folder is a “package” (e.g. `zsh/`, `git/`).  
Running `stow <package>` creates symlinks into `$HOME`.

This repo includes a `.stowrc` so Stow always targets your home directory.

## Setup on a new Mac (from scratch)

1) Install prerequisites:
- Install Homebrew
- Install Stow:
  - `brew install stow`

2) Clone the repo:
- `git clone <YOUR_REPO_SSH_URL> ~/Documents/rPersonal/dotfiles`
- `cd ~/Documents/rPersonal/dotfiles`

3) Stow packages:
- `stow zsh`
- `stow git`

4) Reload shell:
- Restart the terminal, or run: `exec zsh`

## Notes

- `direnv` is enabled via this line in `.zshrc`:
  - `eval "$(direnv hook zsh)"`
- `.envrc` files are intentionally **not** committed.
