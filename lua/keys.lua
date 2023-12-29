-- Keybinding Configuration

vim.g.mapleader = " "

local keyset = vim.keymap.set

-- Splits
keyset('n', '<leader>v', '<cmd>vsplit<cr>')
keyset('n', '<leader>h', '<cmd>split<cr>')

keyset('n', '<C-h>', '<C-w>h')
keyset('n', '<C-j>', '<C-w>j')
keyset('n', '<C-k>', '<C-w>k')
keyset('n', '<C-l>', '<C-w>l')


-- Buffer Navigation
keyset('n', '<C-]>', '<cmd>bnext<cr>')

-- Execute Code
keyset('n', '<leader>cp', '<cmd>!python %<cr>')
