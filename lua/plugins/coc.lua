return {
    "neoclide/coc.nvim",
    branch = "release",
    config = function()

        vim.opt.backup = false
        vim.opt.writebackup = false

        vim.opt.updatetime = 300

        vim.opt.signcolumn = "yes"

        function _G.check_back_space()
            local col = vim.fn.col('.') - 1
            return col == 0 or vim.fn.getline('.'):sub(col, col):match('%s') ~= nil
        end

        local keyset = vim.keymap.set
        local opts = {silent = true, noremap = true, expr = true, replace_keycodes = false}

        -- Symbol Renaming
        keyset("n", "<leader>rn", "<Plug>(coc-rename)", {silent = true})

        -- keyset("i", "<TAB>", 'coc#pum#visible() ? coc#pum#next(1) : v:lua.check_back_space() ? "<TAB>" : coc#refresh()', opts)
        keyset("i", "<TAB>", 'coc#pum#visible() ? coc#_select_confirm() : coc#expandableOrJumpable() ? "<C-r>=coc#rpc#request(\'doKeymap\', [\'snippets-expand-jump\',\'\'])<CR>" : v:lua.check_back_space() ? "<TAB>" : coc#refresh()', opts)
        keyset("i", "<S-TAB>", [[coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"]], opts)

        vim.g.coc_snippet_next = '<tab>'


        keyset("i", "<cr>", [[coc#pum#visible() ? coc#pum#confirm() : "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"]], opts)

        -- GoTo code navigation
        keyset("n", "gd", "<Plug>(coc-definition)", {silent = true})
        keyset("n", "gy", "<Plug>(coc-type-definition)", {silent = true})
        keyset("n", "gi", "<Plug>(coc-implementation)", {silent = true})
        keyset("n", "gr", "<Plug>(coc-references)", {silent = true})
    end
}
