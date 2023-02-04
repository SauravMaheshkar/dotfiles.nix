#!/bin/bash
# Update Script for Brew
brew upgrade && brew update && brew cleanup && brew doctor

# update command line tools
xcode-select --install

# List outdated packages
pip list --outdated

# Update gh extensions
gh extension upgrade --all

