# How to setup Super-Linter

## Purpose
For this project I am expecting a combination of shell scripts, yaml and typescript files. Having a linter will support validation and best practise checks in place.

## Setup
Following instructions here [Super-Linter](https://github.com/github/super-linter/blob/master/docs/run-linter-locally.md)

Steps I documented below are my local setup and should not be used followed as is.

### Install Docer
docker pull github/super-linter:latest

### Run docker
docker run -e RUN_LOCAL=true -v /Users/sadaram/Documents/02.Projects/netlabs/k3s-homelab:/tmp/lint github/super-linter
