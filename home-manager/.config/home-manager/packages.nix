{ pkgs }:

let
  basic = with pkgs; [
    coreutils
    findutils
    unzip
    wget
  ];

  gitTools = with pkgs; [
    git
  ];

  misc = with pkgs; [
    stow
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
++ misc
++ pythonTools
++ rustTools
