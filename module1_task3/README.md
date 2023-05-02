# Awesome Inc. Website

This repository contains the source code for the Awesome Inc. website, built using GoHugo and the Ananke theme.

## Prerequisites

To build and manage the website, you need the following software installed on your system:

1. GoHugo (Extended version) - Static site generator. Visit [GoHugo's website](https://gohugo.io/getting-started/installing/) for installation instructions.
2. GNU Make - A build automation tool. It comes pre-installed on most Unix-based systems (Linux, macOS).

## Lifecycle

The lifecycle of the website consists of the following steps:

1. **Build**: Generate the website from the markdown and configuration files in the `dist/` directory. Run `make build` to execute this step.
2. **Clean**: Clean up the content of the `dist/` directory. Run `make clean` to execute this step.
3. **Post**: Create a new blog post using the environment variables `POST_NAME` and `POST_TITLE`. Run `make post` to execute this step.

To get more information about the available Makefile targets, run `make help`.
