#!/bin/bash
# Ask for sudo
sudo -v

# Updates from MacOS
softwareupdate -i -a

# Remove Homebrew process locks
rm -rf $(brew --prefix)/var/homebrew/locks

# Update Script for Brew
brew upgrade && brew update && brew cleanup && brew doctor

# Flutter Doctor
flutter doctor

# List outdated packages
pip list --outdated

# Update gh extensions
gh extension upgrade --all

# MacOS - Cleanup
mac-cleanup

