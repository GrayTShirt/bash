#!/bin/bash

pushd `pwd`
repo=`mktemp`
git clone https://github.com/graytshirt/bash.git $repo
cd $repo
make install
popd
rm -rf $repo
