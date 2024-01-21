{ pkgs }:

let
  basic = with pkgs; [
    coreutils
    findutils
    jetbrains-mono
    unzip
    wget
  ];

  gitTools = with pkgs; [
    git
  ];

  jsTools = with pkgs; [
    nodejs
    nodePackages.pnpm
  ];

  misc = with pkgs; [
    stow
    raycast
    neofetch
    rectangle
  ];

  pythonTools = with pkgs; [ 
    python310
    python310Packages.pip
  ];

  rustTools = with pkgs; [
    cargo
    clippy
    rustc
    rustfmt
  ];

in
basic
++ gitTools
++ jsTools
++ misc
++ pythonTools
++ rustTools
