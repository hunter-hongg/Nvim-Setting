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
-- nvim-tree配置
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

vim.opt.termguicolors = true

require("nvim-tree").setup {
    renderer = {
        icons = {
            show = {
                file = true,
                folder = true,
                folder_arrow = true,
                git = false,
                modified = true,
                hidden = true,
                diagnostics = true,
                bookmarks = true,
            },
        }
    },
    filters = {
        enable = true,
        git_ignored = true,
        dotfiles = true,
    },
}
-- 2048.nvim配置
require('2048').setup{}
-- Comment.nvim配置
require('Comment').setup()
-- toggleterm配置
require('toggleterm').setup{}
-- todo-comments.nvim配置
require('todo-comments').setup()
-- fzf-lua配置
require("fzf-lua").setup{
    file_icons = false, 
}
vim.cmd("nnoremap <C-p> :lua FzfLua.files{ file_icons = false }<CR>")
-- nvim-treesitter配置
require 'nvim-treesitter.configs'.setup {
    ensure_installed = {"c", "lua", "python", "cpp", "rust", "markdown", "html", "go"},
    highlight = {enable = true },
    incremental_selection = {enable = true},
    indent = {enable = true},
}
-- bufferline配置
local bufferline = require('bufferline')
bufferline.setup {
}
-- gitsigns配置
gitsigns.setup{}
