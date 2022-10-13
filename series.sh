#!/bin/sh

set -e

git am --abort || true
git checkout build || git checkout -b build
git reset --hard v5.19.14

# https://lore.kernel.org/all/20220817132521.3159388-1-heinrich.schuchardt@canonical.com/
# git am ../0001-riscv-dts-microchip-correct-L2-cache-interrupts.patch

# Ubuntu's config-5.19.0-1002-generic already has all these settings
# https://lore.kernel.org/linux-riscv/20220422072533.2582084-2-conor.dooley@microchip.com/
# git am ../0001-riscv-select-peripheral-drivers-for-polarfire-soc.patch

# Ubuntu's config-5.19.0-1002-generic already has CONFIG_MAILBOX=y
# https://lore.kernel.org/linux-riscv/20220422072533.2582084-3-conor.dooley@microchip.com/
# git am ../0001-riscv-config-enable-the-mailbox-framework.patch

# Ubuntu's config-5.19.0-1002-generic already has CONFIG_VITESSE_PHY=m
# https://lore.kernel.org/linux-riscv/20220422072533.2582084-4-conor.dooley@microchip.com/
# git am ../0001-riscv-select-vitesse-phy-driver-for-polarfire-soc.patch

# https://lore.kernel.org/linux-riscv/20220613114642.1615292-2-conor.dooley@microchip.com/
git am ../0001-usb-musb-Add-support-for-PolarFire-SoC-s-musb-contro.patch

# 21cdd6a0e844 ("usb: musb: mpfs: Fix error codes in probe()")
# https://lore.kernel.org/r/YrVmLEc/FOEzNdzj@kili
git am ../0001-usb-musb-mpfs-Fix-error-codes-in-probe.patch

# 98ceba755928 ("usb: musb: mpfs: add missing clk_disable_unprepare() in mpfs_remove()"
# https://lore.kernel.org/linux-usb/20220628140527.1404439-1-yangyingliang@huawei.com/raw
git am ../0001-usb-musb-mpfs-add-missing-clk_disable_unprepare-in-m.patch

# i2c
# https://lore.kernel.org/all/20220603071601.1849562-1-conor.dooley@microchip.com/

# rtc
# https://lore.kernel.org/all/20220601123320.2861043-1-conor.dooley@microchip.com/

# spi (accepted for 5.20)
# https://lore.kernel.org/all/165462321288.3040195.2196860226827286633.b4-ty@kernel.org/

# pwm (still buggy, Conor working on a v2)
# https://lore.kernel.org/all/20220607084551.2735922-1-conor.dooley@microchip.com/

# PCI

# https://lore.kernel.org/linux-riscv/20220901133403.3392291-5-conor.dooley@microchip.com/
git am ../0001-riscv-dts-microchip-add-pci-dma-ranges-for-the-icicl.patch

# https://lore.kernel.org/linux-riscv/20220901133403.3392291-6-conor.dooley@microchip.com/
git am ../0001-riscv-dts-microchip-move-the-mpfs-pci-node-to-fabric.patch

# https://lore.kernel.org/linux-riscv/20220901133403.3392291-7-conor.dooley@microchip.com/
git am ../0001-riscv-dts-microchip-icicle-update-pci-address-proper.patch

# https://lore.kernel.org/linux-riscv/20220901133403.3392291-8-conor.dooley@microchip.com/
git am ../0001-riscv-dts-microchip-icicle-re-jig-fabric-peripheral-.patch

# https://lore.kernel.org/linux-riscv/20220902142202.2437658-3-daire.mcnamara@microchip.com/ 
git am ../0001-riscv-dts-microchip-add-fabric-address-translation-p.patch

# https://lore.kernel.org/linux-riscv/20220902142202.2437658-4-daire.mcnamara@microchip.com/
git am ../0001-PCI-microchip-add-fabric-address-translation-propert.patch

# https://lore.kernel.org/linux-riscv/20220902142202.2437658-5-daire.mcnamara@microchip.com/
git am ../0001-of-PCI-tidy-up-logging-of-ranges-containing-configur.patch

# Disable PCIe
git am ../0001-riscv-dts-microchip-disable-the-icicle-s-pcie-contro.patch
