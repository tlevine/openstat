#!/bin/sh
set -e

all_well=true

for file in $(ls); do
  if test $file = .git ||
    (test -f $file && echo $file | grep '.key$' > /dev/null ) ||
    (test -d $file && test $file = bin) ||
    (test -f $file && test $file = Makefile) ||
    (test -f $file && test $file = readme.md)
  then sleep 0
  elif ! test -d $file
  then
    echo "'$file' is not supposed to be there."
    all_well=false
  else
    (
      cd $file
      ls | grep '^index\.' > /dev/null
    ) ||
    echo "'$file' should contain an index file."
    all_well=false
  fi
done

if $all_well; then
  echo "All is well."
fi
