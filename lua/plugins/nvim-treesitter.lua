return {
    "nvim-treesitter/nvim-treesitter",
    event = { "BufReadPre", "BufNewFile" },
    build = ":TSUpdate",
    config = function ()
        local treesitter = require("nvim-treesitter.configs")

        treesitter.setup({
            highlights = {
                enable = true,
            },
            indent = { enable = true },
            ensure_installed = {
                "c",
                "cpp",
                "haskell",
                "python",
                "rust",
            }
        })
    end
}
