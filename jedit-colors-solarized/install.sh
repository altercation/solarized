#!/bin/sh

trap 'ret=$?; test $ret -ne 0 && printf "failed\n\n" >&2; exit $ret' EXIT
set -e

[ "" = "$1" ] && THEME="dark" || THEME="$1"

[ ! -d $HOME/.jedit ] && mkdir -p $HOME/.jedit

if [ "dark" != "$THEME" ] && [ "light" != "$THEME" ]
then
  echo "Theme should be 'dark' or 'light'"
  exit 1
fi

DIR=$(dirname $0)

cat $DIR/solarized-base >> $HOME/.jedit/properties
cat $DIR/solarized-$THEME >> $HOME/.jedit/properties

echo "Please, restart jEdit to apply the new theme"
exit 0

#EOF
