#!/bin/bash


for wid in 64 128 256 512 800 1024 1280 1600 2048
do
    for f in ${*}
    do
        PNG=$(basename "$f" .svg)-$wid.png
        echo converting $f to $PNG
        rsvg-convert --width=$wid "$f" -o "$PNG"
    done
done
