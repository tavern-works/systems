#!/bin/bash
set -e

SYSTEMS="$(./systems.sh)"

echo -n "Building... "

for system in $SYSTEMS
do
    cd $system
        rm -f ../${system}.zip
        zip -qr ../${system}.zip .
    cd ..
done

echo "done"
