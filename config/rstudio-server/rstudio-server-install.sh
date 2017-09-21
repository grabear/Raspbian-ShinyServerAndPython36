#!/usr/bin/env bash

# Clone the repository from GitHub
git clone https://github.com/rstudio/rstudio/
cd rstudio

# Install dependencies
./dependencies/linux/install-dependencies-debian --exclude-qt-sdk
./dependencies/common/install-common

# Make a build directory and change into it
mkdir build
cd build

# Use cmake to configure the build
cmake -DRSTUDIO_TARGET=Server -DCMAKE_BUILD_TYPE=Release ..

# Install the software
sudo make install

# R-Studio Server Configuration
sudo useradd -r rstudio-server