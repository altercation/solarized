#!/bin/sh

mkdir colors
cp Solarized\ Light.xml colors
cp Solarized\ Dark.xml colors
touch IntelliJ\ IDEA\ Global\ Settings

jar cfM settings.jar IntelliJ\ IDEA\ Global\ Settings colors

rm -r colors
rm IntelliJ\ IDEA\ Global\ Settings