{ pkgs }:

{
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
}
