#!/bin/sh

# This script will download and git on a fresh installation of OS X.

cd $HOME/Downloads
curl -L -o VLC.dmg "https://ixpeering.dl.sourceforge.net/project/git-osx-installer/git-2.15.0-intel-universal-mavericks.dmg"
hdiutil attach git-2.15.0-intel-universal-mavericks.dmg
sudo installer -pkg "git-2.15.0-intel-universal-mavericks.pkg" -target /
cd -
