#!/bin/bash
# Remove Homebrew process locks
rm -rf $(brew --prefix)/var/homebrew/locks

# Update Script for Brew
brew upgrade && brew update && brew cleanup && brew doctor

# List outdated packages
pip list --outdated

# Update gh extensions
gh extension upgrade --all

# Flutter
flutter doctor

