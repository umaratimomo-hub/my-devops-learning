#!/bin/bash
echo "Welcome to Build script!"
firstline=$(head -n 1 source/changelog.md) 
read -a splitfirstline <<< $firstline
version=${splitfirstline[1]}
echo 'Would you like to exit? Press 1 for yes or 0 to exit.'
read versioncontinue

if [ $versioncontinue -eq 1 ]
then
  for filename in source/*
  do
    echo $filename
    if [ $filename == source/secretinfo.md ]
      then
        echo '$filename is not being copied'
      else
        echo '$filename is being copied'
        cp $filename build
    fi
  done

echo 'These are the files that are currently in version' $version 'of the build directory:'
ls build

else
  echo "Please come back when you are ready"
fi
