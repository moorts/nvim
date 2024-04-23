return {
    "lervag/vimtex",
    config = function()
        vim.g.vimtex_view_general_viewer = 'okular'
        vim.g.vimtex_view_general_options = '--unique file:@pdf\\#src:@line@tex'

        vim.g.vimtex_compiler_latexmk = {
            options = {'-shell-escape'},
        }
    end
}
