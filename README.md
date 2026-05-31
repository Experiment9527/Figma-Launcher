# Figma Launcher

一键优化 Figma 网络 + 启动 Figma 的 macOS 启动器。

在中国大陆使用 Figma 时，经常会遇到加载缓慢、卡顿等问题。本工具基于 [Moonvy/Figma-Net-OK](https://github.com/Moonvy/Figma-Net-OK) 的测速引擎，在启动 Figma 前自动测试所有 Figma 服务器响应速度，选出最佳线路并修改 Hosts 配置，让 Figma 恢复流畅。

每次点击 Figma Launcher，自动完成「网络优化 → 启动 Figma」一条龙。

---

## 效果

| 使用前 | 使用后 |
|--------|--------|
| 打开 Figma 经常白屏/加载缓慢 | 自动选最佳线路，秒开 |
| 手动打开终端 → 运行工具 → 选择模式 → 输入密码 | 一键点击，输入密码即可 |
| 切换网络环境后又要重新测速 | 每次启动自动重新测速 |

---

## 安装

### 方式一：DMG 安装（推荐）

1. 从 [Releases](https://github.com/Experiment9527/Figma-Launcher/releases/latest/download/Figma.dmg) 下载 `Figma.dmg`
2. 双击打开 DMG 文件
3. 将 `Figma启动器.app` 拖入 `Applications` 文件夹
4. 首次打开时，macOS 可能提示「无法验证开发者」：
   - 打开 **系统设置 → 隐私与安全性**，点击「仍要打开」

### 方式二：手动安装

1. 下载本项目
2. 将 `Figma启动器.app` 拖入 `应用程序` 文件夹或桌面
3. （可选）拖入程序坞，替换原来的 Figma 图标
4. 首次运行时，macOS 可能提示「无法验证开发者」：
   - 打开 **系统设置 → 隐私与安全性**，点击「仍要打开」

---

## 使用

点击 **Figma启动器** 图标 → 弹出密码框时输入管理员密码 → 自动测速并优化网络 → Figma 自动启动。

之后每次启动 Figma 都通过此图标即可。

---

## 原理

```
点击图标 → 自动运行 FigmaNetOK（快速模式）
         → 测试各个 Figma 服务器的真实连接速度
         → 自动修改 /etc/hosts 指向最快服务器
         → 启动 Figma.app
```

- 不使用代理/VPN，仅修改本地 Hosts
- FigmaNetOK 测速引擎来自 [Moonvy/Figma-Net-OK](https://github.com/Moonvy/Figma-Net-OK) v2.3.0
- 每次启动都重新测速，适应网络环境变化

---

## 依赖

- macOS 10.15+
- 已安装 Figma 客户端（`Figma+EX.app` 或 `Figma.app`）
- 管理员权限（修改 Hosts 需要）

---

## 文件说明

| 文件 | 说明 |
|------|------|
| `Figma启动器.app` | 主程序，双击使用 |
| `figma_net_fix.sh` | 网络优化脚本，自动选择快速模式 |
| `figma_launcher.sh` | 启动器脚本，先优化网络再启动 Figma |
| `FigmaNetOK/FigmaNetOK` | Moonvy 测速引擎 (v2.3.0) |
| `FigmaNetOK/res/` | 测速引擎依赖文件 |

---

## 常见问题

**Q: 为什么需要输入密码？**  
A: 修改 `/etc/hosts` 文件需要管理员权限，这是 macOS 的安全机制。

**Q: 会影响其他网络吗？**  
A: 不会。只修改 Figma 相关域名（`www.figma.com`、`static.figma.com` 等）的 Hosts 条目。

**Q: 切换 WiFi 后需要重新运行吗？**  
A: 每次通过 Figma Launcher 启动都会自动重新测速，无需额外操作。

**Q: 和 FigmaNetOK 原版有什么区别？**  
A: 原版需要手动打开终端运行。本工具将其包装为一键启动器，省去所有手动步骤。

---

## 鸣谢

- [Moonvy/Figma-Net-OK](https://github.com/Moonvy/Figma-Net-OK) — Figma 网络测速引擎
- Figma 图标版权归 Figma, Inc. 所有

---

## 许可

本项目代码部分采用 MIT 许可。FigmaNetOK 引擎及其依赖遵循其原始许可。

---

## 下载

最新 DMG 安装包：[Figma.dmg](https://github.com/Experiment9527/Figma-Launcher/releases/latest/download/Figma.dmg)
