#!/usr/bin/env bash
set -e

# Install nix
# Reference: https://zero-to-nix.com/concepts/nix-installer
# For Uninstalling Nix:
# - https://nixos.org/manual/nix/stable/installation/installing-binary.html#macos
# - https://github.com/DeterminateSystems/nix-installer#uninstalling
curl --proto '=https' --tlsv1.2 -sSf -L https://install.determinate.systems/nix | sh -s -- install
