## Building cudaminer (ethminer) on debt (the GPU in ocho is too old)

### Fedora 24

- [install.log](install.log)
- negativo17 (no bumblebee or nvidia proper)
  - hacked [math_functions.h](/usr/include/cuda/math_functions.h)
  - does not complain about gcc > 5
  - requires the definition of CUDA_TOOLKIT_ROOT_DIR to satisfy cmake
    - negativo17 doesn't use /usr/local and instead completely integrates cuda into /bin, etc
    - nvidia proper used /etc/profile to set CUDA_HOME, which satisfied cmake
- [dmjp.sh](dmjp.sh) builds and runs the cuda enabled miner
  - ```./ethminer/ethminer --cuda --farm-recheck 200 --stratum eth-eu1.nanopool.org:9999 --userpass 0xA0f31E2b0228D8D8C5ED4A622B0A77510c1ac32f```
    - adding a failover server didn't work the last time it was tried
  - ```./ethminer/ethminer --cuda --benchmark``` hangs for some reason
  - ```./ethminer/ethminer --opencl``` is untested and may work in fedora24, but why bother with it?

- nvidia proper (aborted)
  - hacked [host_config.h](/usr/local/cuda-8.0/targets/x86_64-linux/include/host_config.h)
  - hacked [math_functions.h](/usr/local/cuda-8.0/targets/x86_64-linux/include/math_functions.h)
