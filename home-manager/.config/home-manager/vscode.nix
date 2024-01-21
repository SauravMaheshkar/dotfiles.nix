{ pkgs }:

let
    colorTheme = "solarpunk";
    iconTheme = "catppuccin-mocha";

    ext = publisher: name: version: sha256: pkgs.vscode-utils.buildVscodeMarketplaceExtension {
        mktplcRef = { inherit name publisher sha256 version; };
    };
in
{
    enable = true;

    enableExtensionUpdateCheck = true;

    extensions = (with pkgs.vscode-extensions; [
        alefragnani.project-manager
        bbenoist.nix
        catppuccin.catppuccin-vsc
        catppuccin.catppuccin-vsc-icons
        eamodio.gitlens
        github.copilot
        gruntfuggly.todo-tree
        ms-python.black-formatter
        ms-python.python
        redhat.vscode-yaml
        tamasfe.even-better-toml
        wakatime.vscode-wakatime
    ]) ++ pkgs.vscode-utils.extensionsFromVscodeMarketplace [
        {
          name = "vscode-pets";
          publisher = "tonybaloney";
          version = "1.25.1";
          sha256 = "sha256-as3e2LzKBSsiGs/UGIZ06XqbLh37irDUaCzslqITEJQ=";
        }
        {
            name = "ruff";
            publisher = "charliermarsh";
            version = "2024.0.0";
            sha256 = "sha256-qgwud2gzHLHID45VxDlngFMoks5O3pTHQe+Q7bdf8+I=";
        }
        {
            name = "solarpunk";
            publisher = "symmetrysyndicate";
            version = "0.0.1";
            sha256 = "sha256-m0z+iCENiFG7j1f0anoeGaydX7q2v5s7KQjWYug88Pc=";
        }
    ];

    mutableExtensionsDir = true;

    userSettings = {
        "[python]" = {
            "editor.defaultFormatter" = "charliermarsh.ruff";
            "editor.formatOnSave" = true;
        };
        "[rust]" = {
            "editor.defaultFormatter" = "rust-lang.rust-analyzer";
            "editor.formatOnSave" = true;
        };
        "[toml]" = {
            "editor.defaultFormatter" = "tamasfe.even-better-toml";
            "editor.formatOnSave" = true;
        };
        "workbench.colorTheme" = colorTheme;
        "workbench.iconTheme" = iconTheme;
        "editor.fontSize" = 20;
        "vscode-pets.theme" = "forest";
        "vscode-pets.petSize" = "medium";
        "vscode-pets.throwBallWithMouse" = true;
        "vscode-pets.petType" = "dog";
        "vscode-pets.petColor" = "black";
    };
}