vim.api.nvim_set_keymap("n", "<c-g>", ':G<CR>:echo "Hints: cc (commit), - (stage/unstage), x (discard changes), U (Unstage all), dd (show diff)"<CR>', {noremap=true, silent=true})
vim.api.nvim_set_keymap("v", "<c-g>", '<esc>:G<CR>', {noremap=true, silent=true})
vim.api.nvim_set_keymap("i", "<c-g>", '<esc>:G<CR>', {noremap=true, silent=true})
