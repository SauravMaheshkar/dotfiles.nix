{ pkgs }:

{
    enable = true;
    gitCredentialHelper = {
        enable = true;
        hosts = ["github.com"];
    };
    settings = {
        git_protocol = "ssh";
        prompt = "enabled";
    };
}