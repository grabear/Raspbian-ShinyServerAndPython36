#!/usr/bin/env bash
# Update the system
sudo apt-get -y update
sudo apt-get -y upgrade

# Install R
sudo echo "deb http://http://mirrors.nics.utk.edu/cran/bin/linux/debian stretch-cran34/" >> /etc/apt/sources.list
sudo cat /etc/apt/sources.list
sudo apt-key adv --keyserver keys.gnupg.net --recv-key 'E19F5F87128899B192B1A2C2AD5F960A256A04AF'
sudo apt-get -y update
sudo apt-get -y install r-base r-base-dev

# Update the system
sudo apt-get -y update
sudo apt-get -y upgrade

# Install R packages
Rscript requirements.R
