-- 设置

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
vim.cmd("syntax enable")
vim.cmd("filetype plugin indent on")

-- 变量

vim.cmd("let mapleader=\",\"")
vim.cmd("let g:indentLine_char = '|'")
vim.cmd("let g:rainbow_active = 1")

-- ab命令

vim.cmd("ab xxcc ~/学习平台/note/")
vim.cmd("ab lazypl ~/.config/lua/plugins")

-- Fm快捷键

vim.cmd("nnoremap <F1> <<")
vim.cmd("nnoremap <F2> >>")
vim.cmd("nnoremap <F3> :colorscheme onedark_dark<CR>")
vim.cmd("nnoremap <F4> :colorscheme arctic<CR>")
vim.cmd("nnoremap <F5> :colorscheme horizon<CR>")
vim.cmd("nnoremap <F9> :Play2048<CR>")
vim.cmd("nnoremap <F10> :GlobalNote<CR>")

-- Make快捷键

vim.cmd("nnoremap <C-m> :make")
vim.cmd("nnoremap <M-m> :make<CR>")

-- Leader快捷键

vim.cmd("nnoremap <Leader>w :w ")
vim.cmd("nnoremap <Leader>q :q<CR>")

vim.cmd("nnoremap <Leader>e :e ~/.config/nvim/lua/config/myconf.lua<CR>")
vim.cmd("nnoremap <Leader>p :e ~/.config/nvim/lua/config/pconf.lua<CR>")
vim.cmd("nnoremap <Leader>l :e ~/.config/nvim/lua/plugins<CR>")

vim.cmd("nnoremap <Leader>t :cd")
vim.cmd("nnoremap <Leader>ts :cd ~/学习平台<CR>")
vim.cmd("nnoremap <Leader>tr :cd ~/RSLN<CR>")

-- Ctrl快捷键新

vim.cmd("nnoremap <C-`> :ToggleTerm<CR>")
vim.cmd("nnoremap <C-g> :Neogit<CR>")
vim.cmd("nnoremap <C-s> :wa<CR>")
vim.cmd("nnoremap <C-o> :NvimTreeToggle<CR>")
vim.cmd("nnoremap <C-Tab> :bn")
vim.cmd("nnoremap <C-PageUp> :bp")
vim.cmd("nnoremap <C-PageDown> :bn")

-- Ctrl快捷键旧
vim.cmd("nnoremap <C-t> :NvimTreeToggle<CR>")
vim.cmd("nnoremap <C-l> :Lazy<CR>")

-- 对调;:

vim.cmd("nnoremap ; :")
vim.cmd("nnoremap : ;")
vim.cmd("vnoremap ; :")
vim.cmd("vnoremap : ;")
vim.cmd("cnoremap ; :")
vim.cmd("cnoremap : ;")

