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
}
vim.cmd("nnoremap <C-p> :lua FzfLua.files()<CR>")
-- nvim-treesitter配置
require 'nvim-treesitter.configs'.setup {
    ensure_installed = {"c", "lua", "python", "cpp", "rust", "html", "go"},
    highlight = {enable = true },
    incremental_selection = {enable = true},
    indent = {enable = true},
}
-- bufferline配置
local bufferline = require('bufferline')
bufferline.setup {
}
-- Set up nvim-cmp.
local cmp = require'cmp'
-- local insert = minisnippets.config.expand.insert or minisnippets.default_insert

cmp.setup({
--  snippet = {
--   insert({ body = args.body }) 
--   cmp.resubscribe({ "textchangedi", "textchangedp" })
--   require("cmp.config").set_onetime({ sources = {} })
--  },
    window = {
      completion = cmp.config.window.bordered(),
      documentation = cmp.config.window.bordered(),
    },
    mapping = cmp.mapping.preset.insert({
      ['<c-b>'] = cmp.mapping.scroll_docs(-4),
      ['<c-f>'] = cmp.mapping.scroll_docs(4),
      ['<c-space>'] = cmp.mapping.complete(),
      ['<c-e>'] = cmp.mapping.abort(),
      ['<cr>'] = cmp.mapping.confirm({ select = true }), 
    }),
    sources = cmp.config.sources({
      { name = 'nvim_lsp' },
      {
        name = "mini_snippets",
        option = {
          use_items_cache = false 
        }
      }, 
      { name = 'buffer' },
    })
})
-- use buffer source for `/` and `?` (if you enabled `native_menu`, this won't work anymore).
cmp.setup.cmdline({ '/', '?' }, {
    mapping = cmp.mapping.preset.cmdline(),
    sources = {
      { name = 'buffer' }
    }
})
-- use cmdline & path source for ':' (if you enabled `native_menu`, this won't work anymore).
cmp.setup.cmdline(':', {
    mapping = cmp.mapping.preset.cmdline(),
    sources = cmp.config.sources({
      { name = 'path' }
    }, {
      { name = 'cmdline' }
    }),
    matching = { disallow_symbol_nonprefix_matching = false }
})

-- set up lspconfig.
-- local capabilities = require('cmp_nvim_lsp').default_capabilities()
-- replace <your_lsp_server> with each lsp server you've enabled.
-- vim.lsp.config.setup {
    -- capabilities = capabilities
-- }

