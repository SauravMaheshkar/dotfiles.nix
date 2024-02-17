{ pkgs }:

let
  basic = with pkgs; [
    fd
    git
    tree
    wget
    unzip
    ripgrep
    coreutils
    findutils
  ];

  buildTools = with pkgs; [
    cmake
    rustc
  ];

  jsTools = (with pkgs; [
    nodejs
  ] ++ (with nodePackages; [
    pnpm
  ]));

  misc = with pkgs; [
    neofetch
    rectangle
  ];

  nixTools = with pkgs; [
    nixfmt
  ];

  pythonTools = with pkgs; [
    python310
    python310Packages.pip
  ];

  rustTools = with pkgs; [
    cargo
    clippy
  ];
in
basic
++ buildTools
++ jsTools
++ misc
++ nixTools
++ pythonTools
++ rustTools

