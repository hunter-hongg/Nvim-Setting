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
    view = {
      width = 30,
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
vim.lsp.config('clangd', {
    capabilities = capabilities
})
-- noice.nvim配置
require("noice").setup({
  lsp = {
    -- override markdown rendering so that **cmp** and other plugins use **Treesitter**
    override = {
      ["vim.lsp.util.convert_input_to_markdown_lines"] = true,
      ["vim.lsp.util.stylize_markdown"] = true,
      ["cmp.entry.get_documentation"] = true, -- requires hrsh7th/nvim-cmp
    },
  },
  -- you can enable a preset for easier configuration
  presets = {
    bottom_search = true, -- use a classic bottom cmdline for search
    command_palette = true, -- position the cmdline and popupmenu together
    long_message_to_split = true, -- long messages will be sent to a split
    inc_rename = false, -- enables an input dialog for inc-rename.nvim
    lsp_doc_border = false, -- add a border to hover docs and signature help
  },
})
-- mini.indentscope配置
require('mini.indentscope').setup()
-- rainbow-delimiters.nvim配置
---@type rainbow_delimiters.config
vim.g.rainbow_delimiters = {
   strategy = {
       [''] = 'rainbow-delimiters.strategy.global',
       vim = 'rainbow-delimiters.strategy.local',
   },
   query = {
       [''] = 'rainbow-delimiters',
       lua = 'rainbow-blocks',
   },
   priority = {
       [''] = 110,
       lua = 210,
   },
   highlight = {
       'RainbowDelimiterRed',
       'RainbowDelimiterYellow',
       'RainbowDelimiterBlue',
       'RainbowDelimiterOrange',
       'RainbowDelimiterGreen',
       'RainbowDelimiterViolet',
       'RainbowDelimiterCyan',
   },
}
-- mini.ai配置
require('mini.ai').setup()
-- neoscroll配置
require('neoscroll').setup()
-- mini.sessions配置
require('mini.sessions').setup()
-- mini.splitjoin配置
require('mini.splitjoin').setup()
