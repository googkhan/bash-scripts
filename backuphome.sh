#!/bin/bash

if [ -z $1 ]; then
    user=$(whoami)
else
    if [ ! -d "/home/$1" ]; then
        echo "Requested $1 user home directory doesn't exist"
        exit 1
    fi
    user=$1
fi

input=/home/$user
output=/tmp/${user}_home_$(date +%Y-%m-%d_%H%M%S).tar.gz

function total_files {
    find $1 -type f | wc -l
}

function total_directories {
    find $1 -type d | wc -l
}

function total_archived_directories {
    find $1 -type d | grep \$ | wc -l
}

function total_archived_files {
    tar -tzf $1 | grep -v \$ | wc -l
}

tar -czf $output $input 2> /dev/null

src_files=$( total_files $input )
src_directories=$( total_directories $input )

arch_directories=$( total_archived_directories $output )
arch_files=$( total_archived_files $output )

echo -n "Files to be included: "
total_files $input

echo -n "Directories to be included: "
total_directories $input

echo -n "Files archived: $arch_files"
echo -n "Directories archived: $arch_directories )

if [ $src_files -eq $arch_files ]; then
    echo "Backup of $input completed!"
    echo "Details about the output backup file: "
    ls -l $output
else
    echo "Backup of $input failed!"
fi
