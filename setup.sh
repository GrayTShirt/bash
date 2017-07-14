#!/bin/bash

orig=`pwd`
repo=`mktemp -d`
git clone https://github.com/graytshirt/bash.git $repo || exit 1
cd $repo
make install
cd $orig
rm -rf $repo
