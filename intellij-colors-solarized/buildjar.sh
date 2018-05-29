#!/bin/bash

# Create a Darcula version of the specified color scheme.
#
# Usage:
#        createDarculaVersion sourceFile targetFile
#
function createDarculaVersion {
  cp "${1}" "${2}"

  # Append " (Darcula)" to the name of the scheme
  sed -i'.orig' -e 's/\(<scheme name="[^"]*\)\(" .*\)/\1 \(Darcula\)\2/' "${2}"

  # Remove any existing FILESTATUS elements
  sed -i'.orig' -e '/<option name="FILESTATUS_/d' "${2}"

  # Replace the notification background
  sed -i'.orig' -e 's/<option name="NOTIFICATION_BACKGROUND.*$/<option name="NOTIFICATION_BACKGROUND" value="73642" \/>/' "${2}"

  # Use Darcula parent theme
  sed -i'.orig' -e 's/\(parent_scheme\)="[^"]*"/\1="Darcula"/' "${2}"

  # Fix static methods
  sed -i'.orig' -e 's/<\/attributes>/<option name="DEFAULT_STATIC_METHOD"><value><option name="FONT_TYPE" value="2" \/><\/value><\/option><\/attributes>/' "${2}"

  # Special handling for Solarized Dark
  if [[ ${2} =~ .*Dark.* ]]
  then
    # Function declarations
    sed -i'.orig' -e 's/<\/attributes>/<option name="DEFAULT_FUNCTION_DECLARATION"><value><option name="FOREGROUND" value="839496" \/><\/value><\/option><\/attributes>/' "${2}"
    # Instance methods
    sed -i'.orig' -e 's/<\/attributes>/<option name="DEFAULT_INSTANCE_METHOD"><value><option name="FOREGROUND" value="839496" \/><\/value><\/option><\/attributes>/' "${2}"
  fi

  # Special handling for Solarized Light
  if [[ ${2} =~ .*Light.* ]]
  then
    # Function declarations
    sed -i'.orig' -e 's/<\/attributes>/<option name="DEFAULT_FUNCTION_DECLARATION"><value><option name="FOREGROUND" value="586E75" \/><\/value><\/option><\/attributes>/' "${2}"
    # Instance methods
    sed -i'.orig' -e 's/<\/attributes>/<option name="DEFAULT_INSTANCE_METHOD"><value><option name="FOREGROUND" value="586E75" \/><\/value><\/option><\/attributes>/' "${2}"
    # Parameter hints
    sed -i'.orig' -e 's/<\/attributes>/<option name="INLINE_PARAMETER_HINT"><value><option name="FOREGROUND" value="7A7A7A" \/><option name="BACKGROUND" value="EDEDED" \/><\/value><\/option><\/attributes>/' "${2}"
  fi

  rm "${2}.orig"
}

# Create the "colors" directory for the scheme files
# and copy the .icls scheme files there
mkdir colors
cp Solarized\ Light.icls colors
cp Solarized\ Dark.icls colors

# Create Darcula versions of both schemes,
createDarculaVersion colors/Solarized\ Light.icls colors/Solarized\ Light\ \(Darcula\).icls
createDarculaVersion colors/Solarized\ Dark.icls colors/Solarized\ Dark\ \(Darcula\).icls

# Create .xml versions of all schemes for backwards compatibility
cp colors/Solarized\ Light.icls colors/Solarized\ Light.xml
cp colors/Solarized\ Dark.icls colors/Solarized\ Dark.xml
cp colors/Solarized\ Light\ \(Darcula\).icls colors/Solarized\ Light\ \(Darcula\).xml
cp colors/Solarized\ Dark\ \(Darcula\).icls colors/Solarized\ Dark\ \(Darcula\).xml

# Create an empty "IntelliJ IDEA Global Settings" file,
# needed to be able to import the JAR using "Import Settings..."
touch IntelliJ\ IDEA\ Global\ Settings

# Create the JAR file
jar cfM settings.jar IntelliJ\ IDEA\ Global\ Settings colors

# Cleanup
rm -r colors
rm IntelliJ\ IDEA\ Global\ Settings

echo "settings.jar generated"
