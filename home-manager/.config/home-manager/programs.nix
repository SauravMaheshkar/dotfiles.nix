{ pkgs }:

{
    # Terminal of choice
    alacritty = import ./alacritty.nix { inherit pkgs; };

    # GitHub CLI
    gh = import ./gh.nix { inherit pkgs; };

    # But of course
    git = import ./git.nix { inherit pkgs; };

    # GPG config
    gpg.enable = true;

    # Configure HM itself
    home-manager = {
        enable = true;
    };

    zsh = import ./zsh.nix { inherit pkgs; };
}