#!/bin/bash
set -ex

cd secp256k1
./autogen.sh
./configure --enable-module-recovery --with-bignum=no
make
cd ..

gcc -O3 -I secp256k1/include sign.c secp256k1/.libs/libsecp256k1.a -o sign
gcc -O3 -I secp256k1/include priv_to_pub.c secp256k1/.libs/libsecp256k1.a -o priv_to_pub
