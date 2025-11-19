#!/bin/sh
path="$1"
count=0

find "$path" -type f | while IFS= read -r file
do
    md5sum=$(md5sum "$file" | awk '{print $1}')
    sha256sum=$(sha256sum "$file" | awk '{print $1}')
    sha512sum=$(sha512sum "$file" | awk '{print $1}')

    echo "${file#$path/}:"
    echo "md5 is $md5sum"
    echo "sha256 is $sha256sum"
    echo "sha512 is $sha512sum"

    count=$((count + 1))
done

files_total=$(find "$path" -type f | wc -l)
exit "$files_total"
