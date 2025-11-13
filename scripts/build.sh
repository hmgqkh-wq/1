#!/bin/bash
echo "Building ExynosTools for Linux..."
echo "Note: This binary is for Android/Winlator use"

mkdir -p build
cd build
cmake ..
make

if [ -f "exynostools" ]; then
    echo "Build successful!"
    echo "Binary: build/exynostools"
    echo "Copy this file to Android/data/Winlator/drivers/"
else
    echo "Build failed!"
    exit 1
fi
