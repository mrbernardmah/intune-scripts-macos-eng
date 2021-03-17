#!/bin/sh

# This script will download and install Tunnelblick on a fresh installation of OS X.

cd $HOME/Downloads
curl -L -o Tunnelblick_3.8.5beta05_build_5650.dmg "https://tunnelblick.net/release/Tunnelblick_3.8.5beta05_build_5650.dmg"
hdiutil attach Tunnelblick_3.8.5beta05_build_5650.dmg
sudo ditto -rsrc "/Volumes/Tunnelblick/Tunnelblick.app" /Applications/Tunnelblick.app
hdiutil detach "/Volumes/Tunnelblick/"
cd -