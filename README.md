# Rasbian Installation of Shiny-Server and Python 3.6.0

# Overview

The current setup has been tested on Raspbian Stretch with a Raspberry Pi 3 Model B.  

These installations take a very long time on the raspberry pi.  Especially if you are using wifi.  At the time of writing I do not currently know how long each installation takes. It's recommended to do them one at a time or do the full installation overnight or start it in the morning.

# Full Installation

This installation should be done overnight.
All of the following software will be installed with master-install.sh:

* APT packages
  * **R dependencies** 
    * `libxml2-dev`, `libssl-dev`, `libcurl4-openssl-dev`, `libssh2-1-dev`
  * **Python dependencies**
    * `cmake`
    * `build-essential`, `tk-dev`, `libncurses5-dev`, `libncursesw5-dev`, `libreadline6-dev`, `libdb5.3-dev`, `libgdbm-dev`, `libsqlite3-dev`, `libssl-dev`, `libbz2-dev`, `libexpat1-dev`, `liblzma-dev`, `zlib1g-dev`
* R and R packages
  * **CRAN**
    * `devtools`, `shiny`, `shinythemes`, `shinyBS`, `shinyjs`, `europepmc`, `DT`, `data.table`, `markdown`, `rclipboard`, `shinycssloaders`, `shinydashboard`, `shinyFiles`, `shinyFeedback`,`shinyHeatmaply`, `shinyjqui`, `shinyWidgets`, `bsplus`, `colourpicker`
  * **GitHub**
    * `cstubben/euPMC`, `robear22890/shinyLP`, `mkuhn/dict`, `ayayron/shinydnd`, `Appsilon/shiny.semantic`, `rstudio/miniUI`, `zachcp/msaR`
  * **Bioconductor**
    * `ggtree`, `cummeRbund`
* Shiny-Server
* Python 3.6.2
  * **PyPI**
    * `pandas >= 0.19.2`
    * `slacker == 0.9.42`
    * `biopython == 1.70`
    * `cookiecutter == 1.5.1`
    * `sciluigi == 0.9.5b6`

To install simply invoke the following on the command line:
```bash
pi@raspberrypi $ . master-install.sh
```
# Python 3.6.2 Installation()

_Python 3.6.2 installation on Rasbian was inspired by
[this Gist](https://gist.github.com/dschep/24aa61672a2092246eaca2824400d37f)._

To install python 3.6.2:
```bash
pi@raspberrypi $ . master-python3.6.2-install.sh
```

This installation script also installs the PyPi packages in requirements.txt file.
If you do not desire these packages, then comment out the following lines in the py3.6.2-install.sh file:
```python
...
sudo apt-get -y autoremove
sudo apt-get -y clean

# Install python packages
#cd $DIR
#pip install -r requirements.txt

# Update system
sudo apt-get -y update
sudo apt-get -y upgrade
```

Alternatively, you can rewrite the requirements.txt file to fit your own needs.

**Note:** _At the time of writing this guide Python 3.6.2 was the latest release.  If a newer release is available via the python [website](https://www.python.org/downloads/source/), then please make a pull request that changes the various file names and code.  You may also feel free to manually change them yourself._

# R Installation

To install R:
```bash
pi@raspberrypi $ . master-R-install.sh
```

# Shiny-Server Installation

_Shiny-Server installation on Raspbian was inspired by R-Studio's guide [here](https://github.com/rstudio/shiny-server/wiki/Building-Shiny-Server-from-Source#installation)._

To install Shiny-Server:
```bash
pi@raspberrypi $ . master-shiny-server-install.sh
```

After shiny server is installed it will automatically run on reboot. In order to remove this functionality comment out the following lines in the shiny-server.service file:
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

# Coming Soon... R-Studio-Server Installation

Currently R-studio has been difficult to install. I've tried on several different occasions and used several different methods.
