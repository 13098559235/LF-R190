#!/bin/bash
echo "CONFIG_SMALL_FLASH=y" >> .config
echo "CONFIG_TARGET_ROOTFS_PARTSIZE=6700" >> .config

# 开启最大8个虚拟AP接口
echo "CONFIG_WIRELESS_MAX_VAPS=8" >> .config

# 中文语言支持
echo "CONFIG_LUCI_LANG_zh-cn=y" >> .config

# USB大功率网卡驱动内置（RT/MT主流挂卡芯片）
echo "CONFIG_PACKAGE_kmod‑net‑rtl8188‑usb=y" >> .config
echo "CONFIG_PACKAGE_kmod‑net‑rtl8192cu=y" >> .config
echo "CONFIG_PACKAGE_kmod‑rt2800‑usb=y" >> .config
echo "CONFIG_PACKAGE_kmod‑mt7601u=y" >> .config
echo "CONFIG_PACKAGE_kmod‑mt76‑usb=y" >> .config

# 在线设备管控组件（选设备拉黑，无需手动输入MAC）
echo "CONFIG_PACKAGE_luci‑app‑online‑users=y" >> .config

# 中继/WDS相关组件
echo "CONFIG_PACKAGE_relayd=y" >> .config

# portal广告认证、adblock依赖框架，只编译框架，本体不打包镜像
echo "CONFIG_PACKAGE_luci‑lib‑portal=y" >> .config

echo "diy-part2 run ok"
