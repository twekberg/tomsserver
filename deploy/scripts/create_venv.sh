#!/bin/bash

# Create a single virtualenv.
# Also creates an alias to activate the venv.
#
# Usage:
#   create_venv.sh repo_name
#
# idempotent
#------------------------------------------------------------------------------

repo_name=$1
if [ "$repo_name" = "" ]; then
    echo "usage: create_env.sh REPO_NAME"
    exit 1
fi

 
cd $HOME/src/$repo_name
if [ ! -d $repo_name-env ]; then
    python3 -m venv $repo_name-env
    source $repo_name-env/bin/activate
    pip3 install -U pip                   # Upgrades pip to the latest version
    pip3 install -r requirements.txt
fi

# Put an alias for this repo in .bashrc
if [ "$(grep a$repo_name $HOME/.bashrc)" = "" ]; then
    echo "alias a$repo_name=\"cd /home/tekberg/src/$repo_name;source $repo_name-env/bin/activate\"" >> $HOME/.bashrc
fi 
