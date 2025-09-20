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
} 
