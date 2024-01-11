{ pkgs }:

{
    enable = true;
    userName = "Saurav Maheshkar";
    userEmail = "sauravvmaheshkar@gmail.com";

    lfs = { enable = true; };

    ignores = [
        # OS generated files #
        "**/.DS_Store"
        ".DS_Store?"
        "._*"
        ".Spotlight-V100"
        ".Trashes"
        "Icon?"
        "ehthumbs.db"
        "Thumbs.db"
        # Python #
        "**/__pycache__/"
        "**/*.ipynb_checkpoints"
        "**/*.egg-info"
        ".pytest_cache/"
        ".mypy_cache/"
        ".ruff_cache/"
        "venv/"
    ];

    aliases = (import ./aliases.nix { inherit pkgs; }).git;

    extraConfig = {
        commit.gpgsign = "true";
        protocol.keybase.allow = "always";
        credential.helper = "osxkeychain";
        init.defaultBranch = "main";
        user = { signingkey = "4986F4659B5ACAB5"; };
    };
}