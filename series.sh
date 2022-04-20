#!/bin/sh

set -e

git am --abort || true

git am ../patches/0001-RISC-V-defconfigs-add-VITESSE_PHY.patch
git am ../patches/0001-riscv-config-enable-the-mailbox-framework.patch
git am ../patches/0001-riscv-select-vitesse-phy-driver-for-polarfire-soc.patch
git am ../patches/0001-MAINTAINERS-add-polarfire-rng-pci-and-clock-drivers.patch
