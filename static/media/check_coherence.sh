#!/bin/bash
set -euo pipefail
IFS=$'\n\t'

for file in $(find recettes -name "main.orig.jpg"); do
    filemd=$(echo ../../content/$(dirname $file).md)
    [ -f $filemd ] || echo "Missing file: $filemd"
    grep -q "photo: true" $filemd || echo "'photo' attribute missing in $filemd"
done

