#!/bin/bash

echo "Nhap ten thu muc:"
read folder

if [ ! -d "$folder" ]; then
        echo "thu muc nay khong ton tai hoac khong chua tap tin nao"
        exit 1
fi

count=$(ls -l "$folder" | grep '^-' | wc -l)

if [ $count -eq 0 ]; then
        echo "thu muc nay khong ton tai hoac khong chua tap tin nao"
else
        echo "So file trong thu muc $folder la: $count"
fi
