#!/bin/bash
path=/hdfs/data/data1
name_of_directory=data1
filename_excel=daily_market_price.xlsx
source_dir=/local/data/market
if [ -d "$path/$name_of_directory"]; then
    echo "There is '$name_of_directory' Directory Exists !"
    if [ -f "$source_dir/$filename_excel" ]; then
        mv "$source_dir/$filename_excel" "$path/$name_of_directory"
        if [ $? -eq 0]; then
        echo "File moved succesfully."
        else
        echo "File was failed to move."
    fi
else
    echo "'$name_of_directory' Directory Not Exists !"
    mkdir -p "$path/$name_of_directory"
    if [ $? -eq 0]; then
        echo "'$name_of_directory' created succesfully."
    else
        echo "'$name_of_directory' was failed to create."
        exit 1
    fi
fi