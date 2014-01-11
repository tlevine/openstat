#!/bin/sh

for file in $(ls); do
  if test $file = .git ||
    (test -f $file && echo $file | grep '.key$' > /dev/null ) ||
    (test -d $file && test $file = bin) ||
    (test -f $file && test $file = Makefile) ||
    (test -f $file && test $file = readme.md)
  then sleep 0
  else
    echo a
  fi
done
