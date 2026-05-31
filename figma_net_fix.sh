#!/bin/bash
# ==============================================
# Figma 网络优化一键脚本
# 基于 Moonvy FigmaNetOK v2.3.0
# 自动选择「快速」模式测试并修改 Hosts
# ==============================================

FIGMA_TOOL="/Volumes/数据盘/桌面/figma代理/macos/FigmaNetOK"

if [ ! -f "$FIGMA_TOOL" ]; then
    echo "错误: 未找到 FigmaNetOK 工具，请确认文件路径。"
    exit 1
fi

echo "正在启动 Figma 网络优化工具..."
echo "系统将弹出密码对话框，请输入管理员密码以修改 Hosts 配置。"

# 使用 osascript 获取管理员权限，
# 自动发送回车选择默认的「快速」模式
osascript -e "
do shell script \"printf '\\\n' | '$FIGMA_TOOL'\" with administrator privileges
"

echo ""
echo "Figma 网络优化完成。请重启 Figma 客户端或刷新浏览器使其生效。"
（内容由AI生成，仅供参考）
（内容由AI生成，仅供参考）
