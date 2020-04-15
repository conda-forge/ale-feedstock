#!/bin/bash

set -e # Abort on error

mkdir build && cd build
cmake -DCMAKE_BUILD_TYPE=Release -DCMAKE_INSTALL_PREFIX=$PREFIX -DCMAKE_INSTALL_LIBDIR=lib -DBUILD_TESTS=OFF -DALE_USE_EXTERNAL_JSON=OFF -DALE_USE_EXTERNAL_EIGEN=OFF ..
cmake --build . --target install
cd ..
pip install . --no-deps -vv
