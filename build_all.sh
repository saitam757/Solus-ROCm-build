#!/bin/bash
#

f_build()
{
    make local
    sudo cp *.eopkg /var/lib/solbuild/local/
}

cd numactl
make
sudo cp *.eopkg /var/lib/solbuild/local/

cd ../roct-thunk-interface/
f_build

cd ../rocr-runtime
f_build

cd ../llvm-roc
f_build

cd ../rocm-cmake
f_build

cd ../rocm-comgr
f_build

cd ../rocm-device-libs
f_build

cd ../rocm-opencl-runtime
f_build

cd ../rocminfo
f_build