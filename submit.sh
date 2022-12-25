#!/bin/bash

if [ $# -eq 0 ]
  then
    echo "No arguments supplied"
    exit
fi

cur_date=$(date +'%m-%d-%Y')
mkdir -p projects/$1

gen_file="projects/$1/$cur_date.html"

if ! [[ -e $gen_file ]]
  then
    cp template.html $gen_file
fi

vim $gen_file
