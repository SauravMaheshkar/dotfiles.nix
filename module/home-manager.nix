{ pkgs, config, ... }:

{
  nixpkgs.config.allowUnfree = true;
  home.enableNixpkgsReleaseCheck = false;
  home.stateVersion = "23.11";

  home.packages = import ../shared/packages.nix { inherit pkgs; };

  xdg.configFile = {
    nvim = { 
      source = config.lib.file.mkOutOfStoreSymlink ../config/nvim; 
      recursive = true;
    }; 
  };

  programs = import ../shared/programs.nix { inherit pkgs; };
}
