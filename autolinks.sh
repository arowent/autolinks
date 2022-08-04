#!/usr/bin/bash

where_dir=$1
from_dir=$(ls $2)
group=$(groups $(whoami))

echo $group

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