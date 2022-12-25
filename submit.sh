#!/bin/bash

# First argument is project name. Second flag ('-n'), if enabled, forces creation of new project folder. 
# Otherwise, script exits if project folder doesn't exist.

if [ $# -eq 0 ]
  then
    echo "No arguments supplied"
    exit
fi

cur_date=$(date +'%m-%d-%Y')

if ! [[ $2 == "-n" || -e projects/$1 ]]
  then
    echo "projects/$1 does not exist; try re-running with flag -n"
    exit
fi

mkdir -p projects/$1
    

gen_file="projects/$1/$cur_date.html"

if ! [[ -e $gen_file ]]
  then
    cp template.html $gen_file
fi

vim $gen_file
