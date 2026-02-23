# Dotfiles (GNU Stow)

This repo manages my macOS environment using **GNU Stow**.

It versions:
- zsh shell config
- git config
- iTerm2 UI configuration
- Future Neovim (LazyVim) setup

---

## Structure

Each folder is a Stow package:

- `zsh/` → ~/.zshrc
- `git/` → ~/.gitconfig
- `iterm/` → iTerm2 externalized preferences
- `nvim/` → ~/.config/nvim (future LazyVim)
- `direnv/` → reserved for future global direnv config

`.stowrc` ensures Stow always targets `$HOME`.

---

## How Stow Works

From inside the repo:

    stow <package>

Creates symlinks in your home directory.

Example:

    stow zsh
    stow git

---

## iTerm2 Configuration

iTerm2 is configured to:

    Load settings from a custom folder

Path:

    ~/Documents/rPersonal/dotfiles/iterm

This means:
- iTerm reads from this repo
- Any UI change updates `com.googlecode.iterm2.plist`
- The configuration is portable across machines

If setting up a new Mac, you must:

1. Install iTerm2
2. Open Settings → General → Settings
3. Enable:
       Load settings from a custom folder or URL
4. Point to:
       ~/Documents/rPersonal/dotfiles/iterm
5. Set “Save changes” to Automatically

---

## Setup on a New Mac

1. Install Homebrew
2. Install Stow:
       brew install stow
3. Clone this repo:
       git clone git@github.com:gaboxv/dotfiles.git ~/Documents/rPersonal/dotfiles
4. cd into repo
5. Run:
       stow zsh
       stow git
6. Restart terminal

Optional:
- Enable iTerm external settings as described above

---

## Notes

- `.envrc` and `.direnv/` are intentionally ignored
- `.DS_Store` is ignored
- This setup assumes macOS
