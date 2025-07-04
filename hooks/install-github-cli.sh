#!/bin/bash
# Install GitHub CLI

echo "Checking for GitHub CLI..."

if ! command -v gh &> /dev/null
then
    echo "GitHub CLI not found. Installing..."
    (type -p wget >/dev/null || (sudo apt-get update && sudo apt-get install wget -y)) &&
    sudo mkdir -p -m 755 /etc/apt/keyrings &&
    wget -qO- https://cli.github.com/packages/githubcli-archive-keyring.gpg | sudo tee /etc/apt/keyrings/githubcli-archive-keyring.gpg > /dev/null &&
    sudo chmod go+r /etc/apt/keyrings/githubcli-archive-keyring.gpg &&
    echo "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/githubcli-archive-keyring.gpg] https://cli.github.com/packages stable main" | sudo tee /etc/apt/sources.list.d/github-cli.list > /dev/null &&
    sudo apt-get update &&
    sudo apt-get install gh -y
else
    echo "GitHub CLI already installed."
fi
