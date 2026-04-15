# Linux Dotfiles

一套基于 Wayland 的 Linux 桌面环境配置，使用 Niri 作为窗口管理器，Waybar 作为状态栏。

## 📦 组件

- **窗口管理器**: Niri (实验性 Wayland 平铺窗口管理器)
- **状态栏**: Waybar (高度可定制的 Wayland 状态栏)
- **终端**: Alacritty (GPU 加速的终端模拟器)
- **锁屏**: Hyprlock (Wayland 屏幕锁定器)
- **启动器**: Fuzzel (Wayland 应用启动器)
- **通知**: Mako (Wayland 通知守护进程)
- **输入法**: Fcitx5

## 📁 目录结构

```
dotfile/
├── alacritty/
│   └── alacritty.toml      # Alacritty 终端配置
├── niri/
│   ├── config.kdl          # Niri 主配置文件
│   ├── binds.kdl           # 快捷键绑定配置
│   ├── rule.kdl            # 窗口和图层规则
│   ├── layout.kdl          # 布局配置
│   ├── output.kdl          # 显示器配置
│   ├── hyprlock.conf       # 锁屏配置
│   └── scripts/            # Niri 相关脚本
└── waybar/
    ├── config              # Waybar 配置文件
    ├── style.css           # Waybar 样式文件
    └── scripts/            # Waybar 自定义脚本
```

## 🚀 快速开始

### 安装依赖

```bash
# Arch Linux
sudo pacman -S niri waybar alacritty fuzzel mako fcitx5 fcitx5-im hyprlock swww wlsunset

# 其他发行版请参考相应包管理器
```

### 安装配置文件

```bash
# 克隆仓库
git clone https://github.com/yourusername/dotfile.git ~/.config/dotfile

# 创建符号链接
ln -s ~/.config/dotfile/alacritty ~/.config/alacritty
ln -s ~/.config/dotfile/niri ~/.config/niri
ln -s ~/.config/dotfile/waybar ~/.config/waybar
```

### 启动 Niri

```bash
# 添加到启动脚本或通过显示管理器启动
exec niri
```

## ⌨️ 快捷键

### 窗口管理
- `Mod + Enter`: 打开终端
- `Mod + Tab`: 切换窗口
- `Mod + Shift + Tab`: 反向切换窗口
- `Mod + Q`: 关闭窗口
- `Mod + Shift + Q`: 强制关闭窗口

### 工作区
- `Mod + 1-9`: 切换到指定工作区
- `Mod + Shift + 1-9`: 将窗口移动到指定工作区

### 布局
- `Mod + D`: 切换到列布局
- `Mod + S`: 切换到行布局
- `Mod + W`: 切换到堆叠布局

### 其他
- `Mod + Space`: 打开应用启动器
- `Mod + Shift + E`: 退出 Niri
- `Print`: 截图

## 🎨 主题

- **终端主题**: Tokyo Night
- **状态栏**: 自定义深色主题
- **光标主题**: Breeze
- **图标主题**: Adwaita

## 📝 配置说明

### Niri 配置

主配置文件 `config.kdl` 包含以下主要部分：

- **环境变量**: 设置语言、输入法、主题等
- **光标配置**: 主题、大小、自动隐藏
- **输入设备**: 键盘、触摸板、鼠标设置
- **动画**: 工作区切换动画效果
- **启动项**: 自动启动的应用程序和守护进程

### Waybar 配置

Waybar 配置包含以下模块：

- **工作区**: 显示和切换工作区
- **时钟**: 显示当前时间和日期
- **系统监控**: CPU、内存使用情况
- **网络**: WiFi 和以太网状态
- **音频**: 音量和麦克风控制
- **电池**: 电量状态和健康度
- **剪贴板**: 剪贴板历史记录
- **电源菜单**: 电源选项菜单

### Alacritty 配置

- **透明度**: 80% 不透明度
- **字体**: JetBrainsMono Nerd Font (13pt)
- **Shell**: Fish
- **配色方案**: Tokyo Night

## 🔧 自定义脚本

### Niri 脚本

- `niri-binds`: 快捷键绑定脚本
- `niri-quick-switch-fuzzel.py`: 快速窗口切换
- `random-wallpaper.sh`: 随机壁纸切换
- `screenshot-sound.sh`: 截图音效
- `swayidle.sh`: 闲置管理
- `toggle-wlsunset`: 护眼模式切换

### Waybar 脚本

- `cpu`: CPU 使用率监控
- `weather`: 天气信息
- `microphone`: 麦克风状态
- `music`: 音乐播放状态
- `netspeed`: 网络速度监控
- `workspaces-niri`: 工作区管理
- `power-menu`: 电源菜单
- `clipboard`: 剪贴板管理

## 🐛 常见问题

### 输入法漏字问题

在 `config.kdl` 中设置：
```
LC_CTYPE "en_US.UTF-8"
```

### GTK 应用启动缓慢

如果是 NVIDIA 双显卡，设置：
```
GSK_RENDERER "gl"
```

### 屏幕分享问题

确保已启动 xdg-desktop-portal-gnome：
```
spawn-sh-at-startup "dbus-update-activation-environment --systemd WAYLAND_DISPLAY XDG_CURRENT_DESKTOP=niri & /usr/lib/xdg-desktop-portal-gnome"
```

## 📄 许可证

本项目采用 MIT 许可证 - 详见 [LICENSE](LICENSE) 文件

## 🤝 贡献

欢迎提交 Issue 和 Pull Request！

## 📮 联系方式

如有问题或建议，欢迎通过以下方式联系：

- GitHub Issues: [创建 Issue](https://github.com/yourusername/dotfile/issues)
- Email: your.email@example.com

---

**注意**: 本配置主要针对 Arch Linux 和其他基于 Arch 的发行版，其他发行版可能需要适当调整。
