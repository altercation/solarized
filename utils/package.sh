#!/bin/sh

export COPYFILE_DISABLE=true
rm -rf ~/tmp/solarized*
cp -r ~/wrk/solarized ~/tmp/
cd ~/tmp/solarized
rm -rf .*
rm -rf **/.*
rm **/*.un~
rm -rf img
rm -rf tests
rm -rf utils
cd ..
gnutar -czvf solarized.tar.gz solarized
rm -rf solarized

