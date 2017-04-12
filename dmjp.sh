#!/bin/bash

if [ -x build/ethminer/ethminer ]; then
   true;
else
   mkdir build;
   ( cd build && rm -f CMakeCache.txt && cmake -DBUNDLE=cudaminer -DCOMPUTE=61 -DCMAKE_BUILD_TYPE=Release -DCUDA_TOOLKIT_ROOT_DIR=/bin .. && make -j8 );

   # hangs on fedroa24 ./ethminer/ethminer --cuda --benchmark
fi

./build/ethminer/ethminer --cuda --farm-recheck 200 --stratum eth-eu1.nanopool.org:9999 --userpass 0xA0f31E2b0228D8D8C5ED4A622B0A77510c1ac32f
