#!/bin/bash

set -eu

function log() {
  MSG=$1
  printf "\n==== %s ====\n" "${MSG}"
}

log "Updating local repository"
sudo apt-get update

log "Adding docker GPG keys"
sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add

log "Installing docker repository"
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu  $(lsb_release -cs)  stable"

log "Installing the latest Docker"
sudo apt update
sudo apt-get install docker-ce -y

log "Verifying docker version"
sudo docker --version

log "Enable Docker to run at startup"
sudo systemctl enable docker

log "Installing awscli and verifying version"
sudo apt install awscli -y
sudo aws --version

log "apt install nodejs and verifying version"
sudo apt install nodejs -y
sudo node -v