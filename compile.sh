#!/bin/bash

# First argument is project name. If the argument name is '.', compile all projects.

if [ $# -eq 0 ]
  then
    echo "No arguments supplied"
    exit
fi

if ! [[ -e projects/$1 ]]
  then
    echo "projects/$1 does not exist"
    exit
fi

_compileproject() {
  if ! [[ -e $1/all.md ]]
    then
      touch $1/all.md
  fi

  myfiles=`ls $1/*.md | grep -v "$1/all.md"`

  if [ -z "$myfiles" ]
    then
      #echo "FAIL: $myfiles"
      return
  else
    #echo "SUCCESS: $myfiles"
    cat `echo "$myfiles" | sort -n` > $1/all.md
  fi
}


if [[ $1 == "." ]]
  then
    cp /dev/null LINKS.md
    printf "# Links\n-----------------\n" > LINKS.md
    for PROJ in projects/*
    do
      _compileproject $PROJ
      echo "- [${PROJ/#projects/}]($PROJ/all.md)" >> LINKS.md
    done
    
  else
    _compileproject projects/$1
fi
