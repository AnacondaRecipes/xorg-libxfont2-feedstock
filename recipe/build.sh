#!/bin/bash
set -ex

./configure --prefix=$PREFIX --disable-static
make -j${CPU_COUNT}
make check
make install