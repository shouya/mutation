#! /bin/bash
# check file and modify some uncompatible text

for file in *.tex;
do
    sed 's/爲/為/g' $file -i
    sed 's/衆/眾/g' $file -i
done

