{ username }:
{ pkgs, ... }: {
  nix = {
    settings = {
      auto-optimise-store = true;
      builders-use-substitutes = true;
      experimental-features = [ "flakes" "nix-command" ];
      substituters = [ "https://nix-community.cachix.org" ];
      trusted-public-keys = [
        "nix-community.cachix.org-1:mB9FSh9qf2dCimDSUo8Zy7bkq5CX+/rkCWyvRCYg3Fs="
      ];
      trusted-users = [ "@wheel" ];
      warn-dirty = false;
    };
  };

  environment = {
    shells = [ pkgs.zsh ];
    loginShell = pkgs.zsh;
  };

  programs.zsh.enable = true;

  services.nix-daemon.enable = true;

  services.yabai = {
    enable = true;
    config = {
      layout = "bsp";
      focus_follows_mouse = "autoraise";
      mouse_follows_focus = "on";
      window_placement = "second_child";
      top_padding = 10;
      bottom_padding = 10;
      left_padding = 10;
      right_padding = 10;
      window_gap = 10;
    };

    extraConfig = ''
      yabai -m config external_bar all:32:0
    '';
  };
  services.skhd.enable = true;

  services.sketchybar = {
    enable = true;
    extraPackages = [ pkgs.jq ];
  };

  users.users.${username} = {
    home = "/Users/${username}";
    shell = pkgs.zsh;
  };
}
