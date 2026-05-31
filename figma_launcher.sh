#!/bin/bash
# ==============================================
# Figma 启动器 - 自动网络优化 + 启动 Figma
# 用法：双击运行此脚本，或用它替换 Figma 的启动方式
# ==============================================

echo "⚡ 正在优化 Figma 网络..."
# 后台静默运行网络优化（会弹出密码对话框）
"/Users/dingkun/Library/Application Support/com.tencent.mac.marvis/MarvisData/User/oAN1i2XNCTo7CIzCAShegDyGTsmk/workspace/conv_19e7c136042_58e5b488fc53/output/figma_net_fix.sh" &
NETFIX_PID=$!

echo "→ 启动 Figma..."
# 打开 Figma 应用
open -a "Figma+EX" 2>/dev/null || open -a "Figma" 2>/dev/null || {
    echo "⚠ 未找到 Figma 应用，请确认已安装。"
}

# 等待网络优化完成
wait $NETFIX_PID 2>/dev/null
echo "✓ Figma 已启动，网络优化已完成。"
（内容由AI生成，仅供参考）
