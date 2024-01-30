## `~/dotfiles`[^1]

[![built with nix](https://builtwithnix.org/badge.svg)](https://builtwithnix.org)

> [!CAUTION]
> As of right now, the neovim configuration is a bit broken. If you want to replicate my setup you should put all your neovim configuration in `~/.config/nvim/` delete the `init.lua` and place the code you want in `init.lua` within the home-manager configuration file in [`home-manager.nix`](./module/home-manager.nix), and then rebuild. Ref: https://github.com/dmmulroy/kickstart.nix/issues/1

1. Install [Nix](https://determinate.systems/posts/determinate-nix-installer)
2. Install [nix-darwin](https://github.com/LnL7/nix-darwin)
3. Run `darwin-rebuild switch --flake ".#aarch64"`

---
[^1]: Last successful rebuild: 24 Jan 2024
