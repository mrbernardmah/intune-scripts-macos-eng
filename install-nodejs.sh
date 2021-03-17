#!/bin/sh

echo "Installed nodejs"

#Make temp folder for downloads.
mkdir "/tmp/nodejs/";
cd "/tmp/nodejs/";

#Download Nodejs from website
curl -L -o /tmp/nodejs/node-v15.11.0.pkg "https://nodejs.org/dist/v15.11.0/node-v15.11.0.pkg";

#install 1Password
sudo installer -pkg  /private/tmp/nodejs/node-v15.11.0.pkg -target /;

#tidy up
sudo rm -rf "/tmp/nodejs";

exit 0