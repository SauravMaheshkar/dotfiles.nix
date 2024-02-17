{ pkgs, config, ... }:

{
  nixpkgs.config.allowUnfree = true;
  home.enableNixpkgsReleaseCheck = false;
  home.stateVersion = "23.11";

  home.packages = with pkgs; [
    fd
    ripgrep
    coreutils
    findutils
    unzip
    wget
    git
    nodejs
    nodePackages.npm
    neofetch
    rectangle
    python310
    python310Packages.pip
    cargo
    clippy
    rustc
    rustfmt
  ];

  programs.direnv = {
    enable = true;
    enableZshIntegration = true;
    nix-direnv.enable = true;
  };

  programs.fzf = {
    enable = true;
    enableZshIntegration = true;
    defaultOptions = [ "--preview 'cat {}'" ];
  };

  programs.git = {
    enable = true;
    userName = "Saurav Maheshkar";
    userEmail = "sauravvmaheshkar@gmail.com";

    lfs = { enable = true; };

    ignores = [ ];

    aliases = {
      "s" = "status";
      "del" = "branch -D";
    };

    extraConfig = {
      commit.gpgsign = true;
      protocol.keybase.allow = "always";
      credential.helper = "osxkeychain";
      init.defaultBranch = "main";
      user = { signingkey = "5A487B40E23BAA71"; };
    };
  };

  programs.gh = { enable = true; };

  programs.gpg = { enable = true; };

  xdg.configFile = {
    nvim = {
      source = config.lib.file.mkOutOfStoreSymlink ../config/nvim;
      recursive = true;
    };
  };

  programs.neovim = {
    enable = true;
    extraLuaConfig = "	require('config.lazy')\n";
    defaultEditor = true;
    withNodeJs = true;
    withPython3 = true;
    vimdiffAlias = true;
  };

  programs.starship = {
    enable = true;
    enableZshIntegration = true;
    settings = {
      add_newline = false;
      git_branch = { symbol = "🌱 "; };
      nix_shell = {
        disabled = true;
        impure_msg = "[impure shell](bold red)";
        pure_msg = "[pure shell](bold green)";
        format = "via [☃️ $state( ($name))](bold blue) ";
      };
      package = { disabled = true; };
    };
  };

  programs.tmux = { enable = true; };

  programs.zsh = {
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
  };
}
