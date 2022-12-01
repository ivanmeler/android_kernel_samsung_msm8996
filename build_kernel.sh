#!/bin/bash

export CROSS_COMPILE=/home/ivanmeler/android/system/prebuilts/gcc/linux-x86/aarch64/aarch64-linux-android-4.9/bin/aarch64-linux-android-

mkdir out
export ARCH=arm64
make -C $(pwd) O=$(pwd)/out heroqlte_chn_open_defconfig
make -C $(pwd) O=$(pwd)/out -j8

cp out/arch/arm64/boot/Image $(pwd)/arch/arm64/boot/Image
