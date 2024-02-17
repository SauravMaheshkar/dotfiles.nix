{ pkgs }:

{
  enable = true;
  extraLuaConfig = "	require('config.lazy')\n";
  defaultEditor = true;
  withNodeJs = true;
  withPython3 = true;
  vimdiffAlias = true;
}
