#!/bin/sh
set -e

for file in $(ls); do
  if test $file = .git ||
    (test -f $file && echo $file | grep '.key$' > /dev/null ) ||
    (test -d $file && test $file = bin) ||
    (test -f $file && test $file = Makefile) ||
    (test -f $file && test $file = readme.md)
  then sleep 0
  elif ! test -d $file
  then echo "'$file' is not supposed to be there."
  else
    (
      cd $file
      ls | grep '^index\.' > /dev/null
    ) ||
    echo "'$file' should contain an index file."
  fi
done
