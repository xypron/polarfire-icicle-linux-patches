#!/bin/sh

set -e

git am --abort || true
git checkout build || git checkout -b build
git reset --hard v5.19-rc1

git am ../patches/0001-riscv-select-peripheral-drivers-for-polarfire-soc.patch
git am ../patches/0001-riscv-config-enable-the-mailbox-framework.patch
git am ../patches/0001-riscv-select-vitesse-phy-driver-for-polarfire-soc.patch
git am ../patches/0001-MAINTAINERS-add-polarfire-rng-pci-and-clock-drivers.patch

# https://lore.kernel.org/all/20220607132204.746180-1-conor.dooley@microchip.com/
git am ../patches/0001-usb-musb-Add-support-for-PolarFire-SoC-s-musb-contro.patch
git am ../patches/0001-MAINTAINERS-add-musb-to-PolarFire-SoC-entry.patch
# git am ../patches/0001-riscv-dts-microchip-fix-icicle-kit-s-dr_mode.patch

git am ../patches/0001-riscv-dts-microchip-re-add-pdma-to-mpfs-device-tree.patch

# i2c
# https://lore.kernel.org/all/20220603071601.1849562-1-conor.dooley@microchip.com/

# rtc
# https://lore.kernel.org/all/20220601123320.2861043-1-conor.dooley@microchip.com/

# spi (accepted for 5.20)
# https://lore.kernel.org/all/165462321288.3040195.2196860226827286633.b4-ty@kernel.org/

# pwm (still buggy, Conor working on a v2)
# https://lore.kernel.org/all/20220607084551.2735922-1-conor.dooley@microchip.com/
