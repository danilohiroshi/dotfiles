local opts = { noremap=true, silent=true }

-- Generate docblock
vim.api.nvim_set_keymap("n", "<Leader>d", ':Neogen<CR>', opts)