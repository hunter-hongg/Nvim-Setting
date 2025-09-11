-- Packer.nvim配置
vim.cmd [[packadd packer.nvim]]
require('packer').startup(function(use) 
    use 'wbthomason/packer.nvim'

    use 'nvim-treesitter/nvim-treesitter'
    use 'neovim/nvim-lspconfig'
    use 'simrat39/rust-tools.nvim'
--  use 'preservim/vim-markdown'
--  use {
--    'Kicamon/markdown-table-mode.nvim', 
--    config = function()
--      require 'markdown-table-mode'.setup()
--    end, 
--  }
--  use {
--    'tadmccorkle/markdown.nvim', 
--    config = function()
--      require 'markdown'.setup()
--    end, 
--  }

    use 'olimorris/onedarkpro.nvim'
    use 'shaunsingh/nord.nvim'
    use 'mofiqul/vscode.nvim'
    use 'lourenci/github-colors'
    use {"akinsho/horizon.nvim", tag = "*"}
--  use 'ashish2508/Eezzy.nvim'
    use { "catppuccin/nvim", as = "catppuccin" }
    use "rebelot/kanagawa.nvim"

--  use 'itchyny/lightline.vim'
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
    use 'jayli/vim-easycomplete'
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
end)
