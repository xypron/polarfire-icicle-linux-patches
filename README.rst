Linux kernel patches for PolarFire Icicle board
===============================================

This repository contains branches for different upstream kernel versions to
build a Linux kernel that runs on the PolarFire Icicle board.

.. code:: bash

    git clone https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux.git
    git clone https://github.com/xypron/polarfire-icicle-linux-patches patches
    cd patches/
    git checkout linux-5.17
    cd ../linux
    ../patches/series.sh
    cp ../patches/config .config
    make bindeb-pkg -j$(nproc)
