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
    push.autoSetupRemote = true;
    user = { signingkey = "6582BD988D3E6BAD"; };
  };
}
