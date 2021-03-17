#!/bin/bash
#set -x

############################################################################################
##
## Script to install Postman
##
###########################################



# Define variables

tempfile="/tmp/Postman-osx-8.0.7.zip"
weburl="https://dl.pstmn.io/download/latest/osx"
appname="Postman"
log="/var/log/postman.log"

# start logging

exec 1>> $log 2>&1

# Begin Script Body

echo ""
echo "##############################################################"
echo "# $(date) | Starting install of $appname"
echo "############################################################"
echo ""

echo "$(date) | Downloading $appname"
curl -L -f -o $tempfile $weburl

cd /tmp
echo "$(date) | Unzipping $tempfile"
rm -rf "/tmp/$appname.app"
unzip -q $tempfile

echo "$(date) | Copying files to /Applications"
rsync -a "/tmp/$appname.app" "/Applications/"

echo "$(date) | Fixing up permissions"
sudo chown -R root:wheel "/Applications/$appname.app"

echo "$(date) | Cleaning up tmp files"
rm -rf "/tmp/$appname.app"
rm -rf "$tempfile"
