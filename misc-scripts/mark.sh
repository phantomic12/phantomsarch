#!/bin/bash
FILE=logs/$1.txt
PKG=$1
if test -f "$FILE"; then
    mv $FILE logs/$PKG-old.txt
else 
    echo "No older version of this package exists."
fi