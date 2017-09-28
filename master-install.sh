#!/usr/bin/env bash

# These must be installed before Python 3.6.2 and/or R can be installed
# Install apt packages
. config/apt/apt-install.sh

# This must be installed before shiny-server is installed
# Install R and R Packages
. config/R/R-install.sh

# Install shiny-server and enable autostart
. config/shiny-server/shiny-server-install.sh
. config/shiny-server/shiny-server-post-install.sh

# Install python 3.6.2 and python packages
. config/python-3.6.2/py3.6.2-install.sh

sudo reboot