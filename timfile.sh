#!/bin/bash

echo "Nhap duong dan file can tim:"
read -p 'Duong dan: ' path

echo "list file:"

ls $path | grep .sh

set -x
for f in *
do
   file $f
done
