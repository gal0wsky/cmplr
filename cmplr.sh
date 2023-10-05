#!/bin/bash

dir=`pwd`
cd $dir

sourcefile=$1
extension="${sourcefile##*.}"
file="${sourcefile%.*}"
outputfile="${file}.exe"

if [ $extension = 'c' ]; then
    gcc $sourcefile -o $outputfile
elif [ $extension = 'cpp' ]; then
    g++ $sourcefile -o $outputfile
else
    echo "I can't compile this."
fi