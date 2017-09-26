#!/usr/bin/env bash
####
####
#### SOURCE:  https://gist.github.com/dschep/24aa61672a2092246eaca2824400d37f
####
####

# Install the required build-tools (some might already be installed on your system).
sudo apt-get update
sudo apt-get -y install build-essential tk-dev libncurses5-dev libncursesw5-dev libreadline6-dev libdb5.3-dev libgdbm-dev libsqlite3-dev libssl-dev libbz2-dev libexpat1-dev liblzma-dev zlib1g-dev

# Download and install Python 3.6
wget https://www.python.org/ftp/python/3.6.2/Python-3.6.2.tar.xz
tar xf Python-3.6.2.tar.xz
cd Python-3.6.2
./configure
make
sudo make altinstall

# Delete the source code and uninstall the previously installed packages. When uninstalling the packages, make sure you only remove those that were not previously installed on your system
sudo rm -r Python-3.6.2
sudo mv Python-3.6.2.tgz ~/Downloads/
sudo apt-get -y --purge remove build-essential tk-dev
sudo apt-get -y --purge remove libncurses5-dev libncursesw5-dev libreadline6-dev
sudo apt-get -y --purge remove libdb5.3-dev libgdbm-dev libsqlite3-dev libssl-dev
sudo apt-get -y --purge remove libbz2-dev libexpat1-dev liblzma-dev zlib1g-dev
sudo apt-get -y autoremove
sudo apt-get -y clean

