#!/bin/bash

# Install k3s

curl -sfL https://get.k3s.io | sh -

# install Helm
curl https://helm.baltorepo.com/organization/signing.asc | sudo apt-key add -
sudo apt-get install apt-transport-https --yes
echo "deb https://baltocdn.com/helm/stable/debian/ all main" | sudo tee /etc/apt/sources.list.d/helm-stable-debian.list
sudo apt-get update
sudo apt-get install helm


# Setup github
cd "$HOME" || exit
git config --global user.email "kal@netlabs.com.au"
git config --global user.name "kalsadaram"