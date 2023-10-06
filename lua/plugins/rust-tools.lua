return {
    'neovim/nvim-lspconfig',
    {
        'simrat39/rust-tools.nvim',
        config = function ()
            require('rust-tools').setup { }
            require('rust-tools').inlay_hints.disable()
        end
    }
}
