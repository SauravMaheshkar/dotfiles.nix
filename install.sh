#!/usr/bin/env bash
set -e

os_type=$(uname -s)

apt_packages="build-essential curl gcc gh git gfortran libopenblas-dev neofetch python3 python3-dev python3-pip python3-venv stow tmux unzip zsh"
apt_packages_optional=""

###############################################################################
# Install packages using your OS' package manager
###############################################################################

function apt_install_packages {
    sudo apt-get update && sudo apt-get install -y --no-install-recommends ${apt_packages} ${apt_packages_optional} && sudo apt-get clean && sudo rm -rf /var/lib/apt/lists/*
}

function brew_install_self {
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
}

function brew_install_packages {
    [ -x "$(command -v brew > /dev/null 2>&1)" ] && brew_install_self

    brew bundle --file=brew/Brewfile
}

if [ "${os_type}" == "Linux" ]; then
    apt_install_packages
else
    brew_install_packages
fi


###############################################################################
# Stow dotfiles
###############################################################################

stow docker
stow gh
stow git
stow neofetch
stow update_scripts
stow zsh
stow brew

###############################################################################
# Change default shell to zsh
###############################################################################

[ "${os_type}" != "Darwin" ] && sudo chsh -s "$(command -v zsh)"

exit 0
