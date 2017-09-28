#!/usr/bin/env bash
# Install Dependencies
sudo apt-get install libxml2-dev libssl-dev libcurl4-openssl-dev libssh2-1-dev
# Install R
sudo echo "deb http://http://mirrors.nics.utk.edu/cran/bin/linux/debian stretch-cran34/" >> /etc/apt/sources.list
sudo cat /etc/apt/sources.list
sudo apt-key adv --keyserver keys.gnupg.net --recv-key 'E19F5F87128899B192B1A2C2AD5F960A256A04AF'
sudo apt-get update
sudo apt-get install r-base r-base-dev

# Install R packages
Rscript requirements.R
