#!/bin/bash
echo "CONFIG_SMALL_FLASH=y" >> .config
echo "CONFIG_TARGET_ROOTFS_PARTSIZE=6700" >> .config
echo "diy-part2 run ok"