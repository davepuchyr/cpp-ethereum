## Building cudaminer (ethminer) on debt (the GPU in ocho is too old)

- Fedora 21 (for gcc-4.9 since cuda does not play well with gcc > 5 )
- cuda-8.0 (from fedora23 but is fine with fedora21)
- custom rolled libjson-rpc-cpp
- [install.log](install.log)
  - bumblebee and rpmfusion are not required (in theory)
- [dmjp.sh](dmjp.sh) is a build script

