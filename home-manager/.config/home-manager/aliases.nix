{ pkgs }:

{
    git = {
        s = "status";
        del = "branch -D";
        last = "log -1 HEAD";
    };

    shell = {
        conf = "code ~/dotfiles/";
        xgc = "nix store --gc && nix store --optimise";
        ls = "ls -G";
    };
}