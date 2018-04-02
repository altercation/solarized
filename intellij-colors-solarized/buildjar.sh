#!/bin/sh

mkdir colors
cp Solarized\ Light.xml colors
cp Solarized\ Dark.xml colors
cp Solarized\ Light.xml colors/Solarized\ Light.icls
cp Solarized\ Dark.xml colors/Solarized\ Dark.icls
touch IntelliJ\ IDEA\ Global\ Settings

jar cfM settings.jar IntelliJ\ IDEA\ Global\ Settings colors

rm -r colors
rm IntelliJ\ IDEA\ Global\ Settings
echo "Complete!"
