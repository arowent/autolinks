#!/usr/bin/bash

from_dir=/home/arowent/example/project/
where_dir=/home/arowent/example/stend/

function setLinks() {
  for item in $from_dir*; do
    if [ -d $item ]; then
      if [ -d $where_dir$(basename $item) ]; then
        rm $where_dir$(basename $item)
        ln -s $item /home/arowent/example/stend/
        echo "Ссылка на папку $where_dir$(basename $item) - перезаписана."
      else
        ln -s $item /home/arowent/example/stend/
        echo "Ссылка на папку $where_dir$(basename $item) - создана."
      fi
    fi
  done
}

# run script
echo "This script does not require superuser access."
if [ $1 ]; then
  setLinks
else
  echo "Вы не указали папку из которой требуется создать smlink."
fi
