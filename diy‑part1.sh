#!/bin/bash
# Copyright (c) 2019‑2020 P3TERX <https://p3terx.com>
# Actions‑OpenWrt diy‑part1.sh
# 执行时机：更新 feeds 之前
# 方案2：LF‑R190 AR9331 8M/64M，禁止任何内核动态patch，防止DTS损坏

# ========= 不添加任何第三方feed，使用源码自带官方feed =========
# 这里不做wget/patch，彻底关闭内核打补丁，避免#24故障

echo "==== diy‑part1.sh done ===="
