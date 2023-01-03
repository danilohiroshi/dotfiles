require("trouble").setup {
}

local opts = { noremap=true, silent=true }
vim.api.nvim_set_keymap("n", "<Leader>t", ':TroubleToggle<cr>', opts)
vim.api.nvim_set_keymap("i", "<Leader>t", '<esc>:TroubleToggle<cr>', opts)
vim.api.nvim_set_keymap("v", "<Leader>t", '<esc>:TroubleToggle<cr>', opts)