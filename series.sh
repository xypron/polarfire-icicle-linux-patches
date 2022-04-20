#!/bin/sh

set -e

git am --abort || true

git am ../patches/0001-clk-microchip-mpfs-fix-parents-for-FIC-clocks.patch
git am ../patches/0001-clk-microchip-mpfs-mark-CLK_ATHENA-as-critical.patch
git am ../patches/0001-riscv-dts-microchip-fix-usage-of-fic-clocks-on-mpfs.patch
git am ../patches/0001-dt-bindings-clk-mpfs-document-msspll-dri-registers.patch
git am ../patches/0001-dt-bindings-clk-mpfs-add-defines-for-two-new-clocks.patch
git am ../patches/0001-dt-bindings-rtc-add-refclk-to-mpfs-rtc.patch
git am ../patches/0001-clk-microchip-mpfs-re-parent-the-configurable-clocks.patch
git am ../patches/0001-clk-microchip-mpfs-add-RTCREF-clock-control.patch
git am ../patches/0001-riscv-dts-microchip-reparent-mpfs-clocks.patch

git am ../patches/0001-RISC-V-defconfigs-add-VITESSE_PHY.patch
git am ../patches/0001-riscv-config-enable-the-mailbox-framework.patch
git am ../patches/0001-riscv-select-vitesse-phy-driver-for-polarfire-soc.patch
git am ../patches/0001-MAINTAINERS-add-polarfire-rng-pci-and-clock-drivers.patch
