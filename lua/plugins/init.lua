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
} 
