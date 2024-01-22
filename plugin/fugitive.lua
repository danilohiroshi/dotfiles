vim.api.nvim_set_keymap("n", "<c-g>", ':G<CR>', {noremap=true, silent=true})
vim.api.nvim_set_keymap("v", "<c-g>", '<esc>:G<CR>', {noremap=true, silent=true})
vim.api.nvim_set_keymap("i", "<c-g>", '<esc>:G<CR>', {noremap=true, silent=true})
