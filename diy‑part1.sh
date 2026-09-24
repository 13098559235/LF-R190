#!/bin/bash
echo "CONFIG_SMALL_FLASH=y" >> .config
echo "CONFIG_TARGET_ROOTFS_PARTSIZE=6700" >> .config

# 单块网卡最大8虚拟AP，支持STA+AP边收边发
echo "CONFIG_WIRELESS_MAX_VAPS=8" >> .config

# LuCI完整中文界面
echo "CONFIG_LUCI_LANG_zh-cn=y" >> .config

# USB挂卡驱动（RT3070归属rt2800‑usb）
echo "CONFIG_PACKAGE_kmod-net-rtl8188-usb=y" >> .config
echo "CONFIG_PACKAGE_kmod-net-rtl8192cu=y" >> .config
echo "CONFIG_PACKAGE_kmod-rt2800-usb=y" >> .config
echo "CONFIG_PACKAGE_kmod-mt7601u=y" >> .config
echo "CONFIG_PACKAGE_kmod-mt76-usb=y" >> .config

# 在线设备管控：网页点击拉黑，无需输入MAC
echo "CONFIG_PACKAGE_luci-app-online-users=y" >> .config

# WDS桥接、relayd智能中继全套底层组件
echo "CONFIG_PACKAGE_relayd=y" >> .config
echo "CONFIG_PACKAGE_luci-proto-relay=y" >> .config

# Portal网页认证底层依赖库，只编译库，主程序刷机后在线安装
echo "CONFIG_PACKAGE_luci-lib-portal=y" >> .config

echo "diy-part1 run ok"
