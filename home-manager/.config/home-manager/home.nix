{ config, pkgs, ... }:

{
  nixpkgs.config.allowUnfree = true;

  home.username = "saurav";
  home.homeDirectory = "/Users/saurav";
  home.stateVersion = "23.11";
  fonts.fontconfig.enable = true;

  home.packages = import ./packages.nix { inherit pkgs; };

  home.shellAliases = (import ./aliases.nix { inherit pkgs; }).shell;

  home.sessionVariables = import ./env.nix { inherit pkgs; };

  programs = import ./programs.nix { inherit pkgs; };
}
