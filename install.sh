#!/usr/bin/env bash
set -e

os_type=$(uname -s)

apt_packages="build-essential curl gcc gh git gfortran libopenblas-dev neofetch python3.8 python3.8-dev python3.8-pip python3.8-venv stow tmux unzip zsh"
apt_packages_optional=""

brew_packages="cmake gcc git gnutls llvm mysql-client neofetch pybind11 python@3.8 stow tmux tree wget vim"
brew_packages_optional="docker gh git-lfs hdf5 icarus-verilog numpy openblas qemu readline ruby ruby-build scipy six sqlite"

###############################################################################
# Install packages using your OS' package manager
###############################################################################

function apt_install_packages {
    sudo apt-get update && sudo apt-get install -y --no-install-recommends ${apt_packages} ${apt_packages_optional} && apt-get clean && rm -rf /var/lib/apt/lists/* && apt_install_docker
}

function apt_install_docker {
    /bin/bash -c "$(curl -fsSL https://get.docker.com -o get-docker.sh)" && sh get-docker.sh
}

function brew_install_self {
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
}

function brew_install_packages {
    [ -x "$(command -v brew > /dev/null 2>&1)" ] && brew_install_self

    brew install ${brew_packages} ${brew_packages_optional}
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
stow zsh

###############################################################################
# Change default shell to zsh
###############################################################################

[ "${os_type}" != "Darwin" ] && chsh -s "$(command -v zsh)"

exit 0
