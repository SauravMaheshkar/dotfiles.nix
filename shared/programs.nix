{ pkgs }:

{
  direnv = {
    enable = true;
    enableZshIntegration = true;
    nix-direnv.enable = true;
  };

  fzf = {
    enable = true;
    enableZshIntegration = true;
    defaultOptions = [ "--preview 'cat {}'" ];
  };

  gh = import ./config/gh.nix { inherit pkgs; };

  git = import ./config/git.nix { inherit pkgs; };

  gpg.enable = true;

  home-manager = { enable = true; };

  jq.enable = true;

  neovim = import ./config/nvim.nix { inherit pkgs; };

  starship = import ./config/starship.nix { inherit pkgs; };

  tmux.enable = true;

  zoxide = {
    enable = true;
    enableZshIntegration = true;
  };

  zsh = import ./config/zsh.nix { inherit pkgs; };
}
