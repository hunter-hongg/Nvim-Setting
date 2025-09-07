# NVIM配置
## 简介
- 这是我的Neovim配置，主要用于开发C和C++语言
## 依赖
1. Neovim > 0.10
2. packer.nvim下载好，存放至~/.local/share/nvim/site/pack/packer/start目录
## 下载方法
1. 克隆仓库: `git clone git@github.com:hunter-hongg/Nvim-Setting`
2. 新建配置目录: `mkdir -p ~/.config/nvim `
3. 复制插件下载: `cp Nvim-Setting/packer.lua ~/.config/nvim/init.lua`
4. 启动nvim，输入`:PackerInstall`安装插件
5. 复制配置: `cp Nvim-Setting/* ~/.config/nvim/`

## 使用方法 
1. 按下;运行命令（替代:），输入PackerInstall回车，等待下载完毕 
2. 重启Neovim 
3. 运行;cd命令选择指定目录，按下`<C-t>`快捷键打开NvimTree目录树
4. 使用hjkl移动光标，不能使用键盘上的上下左右
5. 使用`<C-h>` `<C-j>` `<C-k>` `<C-l>`移动窗口 
6. 进入编辑模式等同标准Neovim 
## 配置内容
1. 使用OneDarkPro代替默认配色，可使用`<F5>`切换回OneDarkPro，`<F6>`切换VSCode主题，`<F7>`切换Nord主题，`<F8>`切换Horizon主题
2. 使用Treesitter配置高亮，默认下载C C++ Rust Lua Python Markdown 
3. 禁用上下左右键
4. 对调;:
5. 使用packer.nvim进行插件管理
6. 使用lualine进行状态栏增强
7. 使用vim-easycomplete进行补全
8. 其他配置

