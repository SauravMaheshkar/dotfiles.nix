{ pkgs }:

{
  enable = true;
  gitCredentialHelper = {
    enable = true;
    hosts = [ "https://github.com" ];
  };
  settings = {
    editor = "vim";
    git_protocol = "ssh";
    prompt = "enabled";
  };
}
