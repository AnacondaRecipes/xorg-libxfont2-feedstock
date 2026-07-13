#!/bin/bash
set -ex

autoreconf -fiv
./configure --prefix=$PREFIX
make -j${CPU_COUNT}
make install