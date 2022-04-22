Linux kernel patches for PolarFire Icicle board
===============================================

This repository contains branches for different upstream kernel versions to
build a Linux kernel that runs on the PolarFire Icicle board.

Up to now I have been using the Icicle Kit Reference Design 2021.11
(https://github.com/polarfire-soc/icicle-kit-reference-design/releases/tag/2021.11)
for the first stage boot loader and U-Boot upstream.

Usage
-----

.. code:: bash

    git clone https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux.git
    git clone https://github.com/xypron/polarfire-icicle-linux-patches patches
    cd patches/
    git checkout linux-5.17
    cd ../linux
    ../patches/series.sh
    cp ../patches/config .config
    make bindeb-pkg -j$(nproc)

License
-------

The patches fall under the same license as the Linux Kernel (see
https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/COPYING)
if not explicitly stating otherwise.
