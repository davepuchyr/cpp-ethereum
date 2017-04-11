#!/bin/bash
mkdir build
cd build
cmake -DBUNDLE=cudaminer -DCOMPUTE=61 -DCMAKE_BUILD_TYPE=Release ..
make -j8
./build/ethminer/ethminer --cuda --benchmark 

