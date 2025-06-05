#!/bin/bash

read -p "Nhap ten file: " FILENAME
read -p "Nhap duong dan: " DIR_PATH

if [ ! -d "$DIR_PATH" ]; then
    echo "Duong dan $DIR_PATH khong ton tai"
    exit 1
fi

if [ -f "$DIR_PATH/$FILENAME" ]; then
    echo "Tim thay file $FILENAME tai duong dan $DIR_PATH"
else
    echo "File $FILENAME khong ton tai"
fi
