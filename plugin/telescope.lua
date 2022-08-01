-- Ctrl-p
vim.api.nvim_set_keymap("n", "<c-p>", ':Telescope find_files<CR>', {noremap=true, silent=true})
-- \-f
vim.api.nvim_set_keymap("n", "<Leader>f", ':Telescope live_grep<CR>', {noremap=true, silent=true})