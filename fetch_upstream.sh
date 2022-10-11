#!/usr/bin/bash


# check if remote "upstream" exists
if ! git remote | grep -q upstream; then
    git remote add upstream https://pagure.io/fedora-comps.git
fi

# fetch upstream
git fetch upstream

git pull upstream main --rebase