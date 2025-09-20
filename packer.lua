-- Packer.nvim配置
vim.cmd [[packadd packer.nvim]]
require('packer').startup(function(use) 
    use 'wbthomason/packer.nvim'

    use 'nvim-treesitter/nvim-treesitter'
    use 'neovim/nvim-lspconfig'
    use 'simrat39/rust-tools.nvim'

    use 'olimorris/onedarkpro.nvim'
    use 'shaunsingh/nord.nvim'
    use 'mofiqul/vscode.nvim'
    use 'lourenci/github-colors'
    use {"akinsho/horizon.nvim", tag = "*"}
    use { "catppuccin/nvim", as = "catppuccin" }
    use "rebelot/kanagawa.nvim"
    use ({ 'projekt0n/github-nvim-theme' })
    use { "scottmckendry/cyberdream.nvim" }
    use 'Mofiqul/dracula.nvim'
    use 'f4z3r/gruvbox-material.nvim'
    use 'folke/tokyonight.nvim'
    use 'slugbyte/lackluster.nvim'
    use {
      "rockyzhang24/arctic.nvim",
      requires = { "rktjmp/lush.nvim" }
    }
    use "rafamadriz/neon"
    use("oxfist/night-owl.nvim")

    use {
        's1n7ax/nvim-terminal', 
        config = function()
            vim.o.hidden = true
            require('nvim-terminal').setup()
        end,
    }
    use 'karb94/neoscroll.nvim'
    use {
        'NeogitOrg/neogit', 
        requires = {
            'nvim-lua/plenary.nvim', 
            'sindrets/diffview.nvim',
            'nvim-telescope/telescope.nvim',
        },
        config = function()
            require('neogit').setup()
        end, 
    }
    use {'akinsho/bufferline.nvim', tag = "*", requires = 'nvim-tree/nvim-web-devicons'}
    use 'nvim-tree/nvim-tree.lua'
    use 'Yggdroot/indentLine'
    use 'rlue/vim-barbaric'
    use { 'jayli/vim-easycomplete', requires = {'L3MON4D3/LuaSnip'}}
    use 'tpope/vim-fugitive'
    use 'frazrepo/vim-rainbow'
    use 'tpope/vim-surround'
    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'nvim-tree/nvim-web-devicons', opt = true }
    }
    use {"akinsho/toggleterm.nvim", tag = '*', config = function()
        require("toggleterm").setup()
    end}
    use({
        "NStefan002/2048.nvim",
        config = function()
            require("2048").setup()
        end,
    })
    use {
        'numToStr/Comment.nvim',
        config = function()
            require('Comment').setup()
        end
    }
   use 'backdround/global-note.nvim'
   use {'stevearc/dressing.nvim'}
   use 'lewis6991/gitsigns.nvim'
   use {
        "folke/todo-comments.nvim",
        requires = { "nvim-lua/plenary.nvim" }
   }
   use 'skanehira/gh.vim'
   use {'nvimdev/dashboard-nvim',
    requires = { 'juansalvatore/git-dashboard-nvim','nvim-lua/plenary.nvim' },
   }
   use({
    "kdheepak/lazygit.nvim",
   })
   use {
    "jiaoshijie/undotree",
    requires = {
      "nvim-lua/plenary.nvim",
    },
   }
end)
