{ config, pkgs, ... }:

{
  home.username = "saurav";
  home.homeDirectory = "/Users/saurav";
  home.stateVersion = "23.11";

  home.packages = import ./packages.nix { inherit pkgs; };

  home.shellAliases = (import ./aliases.nix { inherit pkgs; }).shell;

  home.sessionVariables = import ./env.nix { inherit pkgs; };

  programs = import ./programs.nix { inherit pkgs; };
}