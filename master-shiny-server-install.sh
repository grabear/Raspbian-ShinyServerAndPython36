#!/usr/bin/env bash

# Install R
. master-R-install.sh

# Install Shiny-Server
. config/shiny-server/shiny-server-requirements.sh
. config/shiny-server/shiny-server-install.sh
. config/shiny-server/shiny-server-post-install.sh