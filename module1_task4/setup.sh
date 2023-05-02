#!/bin/bash

# Update package lists and install required applications
apt-get update
apt-get install -y make golang-go git curl wget

# Install the extended Hugo version
curl -L https://github.com/gohugoio/hugo/releases/download/v0.84.0/hugo_0.84.0_Linux-64bit.deb -o hugo.deb
apt install ./hugo.deb

# Run the build command to generate the website
make build
