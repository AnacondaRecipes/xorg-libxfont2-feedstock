#!/bin/bash
set -ex

# prevent pkgconfig from looking at host environment .pc files
export PKG_CONFIG_LIBDIR="${PREFIX}/lib/pkgconfig:${PREFIX}/share/pkgconfig"

./configure --prefix=$PREFIX --disable-static
make -j${CPU_COUNT}
make check
make install