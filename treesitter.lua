-- Treesitter配置

require 'nvim-treesitter.configs'.setup {
    ensure_installed = {"c", "lua", "python", "cpp", "rust", "markdown", "html"},
    highlight = {enable = true },
    incremental_selection = {enable = true},
    indent = {enable = true},
}
