-- Neovim配置文件

require("config.packer")
-- Treesitter配置
require 'nvim-treesitter.configs'.setup {
    ensure_installed = {"c", "lua", "python", "cpp", "rust", "markdown"},
    highlight = {enable = true },
    incremental_selection = {enable = true},
    indent = {enable = true},
}
-- NvimTree配置
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

vim.opt.termguicolors = true

require("nvim-tree").setup({
  sort = {
    sorter = "case_sensitive",
  },
  view = {
    width = 30,
  },
  renderer = {
    group_empty = true,
    icons = { 
      show = {
        file = false, 
        folder = false, 
        folder_arrow = false,
        git = false, 
        modified = false, 
      },
    }, 
  },
  filters = {
    dotfiles = true,
  },
})
-- neoscroll配置
require('neoscroll').setup({ mappings = {'<C-u>', '<C-d>', '<C-b>', '<C-f>'} })
-- rust-tools配置
local rt = require("rust-tools")
rt.setup({
  server = {
    on_attach = function(_, bufnr)
      -- Hover actions
      vim.keymap.set("n", "<C-space>", rt.hover_actions.hover_actions, { buffer = bufnr })
      -- Code action groups
      vim.keymap.set("n", "<Leader>a", rt.code_action_group.code_action_group, { buffer = bufnr })
    end,
  },
})
-- lualine配置
require('lualine').setup {
    options = {
        icons_enabled = false,
        theme = 'onedark',
        component_separators = { left = '|', right = '|'},
        section_separators = { left = '', right = ''},
    },
    sections = {
        lualine_a = {'mode'},
        lualine_b = {'branch', 'diff'},
        lualine_c = {'filename'},
        lualine_x = {'encoding', 'fileformat', 'filetype'},
        lualine_y = {'progress'},
        lualine_z = {'location'}
    },
    inactive_sections = {
        lualine_a = {},
        lualine_b = {},
        lualine_c = {'filename'},
        lualine_x = {},
        lualine_y = {},
        lualine_z = {}
    },
}
-- toggleterm配置
require('toggleterm').setup{}
-- 2048配置
require('2048').setup{}
-- global-note配置
local global_note = require("global-note")
global_note.setup()

vim.keymap.set("n", "<leader>n", global_note.toggle_note, {
  desc = "Toggle global note",
})
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

-- 进阶设置

vim.cmd("syntax enable")
vim.cmd("colorscheme onedark_vivid")
vim.cmd("filetype plugin indent on")

-- 基础变量 

vim.cmd("let mapleader=\",\"")

-- 插件变量 

vim.cmd("let g:rainbow_ctermfgs = ['lightblue','yellow','lightyellow','blue','green']")
vim.cmd("let g:indentLine_char = '|'")
vim.cmd("let g:rainbow_active = 1")

-- Fm快捷键 

vim.cmd("nnoremap <F1> :bn<CR>")
vim.cmd("nnoremap <F2> :bp<CR>")
vim.cmd("nnoremap <F3> <<")
vim.cmd("nnoremap <F4> >>")
vim.cmd("nnoremap <F5> :colorscheme onedark_vivid<CR>")
vim.cmd("nnoremap <F6> :colorscheme vscode<CR>")
vim.cmd("nnoremap <F7> :colorscheme nord<CR>")
vim.cmd("nnoremap <F8> :colorscheme horizon<CR>")
vim.cmd("nnoremap <F9> :Play2048<CR>")
vim.cmd("nnoremap <F10> :GlobalNote<CR>")

-- Meta快捷键 

vim.cmd("nnoremap <M-1> :ToggleTerm<CR>")
vim.cmd("nnoremap <M-2> :terminal<CR>")
vim.cmd("nnoremap <M-3> :!")

-- Make快捷键 

vim.cmd("nnoremap <C-m> :make")

-- Leader快捷键

vim.cmd("nnoremap <Leader>m :make<CR>")

vim.cmd("nnoremap <Leader>c :Git commit<CR>")
vim.cmd("nnoremap <Leader>g :Git add .<CR>")
vim.cmd("nnoremap <Leader>o :Git push origin master<CR>")

vim.cmd("nnoremap <Leader>e :e $MYVIMRC<CR>")
vim.cmd("nnoremap <Leader>p :e ~/.config/nvim/packer.lua<CR>")
vim.cmd("nnoremap <Leader>s :so $MYVIMRC<CR>")

vim.cmd("nnoremap <Leader>ts :cd ~/学习平台<CR>")
vim.cmd("nnoremap <Leader>tr :cd ~/RSLN<CR>")

vim.cmd("nnoremap <Leader>pi :PackerInstall<CR>")
vim.cmd("nnoremap <Leader>pu :PackerUpdate<CR>")

-- 窗口快捷键

vim.cmd("nnoremap <C-h> <C-w><C-h>")
vim.cmd("nnoremap <C-j> <C-w><C-j>")
vim.cmd("nnoremap <C-k> <C-w><C-k>")
vim.cmd("nnoremap <C-l> <C-w><C-l>")

-- 插件快捷键

vim.cmd("nnoremap <C-t> :NvimTreeToggle<CR>")
vim.cmd("nnoremap <C-g> :Neogit<CR>")

-- 对调;:

vim.cmd("nnoremap ; :")
vim.cmd("nnoremap : ;")

-- 禁用上下左右 

vim.cmd("nnoremap <Left> q\\  ")
vim.cmd("nnoremap <Right> q\\")
vim.cmd("nnoremap <Up> q\\")
vim.cmd("nnoremap <Down> q\\")
vim.cmd("nnoremap <C-w><Left> q\\")
vim.cmd("nnoremap <C-w><Right> q\\")
vim.cmd("nnoremap <C-w><Up> q\\")
vim.cmd("nnoremap <C-w><Down> q\\")

