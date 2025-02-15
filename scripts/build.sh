#!/bin/bash

if ["$1" = force]
then
    dart run build_runner clean
    echo "Building..."
    dart run build_runner build --delete-conflicting-outputs
    echo "App level build done"
    flutter pub upgrade
    echo "Build.sh done"
else
    dart run build_runner clean
    dart run build_runner build
fi