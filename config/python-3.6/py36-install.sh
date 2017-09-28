#!/usr/bin/env bash
####
####
#### SOURCE:  https://gist.github.com/dschep/24aa61672a2092246eaca2824400d37f
####
####

# Update system
sudo apt-get -y update
sudo apt-get -y upgrade

# Download and install Python 3.6
DIR=`pwd`
cd ~/Downloads/
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
sudo apt-get -y --purge remove libdb5.3-dev libgdbm-dev libsqlite3-dev
sudo apt-get -y --purge remove libbz2-dev libexpat1-dev liblzma-dev zlib1g-dev
sudo apt-get -y autoremove
sudo apt-get -y clean

# Install python packages
cd $DIR
pip install -r requirements.txt

# Update system
sudo apt-get -y update
sudo apt-get -y upgrade
