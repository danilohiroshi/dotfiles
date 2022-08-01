-- Open file: Ctrl-p
vim.api.nvim_set_keymap("n", "<c-p>", ':Telescope find_files<CR>', {noremap=true, silent=true})

-- Global Search: Ctrl-Shift-f
vim.api.nvim_set_keymap("n", "<C-f>", ':Telescope live_grep<CR>', {noremap=true, silent=true})