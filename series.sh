#!/bin/sh

set -e

git am --abort || true
git checkout build || git checkout -b build
git reset --hard v5.19.1

# Ubuntu's config-5.19.0-1002-generic already has all these settings
# https://lore.kernel.org/linux-riscv/20220422072533.2582084-2-conor.dooley@microchip.com/
git am ../0001-riscv-select-peripheral-drivers-for-polarfire-soc.patch

# Ubuntu's config-5.19.0-1002-generic already has CONFIG_MAILBOX=y
# https://lore.kernel.org/linux-riscv/20220422072533.2582084-3-conor.dooley@microchip.com/
git am ../0001-riscv-config-enable-the-mailbox-framework.patch

# Ubuntu's config-5.19.0-1002-generic already has CONFIG_VITESSE_PHY=m
# https://lore.kernel.org/linux-riscv/20220422072533.2582084-4-conor.dooley@microchip.com/
git am ../0001-riscv-select-vitesse-phy-driver-for-polarfire-soc.patch

# https://lore.kernel.org/linux-riscv/20220613114642.1615292-2-conor.dooley@microchip.com/
git am ../0001-usb-musb-Add-support-for-PolarFire-SoC-s-musb-contro.patch

# i2c
# https://lore.kernel.org/all/20220603071601.1849562-1-conor.dooley@microchip.com/

# rtc
# https://lore.kernel.org/all/20220601123320.2861043-1-conor.dooley@microchip.com/

# spi (accepted for 5.20)
# https://lore.kernel.org/all/165462321288.3040195.2196860226827286633.b4-ty@kernel.org/

# pwm (still buggy, Conor working on a v2)
# https://lore.kernel.org/all/20220607084551.2735922-1-conor.dooley@microchip.com/
