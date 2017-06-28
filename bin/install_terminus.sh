#!/bin/bash
#
# This is a copy of the install_terminus.sh file from http://krl.io/7aa07
# The only changes made are comments, for better clarity to the uninitiated.

# Check for the existence of the terminus directory in the home folder. If it isn't there, Terminus is installed. If it is, Terminus is updated.
if [ ! -d "$HOME/terminus" ]
then
    # Clone terminus if it doesn't exist
    echo -e "Installing Terminus...\n"
    git clone --branch master git://github.com/pantheon-systems/terminus.git ~/terminus
    cd "$HOME/terminus"
    composer install
    cd -
else
    # Otherwise make sure terminus is up to date
    cd "$HOME/terminus"
    git pull
    composer install
    cd -
fi
