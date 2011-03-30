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
rm -rf files
rm ~/wrk/solarized/files/*.zip

mkdir ~/tmp/solarized-packaged

cd ~/tmp
#gnutar -czvf ~/tmp/solarized-packaged/solarized.tar.gz solarized
zip -rvX ~/tmp/solarized-packaged/solarized.zip solarized
#cp ~/tmp/solarized-packaged/solarized.tar.gz ~/tmp/solarized-packaged/solarized-$1.tar.gz
cp ~/tmp/solarized-packaged/solarized.zip ~/tmp/solarized-packaged/solarized-$1.zip
cp ~/tmp/solarized-packaged/solarized*.zip ~/wrk/solarized/files/

cd ~/tmp/solarized
#gnutar -czvf ~/tmp/solarized-packaged/vim-colors-solarized.tar.gz vim-colors-solarized
#gnutar -czvf ~/tmp/solarized-packaged/mutt-colors-solarized.tar.gz mutt-colors-solarized
zip -rvX ~/tmp/solarized-packaged/vim-colors-solarized.zip vim-colors-solarized
zip -rvX ~/tmp/solarized-packaged/mutt-colors-solarized.zip mutt-colors-solarized

#cp ~/tmp/solarized-packaged/vim-colors-solarized.tar.gz ~/tmp/solarized-packaged/vim-colors-solarized-$1.tar.gz
#cp ~/tmp/solarized-packaged/mutt-colors-solarized.tar.gz ~/tmp/solarized-packaged/mutt-colors-solarized-$1.tar.gz
cp ~/tmp/solarized-packaged/vim-colors-solarized.zip ~/tmp/solarized-packaged/vim-colors-solarized-$1.zip
cp ~/tmp/solarized-packaged/mutt-colors-solarized.zip ~/tmp/solarized-packaged/mutt-colors-solarized-$1.zip
cp ~/tmp/solarized-packaged/vim-colors-solarized*.zip ~/wrk/solarized/files/
cp ~/tmp/solarized-packaged/mutt-colors-solarized*.zip ~/wrk/solarized/files/

cd ~/tmp
rm -rf solarized

