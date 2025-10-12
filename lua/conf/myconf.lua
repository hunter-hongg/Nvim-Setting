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
vim.cmd("set clipboard+=unnamedplus")
vim.cmd("set background=light")
vim.cmd("syntax enable")
vim.cmd("filetype plugin indent on")

-- 变量

vim.cmd("let g:indentLine_char = '|'")
vim.cmd("let g:rainbow_active = 1")

-- ab命令

vim.cmd("ab xxcc ~/学习平台/")
vim.cmd("ab cmod ~/cmakeout/")
vim.cmd("ab lazypl ~/.config/lua/plugins")

-- Fm快捷键

vim.cmd("nnoremap <F1> <<")
vim.cmd("nnoremap <F2> >>")
vim.cmd("nnoremap <F3> :colorscheme onelight<CR>")
vim.cmd("nnoremap <F4> :colorscheme tokyonight-day<CR>")
vim.cmd("nnoremap <F5> :colorscheme leaf<CR>")
vim.cmd("nnoremap <F6> :colorscheme gruvbox<CR>")
vim.cmd("nmap <F8> <F10><Esc>")
vim.cmd("nnoremap <F9> :Play2048<CR>")
vim.cmd("nnoremap <F10> :CMakeSelectCwd /home/coding/学习平台<cr>:CMakeSelectBuildDir /home/coding/cmakeout<cr>:!rm ~/桌面/out<cr>:!rm ~/桌面/*.json<cr>")

-- Make快捷键

vim.cmd("nnoremap <C-m> :make")
vim.cmd("nnoremap <M-m> :make<CR>")

-- Leader快捷键

vim.cmd("nnoremap <Leader>w :w ")
vim.cmd("nnoremap <Leader>q :q<CR>")

vim.cmd("nnoremap <Leader>s :source $MYVIMRC<CR>")
vim.cmd("nnoremap <Leader>e :e ~/.config/nvim/lua/conf/myconf.lua<CR>")
vim.cmd("nnoremap <Leader>p :e ~/.config/nvim/lua/conf/pconf.lua<CR>")
vim.cmd("nnoremap <Leader>l :e ~/.config/nvim/lua/plugins<CR>")

vim.cmd("nnoremap <Leader>t :cd ")
vim.cmd("nnoremap <Leader>ts :cd ~/学习平台<CR>")
vim.cmd("nnoremap <Leader>tp :cd ~/PerlLearning<CR>")
vim.cmd("nnoremap <Leader>tc :cd ~/cding<cr>")

vim.cmd("nnoremap <Leader>mb :CMakeSelectBuildDir /home/coding/cmakeout<CR>")
vim.cmd("nnoremap <Leader>mc :CMakeSelectCwd") 
vim.cmd("nnoremap <Leader>mx :CMakeSelectCwd /home/coding/学习平台<CR>")
vim.cmd("nnoremap <Leader>mk :CMakeBuild -j4<CR>")
vim.cmd("nnoremap <Leader>mr :CMakeRun<CR>")

-- Ctrl快捷键新

vim.cmd("nnoremap <C-`> :ToggleTerm<CR>")
vim.cmd("nnoremap <C-g> :LazyGit<CR>")
vim.cmd("nnoremap <C-s> :wa!<CR>")
vim.cmd("inoremap <C-s> <Esc>:wa<CR>i")
vim.cmd("nnoremap <C-o> :NvimTreeToggle<CR>")
vim.cmd("nnoremap <C-x> :")
vim.cmd("nnoremap <C-h> <C-w>h")
vim.cmd("nnoremap <C-j> <C-w>j")
vim.cmd("nnoremap <C-k> <C-w>k")
vim.cmd("nnoremap <C-l> <C-w>l")
vim.cmd("nnoremap <C-e> :e ~/.config/nvim/lua/conf/lualine-conf.lua")
vim.cmd("nnoremap <C-Tab> :bn<CR>")
vim.cmd("nnoremap <C-PageUp> :bp<CR>")
vim.cmd("nnoremap <C-PageDown> :bn<CR>")
vim.cmd("nnoremap <C-p> :lua Snacks.picker.files()<CR>")

-- Ctrl快捷键旧

vim.cmd("nnoremap <C-t> :echo \'<C-t>快捷键已经不再使用。请使用<C-o>打开NvimTree\'<CR>")

-- Meta快捷键

vim.cmd("nnoremap <M-x> :Lazy<CR>")
vim.cmd("nnoremap <M-d> :lua Snacks.dashboard()<cr>")
vim.cmd("nnoremap <M-s> :AutoSession save<cr>")
vim.cmd("nnoremap <M-r> :AutoSession search<cr>")
vim.cmd("nnoremap <M-u> :lua require('undotree').toggle()<cr>")
vim.cmd("nnoremap <M-q> :Rg ")
vim.cmd("nnoremap <M-e> :GrugFar<cr>")
vim.cmd("inoremap <M-e> <Esc>:GrugFar<cr>")

-- 对调;:

vim.cmd("nnoremap ; :")
vim.cmd("nnoremap : ;")
vim.cmd("vnoremap ; :")
vim.cmd("vnoremap : ;")
vim.cmd("cnoremap ; :")
vim.cmd("cnoremap : ;")

-- 禁用上下左右
vim.cmd("nnoremap <Up> :echo \"请使用k向上移动\"<CR>")
vim.cmd("nnoremap <Down> :echo \"请使用j向下移动\"<CR>")
vim.cmd("nnoremap <Left> :echo \"请使用h向左移动\"<CR>")
vim.cmd("nnoremap <Right> :echo \"请使用l向右移动\"<CR>")

