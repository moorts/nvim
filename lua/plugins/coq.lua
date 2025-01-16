return {
  "neovim/nvim-lspconfig", -- REQUIRED: for native Neovim LSP integration
  lazy = false, -- REQUIRED: tell lazy.nvim to start this plugin at startup
  dependencies = {
    -- main one
    { "ms-jpq/coq_nvim", branch = "coq" },

    -- 9000+ Snippets
    { "ms-jpq/coq.artifacts", branch = "artifacts" },

    -- lua & third party sources -- See https://github.com/ms-jpq/coq.thirdparty
    -- Need to **configure separately**
    { 'ms-jpq/coq.thirdparty', branch = "3p" },
    -- - shell repl
    -- - nvim lua api
    -- - scientific calculator
    -- - comment banner
    -- - etc
    { 'haskell/stylish-haskell' }
  },
  init = function()
    vim.g.coq_settings = {
        auto_start = true, -- if you want to start COQ at startup
        -- Your COQ settings here
        keymap = {
            jump_to_mark = "null",
        },
    }
  end,
  config = function()
        local lspconfig = require('lspconfig')
        lspconfig.rust_analyzer.setup(coq.lsp_ensure_capabilities({
            settings = {
                ['rust-analyzer'] = {},
            },
        }))

        lspconfig.pyright.setup(coq.lsp_ensure_capabilities({}))

        lspconfig.ts_ls.setup(coq.lsp_ensure_capabilities({}))

        lspconfig.clangd.setup(coq.lsp_ensure_capabilities({}))

        lspconfig.hls.setup(coq.lsp_ensure_capabilities({
            settings = {
                haskell = {
                    cabalFormattingProvider = "cabalfmt",
                    formattingProvider = "ormolu"
                }
            }
        }))
  end,
}
