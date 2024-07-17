{ pkgs }:

{
  enable = true;
  userName = "Saurav Maheshkar";
  userEmail = "sauravvmaheshkar@gmail.com";

  lfs = { enable = true; };

  ignores = [
    # darwin
    "**/.DS_Store"
    # C/C++
    "*.o"
    "*.out"
    "build/"
    "compile_flags.txt"
    # Nix
    "**/result"
    # Python
    "**/__pycache__/"
    "**/*.ipynb_checkpoints"
    "**/*.egg-info"
    "*.pyc"
    "dist/"
    ".pytest_cache/"
    ".mypy_cache/"
    ".ruff_cache/"
    "venv"
    ".venv"
    "artifacts"
    "wandb"
    # Ruby
    "_site"
    ".sass_cache"
    ".jekyll-metadata"
    "Gemfile.lock"
    # Rust
    "doc/"
    "target/"
    # misc
    "**/.idea/"
  ];

  aliases = {
    "s" = "status";
    "del" = "branch -D";
  };

  extraConfig = {
    commit.gpgsign = true;
    protocol.keybase.allow = "always";
    credential.helper = "osxkeychain";
    init.defaultBranch = "main";
    push.autoSetupRemote = true;
    user = { signingkey = "19033171D58C7290"; };
  };
}
