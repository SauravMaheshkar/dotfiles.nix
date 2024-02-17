{ pkgs }:

{
  enable = true;
  enableAutosuggestions = true;
  autocd = false;
  shellAliases = {
    "c" = "clear";
    "code" = "nvim";
    "dwc" = ''darwin-rebuild check --flake ".#aarch64"'';
    "dwb" = ''darwin-rebuild switch --flake ".#aarch64"'';
    "xgc" = "nix-store --gc && nix-store --optimise";
    "ls" = "ls -Alh --color=auto";
  };
  syntaxHighlighting = { enable = true; };
}
