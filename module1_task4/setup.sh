#!/bin/bash

# Update package lists and install required applications
apt-get update
apt-get install -y make wget

# Install the extended Hugo version
HUGO_VERSION=0.84.0
wget -q https://github.com/gohugoio/hugo/releases/download/v${HUGO_VERSION}/hugo_extended_${HUGO_VERSION}_Linux-64bit.deb
dpkg -i hugo_extended_${HUGO_VERSION}_Linux-64bit.deb
rm hugo_extended_${HUGO_VERSION}_Linux-64bit.deb

# Run the build command to generate the website
make build
