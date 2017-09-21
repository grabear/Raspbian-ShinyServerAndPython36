#!/usr/bin/env bash
# source: https://github.com/rstudio/shiny-server/wiki/Building-Shiny-Server-from-Source#installation
# Place a shortcut to the shiny-server executable in /usr/bin
sudo ln -s /usr/local/shiny-server/bin/shiny-server /usr/bin/shiny-server

#Create shiny user. On some systems, you may need to specify the full path to 'useradd'
sudo useradd -r -m shiny

# Create log, config, and application directories
sudo mkdir -p /var/log/shiny-server
sudo mkdir -p /srv/shiny-server
sudo mkdir -p /var/lib/shiny-server
sudo chown shiny /var/log/shiny-server
sudo mkdir -p /etc/shiny-server

sudo cp shiny-server-onstartup.sh /etc/init.d/shiny-server
sudo chown -v +x shiny-server