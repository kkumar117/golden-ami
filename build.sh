#!bin/bash

set -eu

region=$1
app=${2:-none}
version=${3:-none}

cd packer

# packer build
packer build -var "region=$region" -var "app=$app" -var "version=$version" template.json

# use "PACKER_LOG=1 packer build -var "region=$region" -var "app=$app" -var "version=$version" template.json" prefix for debug mode