#!/usr/bin/env bash
# Update the system
sudo apt-get -y update
sudo apt-get -y upgrade

# Shiny-server dependencies
# Build cmake from source (source: https://github.com/rstudio/shiny-server/wiki/Building-Shiny-Server-from-Source#installation)
cd ~/Downloads/
wget http://www.cmake.org/files/v2.8/cmake-2.8.11.2.tar.gz
tar xzf cmake-2.8.11.2.tar.gz
cd cmake-2.8.11.2
./configure
make
sudo make install

# Update the system
sudo apt-get -y update
sudo apt-get -y upgrade