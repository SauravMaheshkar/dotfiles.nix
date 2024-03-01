# `~/dotfiles`[^1]

[![built with nix](https://builtwithnix.org/badge.svg)](https://builtwithnix.org)

1. Install [Nix](https://determinate.systems/posts/determinate-nix-installer)
2. Install [nix-darwin](https://github.com/LnL7/nix-darwin)
3. Run `darwin-rebuild switch --flake ".#aarch64"`
4. `sketchybar` is configured using GNU stow as opposed to nix, viz. `stow sketchybar`.

---

[^1]: Last successful rebuild: 1 March 2024
