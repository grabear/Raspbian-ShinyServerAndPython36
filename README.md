# Installation of Shiny Server and Python 3.6.0 on Raspbian for Raspberry Pi

## Overview
The purpose for this project is to simplify the installation of Shiny Server and Python on the Raspian OS for Raspberry Pi.  

## Pre-Requisites:
The current setup has been tested on [Raspbian Stretch](https://www.raspberrypi.org/downloads/raspbian/) with a Raspberry Pi 3 Model B.  The installation will take some time; especially over wifi. It is recommended to run this over ethernet.

It's recommended to run the installation one step at a time OR do the full installation when you have several hours to allow it to complete.

## Full Installation
To run the full installation use master-install.sh.  Again, recommended to do this overnight or when you can dedicate several hours for completion.

The following software will be installed with the full installation:
* **APT packages**
  * **R dependencies**
    * `libxml2-dev`, `libssl-dev`, `libcurl4-openssl-dev`, `libssh2-1-dev`
  * **Python dependencies**
    * `cmake`
    * `build-essential`, `tk-dev`, `libncurses5-dev`, `libncursesw5-dev`, `libreadline6-dev`, `libdb5.3-dev`, `libgdbm-dev`, `libsqlite3-dev`, `libssl-dev`, `libbz2-dev`, `libexpat1-dev`, `liblzma-dev`, `zlib1g-dev`
* **R and R packages**
  * **CRAN**
    * `devtools`, `shiny`, `shinythemes`, `shinyBS`, `shinyjs`, `europepmc`, `DT`, `data.table`, `markdown`, `rclipboard`, `shinycssloaders`, `shinydashboard`, `shinyFiles`, `shinyFeedback`,`shinyHeatmaply`, `shinyjqui`, `shinyWidgets`, `bsplus`, `colourpicker`
  * **GitHub**
    * `cstubben/euPMC`, `robear22890/shinyLP`, `mkuhn/dict`, `ayayron/shinydnd`, `Appsilon/shiny.semantic`, `rstudio/miniUI`, `zachcp/msaR`
  * **Bioconductor**
    * `ggtree`, `cummeRbund`
* **Shiny-Server**
* **Python 3.6.2**
  * **PyPI**
    * pandas >= 0.19.2
    * slacker == 0.9.42
    * biopython == 1.70
    * cookiecutter == 1.5.1
    * sciluigi == 0.9.5b6

#### To run full installation:
```bash
pi@raspberrypi $ . master-install.sh
```
## Python 3.6.2 Installation
_Python 3.6.2 installation on Raspbian was inspired by
[this Gist](https://gist.github.com/dschep/24aa61672a2092246eaca2824400d37f)._

#### To install python 3.6.2:
```bash
pi@raspberrypi $ . master-python3.6.2-install.sh
```

This installation script also installs the PyPI packages in requirements.txt file.
If you do not desire these packages, then comment out the following lines in the py3.6.2-install.sh file:
```python
...
sudo apt-get -y autoremove
sudo apt-get -y clean

# Install python packages
# cd $DIR
# pip install -r requirements.txt

# Update system
sudo apt-get -y update
sudo apt-get -y upgrade
```

Alternatively, you can rewrite the requirements.txt file to fit your own needs.

**Note:** _At the time of writing this guide Python 3.6.2 was the latest release.  If a newer release is
available via the python [website](https://www.python.org/downloads/source/), then please make a pull
request that changes the various file names and code.  You may also feel free to manually change them yourself._

## R Installation
#### To install R :
```bash
pi@raspberrypi $ . master-R-install.sh
```

## Shiny-Server Installation
_Shiny-Server installation on Raspbian was inspired by R-Studio's guide [here](https://github.com/rstudio/shiny-server/wiki/Building-Shiny-Server-from-Source#installation)._

#### To install Shiny-Server:
```bash
pi@raspberrypi $ . master-shiny-server-install.sh
```

After shiny server is installed it will automatically run on reboot.  In order to
remove this functionality comment out the following lines in the shiny-server.service file:
```bash
[Service]
Type=simple
ExecStart=/usr/bin/shiny-server
#Restart=always

ExecReload=/bin/kill -HUP $MAINPID
ExecStopPost=/bin/sleep 5
RestartSec=1


[Install]
WantedBy=multi-user.target
```
___
## Future Release Features
*  R-Studio-Server Installation
