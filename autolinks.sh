#!/usr/bin/env bash


if [ $1 ]; then
  if [ -d $1 ]; then
    echo "Yes, $1 is directory"
  else
    echo "No, '$1' is not a directory"
  fi
else
  echo "Please specify the directory"
fi