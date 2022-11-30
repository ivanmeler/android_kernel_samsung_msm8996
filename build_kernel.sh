#!/bin/bash

export CROSS_COMPILE=/home/ivanmeler/android/system/prebuilts/gcc/linux-x86/aarch64/aarch64-linux-android-4.9/bin/aarch64-linux-android-

mkdir out
export ARCH=arm64
export SEC_BUILD_OPTION_HW_REVISION=02
make -C $(pwd) O=$(pwd)/out KCFLAGS=-mno-android heroqlte_chn_open_defconfig
make -C $(pwd) O=$(pwd)/out KCFLAGS=-mno-android -j8

cp out/arch/arm64/boot/Image $(pwd)/arch/arm64/boot/Image
