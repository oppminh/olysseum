#!/usr/bin/env bash
set -e

brew install python
pip3 install awscli --upgrade --user


# AWS Session Manager Plugin
curl "https://s3.amazonaws.com/session-manager-downloads/plugin/latest/mac/sessionmanager-bundle.zip" -o "sessionmanager-bundle.zip"
unzip sessionmanager-bundle.zip
sudo ./sessionmanager-bundle/install -i /usr/local/sessionmanagerplugin -b /usr/local/bin/session-manager-plugin

# Install into PATH (/usr/local/bin optional, any location in your $PATH will work)
cp ./olysseum /usr/local/bin/olysseum

