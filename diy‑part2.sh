#!/bin/bash
# LF‑R190挂卡专用，OpenWrt‑23.05，RT3070驱动内置
cat >> .config <<'EOF'
# 强制指定设备！这三行决定网口、WiFi、指示灯正常，缺一不可
CONFIG_TARGET_ath79=y
CONFIG_TARGET_ath79_generic=y
CONFIG_TARGET_ath79_generic_DEVICE_lf‑r190=y

# USB底层驱动，USB网卡必须
CONFIG_PACKAGE_kmod‑usb‑core=y
CONFIG_PACKAGE_kmod‑usb‑ehci=y
CONFIG_PACKAGE_kmod‑usb‑ohci=y

# RT3070全套挂卡驱动，插上就识别radio1
CONFIG_PACKAGE_kmod‑rt2800‑usb=y
CONFIG_PACKAGE_kmod‑rt2x00‑lib=y
CONFIG_PACKAGE_kmod‑rt2x00‑common=y

# 中文界面与后台组件
CONFIG_LUCI_LANG_zh‑cn=y
CONFIG_PACKAGE_luci‑base=y
CONFIG_PACKAGE_luci‑mod‑admin‑full=y
CONFIG_PACKAGE_luci‑mod‑network=y
CONFIG_PACKAGE_luci‑mod‑system=y
EOF

make defconfig
echo "==== diy‑part2.sh 执行完毕：LF‑R190挂卡配置已写入 ===="
