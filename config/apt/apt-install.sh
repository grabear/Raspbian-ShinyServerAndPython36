#!/usr/bin/env bash
# Update the system
sudo apt-get -y update
sudo apt-get -y upgrade

# Install R dependencies
sudo apt-get -y install libxml2-dev libssl-dev libcurl4-openssl-dev libssh2-1-dev

# Install Python 3.6 dependencies
# Install the required build-tools (some might already be installed on your system).
sudo apt-get -y install build-essential tk-dev libncurses5-dev libncursesw5-dev libreadline6-dev libdb5.3-dev libgdbm-dev libsqlite3-dev libssl-dev libbz2-dev libexpat1-dev liblzma-dev zlib1g-dev
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