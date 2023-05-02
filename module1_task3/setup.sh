#!/bin/bash

# Update package lists and install required applications
apt-get update
apt-get install -y hugo make

# Run the build command to generate the website
make build
