return {
	{
	  {'akinsho/toggleterm.nvim', version = "*", config = true}
	}, 
    {
        'nvim-lualine/lualine.nvim',
        dependencies = { 'nvim-tree/nvim-web-devicons' }
    },
    {
        "NStefan002/2048.nvim",
        cmd = "Play2048",
        config = true,
    },
    {
        'numToStr/Comment.nvim',
        opts = {
        }
    },
    {
      "folke/todo-comments.nvim",
      dependencies = { "nvim-lua/plenary.nvim" },
      opts = {
      }
    },
    {
      "rockyzhang24/arctic.nvim",
      dependencies = { "rktjmp/lush.nvim" },
      name = "arctic",
      branch = "main",
      priority = 1000,
      config = function()
        vim.cmd("colorscheme arctic")
      end
    },
    {'akinsho/bufferline.nvim', version = "*", dependencies = 'nvim-tree/nvim-web-devicons'},
    {
      'stevearc/dressing.nvim',
      opts = {},
    },
    { "akinsho/horizon.nvim", version = "*" },
    {
      "NeogitOrg/neogit",
      dependencies = {
        "nvim-lua/plenary.nvim",         -- required
        "sindrets/diffview.nvim",        -- optional - Diff integration

        "nvim-telescope/telescope.nvim", -- optional
      },
    },
    {
      "olimorris/onedarkpro.nvim",
      priority = 1000, -- Ensure it loads first
    },
    {
        'MeanderingProgrammer/render-markdown.nvim',
        dependencies = { 'nvim-treesitter/nvim-treesitter', 'nvim-tree/nvim-web-devicons' }, -- if you prefer nvim-web-devicons
        ---@module 'render-markdown'
        ---@type render.md.UserConfig
        opts = {},
    },
    { 'nvim-mini/mini.nvim', version = '*' },
    {
      "L3MON4D3/LuaSnip",
      -- follow latest release.
      version = "v2.*", -- Replace <CurrentMajor> by the latest released major (first number of latest release)
      -- install jsregexp (optional!).
      build = "make install_jsregexp"
    },
    {
      "folke/noice.nvim",
      event = "VeryLazy",
      dependencies = {
        "MunifTanjim/nui.nvim",
        "nvim-notify", 
        "rcarriga/nvim-notify",
        }
    },
    {
      "folke/trouble.nvim",
      opts = {}, -- for default options, refer to the configuration section for custom setup.
      cmd = "Trouble",
      keys = {
        {
          "<leader>xx",
          "<cmd>Trouble diagnostics toggle<cr>",
          desc = "Diagnostics (Trouble)",
        },
        {
          "<leader>xX",
          "<cmd>Trouble diagnostics toggle filter.buf=0<cr>",
          desc = "Buffer Diagnostics (Trouble)",
        },
        {
          "<leader>cs",
          "<cmd>Trouble symbols toggle focus=false<cr>",
          desc = "Symbols (Trouble)",
        },
        {
          "<leader>cl",
          "<cmd>Trouble lsp toggle focus=false win.position=right<cr>",
          desc = "LSP Definitions / references / ... (Trouble)",
        },
        {
          "<leader>xL",
          "<cmd>Trouble loclist toggle<cr>",
          desc = "Location List (Trouble)",
        },
        {
          "<leader>xQ",
          "<cmd>Trouble qflist toggle<cr>",
          desc = "Quickfix List (Trouble)",
        },
      },
    },
    {
        "Hiphish/rainbow-delimiters.nvim"
    },
    { "ellisonleao/gruvbox.nvim", priority = 1000 , config = true, },
    {
      "iamcco/markdown-preview.nvim",
      cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
      build = "cd app && yarn install",
      init = function()
        vim.g.mkdp_filetypes = { "markdown" }
      end,
      ft = { "markdown" },
    },
    { 
        "p00f/clangd_extensions.nvim"
    },
    {
      "folke/which-key.nvim",
      event = "VeryLazy",
      opts = {
        -- your configuration comes here
        -- or leave it empty to use the default settings
        -- refer to the configuration section below
        icons = {
                mappings = false,
            },
      },
      keys = {
        {
          "<leader>?",
          function()
            require("which-key").show({ global = false })
          end,
          desc = "Buffer Local Keymaps (which-key)",
        },
      },
    },
    {
        'windwp/nvim-autopairs',
        event = "InsertEnter",
        config = true
        -- use opts = {} for passing setup options
        -- this is equivalent to setup({}) function
    },
    { 'projekt0n/github-nvim-theme', name = 'github-theme' },
    { "catppuccin/nvim", name = "catppuccin", priority = 1000 },
    {
      "folke/tokyonight.nvim",
      lazy = false,
      priority = 1000,
      opts = {},
    },
    { "rebelot/kanagawa.nvim" },
    { "ellisonleao/gruvbox.nvim", priority = 1000 , config = true, },
    { "daschw/leaf.nvim" },
    {
      "folke/snacks.nvim",
      priority = 1000,
      lazy = false,
      ---@type snacks.Config
      opts = {
        bigfile = { enabled = true },
        bufdelete = {
            enabled = true,
        }, 
        dashboard = {
            enabled = true, 
            preset = {
                keys = {
                  { icon = " ", key = "f", desc = "Find File", 
                            action = ":lua Snacks.dashboard.pick('files')" },
                  { icon = " ", key = "n", desc = "New File", 
                            action = ":ene | startinsert" },
                  { icon = " ", key = "r", desc = "Recent Files",
                            action = ":lua Snacks.dashboard.pick('oldfiles')" },
                  { icon = " ", key = "c", desc = "Config", 
                            action = ":lua Snacks.dashboard.pick('files', {cwd = vim.fn.stdpath('config')})" },
                  { icon = " ", key = "s", desc = "Restore Session", 
                            action = ":AutoSession search" },
                  { icon = "󰒲 ", key = "L", desc = "Lazy", 
                            action = ":Lazy", 
                            enabled = package.loaded.lazy ~= nil },
                  { icon = " ", key = "q", desc = "Quit", action = ":qa" },
                },
            }, 
        },
        explorer = { enabled = true },
        indent = { enabled = true },
        input = { enabled = true },
        picker = { enabled = true },
        notifier = { enabled = true },
        quickfile = { enabled = true },
        scope = { enabled = true },
        scroll = { enabled = true },
        statuscolumn = {
            enabled = true,
            left = { "mark", "sign" },  -- 左侧显示标记和符号
            right = { "git", "fold" },  -- 右侧显示Git状态和折叠图标
            refresh = 50,               -- 刷新间隔(ms)
            folds = {                   -- 折叠图标配置
              open = true,              -- 显示展开折叠图标
              git_hl = true             -- 使用Git Signs高亮
            }
        } ,
        words = { enabled = true },
        terminals = {enabled = true},
        toggle = { enabled = true },
      },
    },
    {
      "jiaoshijie/undotree",
      ---@module 'undotree.collector'
      ---@type UndoTreeCollector.Opts
      opts = {
        -- your options
      },
      keys = { -- load the plugin only when using it's keybinding:
        { "<leader>u", "<cmd>lua require('undotree').toggle()<cr>" },
      },
    },
    { "duane9/nvim-rg" },
    {
        'MagicDuck/grug-far.nvim',
        -- Note (lazy loading): grug-far.lua defers all it's requires so it's lazy by default
        -- additional lazy config to defer loading is not really needed...
        config = function()
          -- optional setup call to override plugin options
          -- alternatively you can set options with vim.g.grug_far = { ... }
          require('grug-far').setup({
              showStatusIcon = false,
              icons = {
                    enabled = false, 
                }, 
          });
        end
    },
} 
