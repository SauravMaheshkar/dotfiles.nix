{ pkgs }:

{
    enable = true;
    enableAutosuggestions = true;
    autocd = false;
    initExtra = (builtins.readFile ./scripts/init.sh);
    initExtraFirst = "neofetch";
}