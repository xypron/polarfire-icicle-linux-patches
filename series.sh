#!/bin/sh

set -e

git am --abort || true
git checkout build || git checkout -b build
git reset --hard v5.18-rc3

git am ../patches/0001-clk-microchip-mpfs-don-t-reset-disabled-peripherals.patch

git am ../patches/0001-RISC-V-fixes-relocate-DTB-if-it-s-outside-memory-reg.patch

git am ../patches/0001-hwrng-mpfs-add-polarfire-soc-hwrng-support.patch
git am ../patches/0001-hwrng-mpfs-Enable-COMPILE_TEST.patch

git am ../patches/0001-clk-microchip-mpfs-fix-parents-for-FIC-clocks.patch
git am ../patches/0001-clk-microchip-mpfs-mark-CLK_ATHENA-as-critical.patch
git am ../patches/0001-riscv-dts-microchip-fix-usage-of-fic-clocks-on-mpfs.patch
git am ../patches/0001-dt-bindings-clk-mpfs-document-msspll-dri-registers.patch
git am ../patches/0001-dt-bindings-clk-mpfs-add-defines-for-two-new-clocks.patch
git am ../patches/0001-dt-bindings-rtc-add-refclk-to-mpfs-rtc.patch
git am ../patches/0001-clk-microchip-mpfs-re-parent-the-configurable-clocks.patch
git am ../patches/0001-clk-microchip-mpfs-add-RTCREF-clock-control.patch
git am ../patches/0001-riscv-dts-microchip-reparent-mpfs-clocks.patch

git am ../patches/0001-riscv-select-peripheral-drivers-for-polarfire-soc.patch
git am ../patches/0001-riscv-config-enable-the-mailbox-framework.patch
git am ../patches/0001-riscv-select-vitesse-phy-driver-for-polarfire-soc.patch
git am ../patches/0001-MAINTAINERS-add-polarfire-rng-pci-and-clock-drivers.patch
