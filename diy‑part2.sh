#!/bin/bash
# Copyright (c) 2019‑2020 P3TERX <https://p3terx.com>
# Actions‑OpenWrt diy‑part2.sh
# 执行时机：feeds install完成，编译开始前

# 基础配置：中文界面、RT3070 USB无线网卡驱动
cat >> .config <<'EOF'
CONFIG_LUCI_LANG_zh‑cn=y
CONFIG_PACKAGE_kmod‑rt2800‑usb=y
CONFIG_PACKAGE_kmod‑rt2x00‑lib=y
CONFIG_PACKAGE_luci‑base=y
CONFIG_PACKAGE_luci‑mod‑admin‑full=y
CONFIG_PACKAGE_luci‑mod‑network=y
CONFIG_PACKAGE_luci‑mod‑system=y
EOF

# 编译预处理
make defconfig

echo "==== diy‑part2.sh done ===="
