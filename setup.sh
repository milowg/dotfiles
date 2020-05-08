#!/usr/bin/env bash

###############################################################################
# Install latest bash tools and switch shell to it 				              
###############################################################################
brew install bash
brew install bash-completion@2
sudo sh -c 'echo /usr/local/bin/bash >> /etc/shells'
chsh -s /usr/local/bin/bash

ln -s ~/dotfiles/bash_profile ~/.bash_profile
ln -s ~/dotfiles/bashrc ~/.bashrc

###############################################################################
# Java
###############################################################################
brew install jenv

###############################################################################
# Python
###############################################################################
brew install pyenv

###############################################################################
# NodeJS
###############################################################################
brew install nvm

###############################################################################
# Trackpad, mouse, keyboard, Bluetooth accessories, and input                 
###############################################################################

# Trackpad: enable tap to click for this user and for the login screen
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad Clicking -bool true
defaults -currentHost write NSGlobalDomain com.apple.mouse.tapBehavior -int 1
defaults write NSGlobalDomain com.apple.mouse.tapBehavior -int 1

# Trackpad: Enable three-finger drag
defaults write com.apple.AppleMultitouchTrackpad TrackpadThreeFingerDrag -bool true
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad TrackpadThreeFingerDrag -bool true

# System Preferences > Keyboard >
defaults write NSGlobalDomain KeyRepeat -int 2

# System Preferences > Keyboard >
defaults write NSGlobalDomain InitialKeyRepeat -int 25

###############################################################################
# Dock                 														  
###############################################################################

# Automatically hide and show the Dock
defaults write com.apple.dock autohide -bool true

# System Preferences > Dock > Size:
defaults write com.apple.dock tilesize -int 53

# System Preferences > Dock > Magnification:
defaults write com.apple.dock magnification -bool true

# System Preferences > Dock > Size (magnified):
defaults write com.apple.dock largesize -int 70

###############################################################################
# Finder                													  
###############################################################################

# Finder > View > Show Path Bar
defaults write com.apple.finder ShowPathbar -bool true

###############################################################################
# bin links
###############################################################################
mkdir bin
ln -s /Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl bin/subl
