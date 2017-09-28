#!/usr/bin/env bash
# Update the system
sudo apt-get -y update
sudo apt-get -y upgrade

# Install R and it's dependencies
. config/R/R-apt-requirements.sh
. config/R/R-install.sh
