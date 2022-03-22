#!/bin/bash

read -p "Nhap duong dan file can xu ly : " name

cat $name

read -p "Nhap ky tu can sua : " start

read -p "Nhap ky tu sua thanh : " end

sed -i s/$start/$end/g $name

echo "File da sua : "

cat $name

