# NVIM配置
## 简介
- 这是我的Neovim配置，主要用于开发C和C++语言
## 依赖
1. Neovim > 0.10
2. Neovide
## 下载方法
1. 克隆仓库: `git clone git@github.com:hunter-hongg/Nvim-Setting`
2. 新建配置目录: `mkdir -p ~/.config/nvim/lua/{config,plugins} `
3. 新建插件目录：`mkdir -p ~/.local/share/nvim/lazy `
4. 复制配置：` cp ./Nvim-Setting ~/.config/nvim `
5. 整理配置：` mv ~/.config/nvim/Nvim-Setting/{*,.*} ~/.config/nvim/ `
             ` rmdir ~/.config/nvim/Nvim-Setting `
## 使用方法 
1. 启动nvim
2. 等待lazy.nvim下载完成
3. 等待所有插件下载完成
4. 正常使用，具体可查看配置文件
## 配置内容
1. 使用OneDarkPro代替默认配色
2. 使用Treesitter配置高亮
3. 对调;:
4. 使用lazy.nvim进行插件管理
5. 使用lualine进行状态栏增强
等等

