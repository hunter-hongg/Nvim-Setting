-- 基本设置

vim.cmd("set nocompatible")
vim.cmd("set noshowmode")
vim.cmd("set number")
vim.cmd("set cursorline")
vim.cmd("set tabstop=4")
vim.cmd("set shiftwidth=4")
vim.cmd("set expandtab")
vim.cmd("set autoindent")
vim.cmd("set smartindent")
vim.cmd("set ignorecase")
vim.cmd("set smartcase")
vim.cmd("set incsearch")
vim.cmd("set nohlsearch")
vim.cmd("set nobackup")
vim.cmd("set nowritebackup")
vim.cmd("set noswapfile")
vim.cmd("set nu")

-- 进阶设置

vim.cmd("syntax enable")
-- vim.cmd("colorscheme horizon")
vim.cmd("filetype plugin indent on")

-- 基础变量

vim.cmd("let mapleader=\",\"")

-- 插件变量

vim.cmd("let g:indentLine_char = '|'")
vim.cmd("let g:rainbow_active = 1")

-- ab命令配置

vim.cmd("ab xxcc ~/学习平台/note/")
vim.cmd("ab lazyconf ~/.config/lua/plugins")

-- Fm快捷键

vim.cmd("nnoremap <F1> :bn<CR>")
vim.cmd("nnoremap <F2> :bp<CR>")
vim.cmd("nnoremap <F3> <<")
vim.cmd("nnoremap <F4> >>")
vim.cmd("nnoremap <F5> :colorscheme onedark_dark<CR>")
vim.cmd("nnoremap <F6> :colorscheme arctic<CR>")
vim.cmd("nnoremap <F7> :colorscheme horizon<CR>")
vim.cmd("nnoremap <F8> :Play2048<CR>")
vim.cmd("nnoremap <F9> :GlobalNote<CR>")

-- Meta快捷键

vim.cmd("nnoremap <M-1> :ToggleTerm<CR>")
vim.cmd("nnoremap <M-2> :terminal<CR>")
vim.cmd("nnoremap <M-3> :!")

-- Make快捷键

vim.cmd("nnoremap <C-m> :make")

-- Leader快捷键

vim.cmd("nnoremap <Leader>m :make<CR>")
vim.cmd("nnoremap <Leader>w :w ")
vim.cmd("nnoremap <Leader>q :q<CR>")

vim.cmd("nnoremap <Leader>e :e ~/.config/nvim/lua/config/myconf.lua<CR>")
vim.cmd("nnoremap <Leader>p :e ~/.config/nvim/lua/config/pconf.lua<CR>")
vim.cmd("nnoremap <Leader>l :e ~/.config/nvim/lua/plugins<CR>")

vim.cmd("nnoremap <Leader>ts :cd ~/学习平台<CR>")
vim.cmd("nnoremap <Leader>tr :cd ~/RSLN<CR>")

vim.cmd("nnoremap <Leader>pi :PackerInstall<CR>")
vim.cmd("nnoremap <Leader>pu :PackerUpdate<CR>")

-- 对调;:

vim.cmd("nnoremap ; :")
vim.cmd("nnoremap : ;")
vim.cmd("vnoremap ; :")
vim.cmd("vnoremap : ;")
vim.cmd("cnoremap ; :")
vim.cmd("cnoremap : ;")

-- Ctrl快捷键
vim.cmd("nnoremap <C-s> :wa<CR>")
vim.cmd("nnoremap <C-t> :NvimTreeToggle<CR>")
vim.cmd("nnoremap <C-g> :Neogit<CR>")
vim.cmd("nnoremap <C-`> :ToggleTerm<CR>")
vim.cmd("nnoremap <C-l> :Lazy<CR>")
