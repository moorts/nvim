return {
    'nvim-lualine/lualine.nvim',
    requires = { 'nvim-tree/nvim-web-devicons', opt = true },
    config = function ()
        require('lualine').setup {
            options = {
                theme = 'papercolor_light',
                icons_enabled = true,
                component_separators = { left = '', right = ''},
                section_separators = { left = '', right = ''},
            },
        }
    end
}
