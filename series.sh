#!/bin/sh

set -e

git am --abort || true
git checkout build || git checkout -b build
git reset --hard v5.17.4

git am ../patches/0001-soc-add-microchip-polarfire-soc-system-controller.patch
git am ../patches/0001-soc-microchip-make-mpfs_sys_controller_put-static.patch
git am ../patches/0001-soc-microchip-fix-invalid-free-in-mpfs_sys_controlle.patch

git am ../patches/0001-clk-microchip-Add-driver-for-Microchip-PolarFire-SoC.patch

git am ../patches/0001-dt-bindings-clk-microchip-Add-Microchip-PolarFire-ho.patch
git am ../patches/0002-dt-bindings-soc-microchip-update-syscontroller-compa.patch
git am ../patches/0003-dt-bindings-soc-microchip-add-info-about-services-to.patch
git am ../patches/0004-dt-bindings-rtc-add-bindings-for-microchip-mpfs-rtc.patch
git am ../patches/0005-dt-bindings-gpio-add-bindings-for-microchip-mpfs-gpi.patch
git am ../patches/0006-dt-bindings-pwm-add-microchip-corepwm-binding.patch
git am ../patches/0007-riscv-dts-microchip-use-clk-defines-for-icicle-kit.patch
git am ../patches/0008-riscv-dts-microchip-add-fpga-fabric-section-to-icicl.patch
git am ../patches/0009-riscv-dts-microchip-refactor-icicle-kit-device-tree.patch
git am ../patches/0010-riscv-dts-microchip-update-peripherals-in-icicle-kit.patch
git am ../patches/0011-riscv-dts-microchip-add-new-peripherals-to-icicle-ki.patch
git am ../patches/0012-MAINTAINERS-update-riscv-microchip-entry.patch

# --- LINUX 5.18 ---

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
