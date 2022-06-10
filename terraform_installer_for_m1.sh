#!/bin/bash

VERSION=$1

TFENV_DIR="$(tfenv list | grep set | sed 's/^.*\(\/Users.*\))/\1/' | xargs dirname)"/versions
cd $TFENV_DIR

mkdir -p $VERSION
cd $VERSION
wget https://releases.hashicorp.com/terraform/${VERSION}/terraform_${VERSION}_darwin_amd64.zip
unzip terraform_${VERSION}_darwin_amd64.zip
rm terraform_${VERSION}_darwin_amd64.zip
