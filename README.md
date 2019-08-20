# Olysseum

Olysseum is a tiny tool to quickly start up ssm sessions to AWS EC2 instances using the AWS CLI

## Installation

The only requirements are the [AWS CLI](https://docs.aws.amazon.com/cli/latest/userguide/cli-chap-install.html) and the [session manager plugin](https://docs.aws.amazon.com/systems-manager/latest/userguide/session-manager-working-with-install-plugin.html)

On OSX, you can run the following (if [`brew`](https://brew.sh/) is installed):

```
# AWS CLI
brew install python
pip3 install awscli --upgrade --user

# AWS Session Manager Plugin
curl "https://s3.amazonaws.com/session-manager-downloads/plugin/latest/mac/sessionmanager-bundle.zip" -o "sessionmanager-bundle.zip"
unzip sessionmanager-bundle.zip
sudo ./sessionmanager-bundle/install -i /usr/local/sessionmanagerplugin -b /usr/local/bin/session-manager-plugin

# Install into PATH (/usr/local/bin optional, any location in your $PATH will work)
sudo cp ./olysseum /usr/local/bin/olysseum
```

## Usage

Olysseum only supports starting sessions based off of instance IDs or Name tags in EC2.

```
# To start a session with a particular instance
olysseum -i i-1234567890abcdef0

# To start a session with a Name tag that only has one instance
olysseum -n name-test-single

# To start a session with the first instance returned given a Name tag
olysseum -n name-test-multiple -f

# To be given a prompt of all instances that match a Name tag
olysseum -n name-test-multiple
```

