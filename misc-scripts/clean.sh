#!/bin/bash

directory="$1"

find "$directory" -type f ! -name "*.iso" -exec rm -f {} \;
