#!/bin/sh

set -e

git am --abort || true
git checkout build || git checkout -b build
git reset --hard v5.19-rc1

git am ../patches/0001-hwrng-mpfs-Enable-COMPILE_TEST.patch

git am ../patches/0001-riscv-select-peripheral-drivers-for-polarfire-soc.patch
git am ../patches/0001-riscv-config-enable-the-mailbox-framework.patch
git am ../patches/0001-riscv-select-vitesse-phy-driver-for-polarfire-soc.patch
git am ../patches/0001-MAINTAINERS-add-polarfire-rng-pci-and-clock-drivers.patch
