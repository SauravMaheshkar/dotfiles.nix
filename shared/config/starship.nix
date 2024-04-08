{ pkgs }:

{
  enable = true;
  enableZshIntegration = true;
  settings = {
    add_newline = false;
    git_branch = { symbol = "🌱 "; };
    package = { disabled = true; };
  };
}
