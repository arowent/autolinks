#!/usr/bin/bash

from_dir=/home/arowent/example/project/
where_dir=/home/arowent/example/stend/

function setLinks() {
  for item in $from_dir*; do
    if [ -d $item ]; then
      if [ -d $where_dir$(basename $item) ]; then
        rm $where_dir$(basename $item)
        ln -s $item /home/arowent/example/stend/
      else
        ln -s $item /home/arowent/example/stend/
      fi
    fi
  done
}

if [ $1 ]; then
  setLinks
else
  echo "Write directory"
fi

#for item in /home/arowent/example/project/*; do
#  if [ -d $item ]; then
#    if [ -d /home/arowent/example/stend/$(basename $item) ]; then
#      #      echo $(basename $item)
#      rmdir /home/arowent/example/stend/$(basename $item)
#      ln -s $item /home/arowent/example/stend/
#    else
#      ln -s $item /home/arowent/example/stend/
#    fi
#  fi
#done

#where_dir=$1
#from_dir=$(ls $2)
#group=$(groups $(whoami))
#
#echo $group

# # echo "Where directory: $(ls $1)"
# # echo "From directory: $(ls $2)"

# for item in $from_dir; do
#   echo "$2$item"
#   ln -s "$1" "$2$item"
#   chown $(whoami):
#   # ln -s
#   # if [ -d $item ]; then
#   #   echo '$item'
#   #   # ln -s $1 $2
#   # fi
# done
