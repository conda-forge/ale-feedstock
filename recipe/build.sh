#!/bin/bash

set -e # Abort on error

mkdir build && cd build
echo $PREFIX
ls -al $PREFIX/lib/libpython*
cmake -DCMAKE_BUILD_TYPE=Release -DCMAKE_INSTALL_PREFIX=$PREFIX -DCMAKE_INSTALL_LIBDIR=lib -DBUILD_TESTS=OFF ..
cmake --build . --target install
cd ..
pip install . --no-deps -vv
