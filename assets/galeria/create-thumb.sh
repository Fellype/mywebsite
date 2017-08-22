#!/bin/bash

for file in *; do
    if [ "$file" == "create-thumb.sh" ] ; then
        continue;
    fi
    echo "Prcoessing image $file ..."
    /usr/bin/convert -thumbnail 300 $file thumb.$file
    echo '<img src="/assets/galeria/'${PWD##*/}'/'thumb.$file'" data-full="/assets/galeria/'${PWD##*/}'/'$file'" class="m-p-g__thumbs-img" />' >> "code.html"
done