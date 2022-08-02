local opts = { noremap=true, silent=true }

-- Ctrl+S for saving
vim.api.nvim_set_keymap("n", "<c-s>", '<esc>:w<CR>', opts)
vim.api.nvim_set_keymap("i", "<c-s>", '<esc>:w<CR>i', opts)

-- File Explorer
vim.api.nvim_set_keymap("n", "-", '<esc>:Explore<CR>', opts)

-- Duplicate line
vim.api.nvim_set_keymap("n", "<c-d>", '<S-v>yp', opts)
vim.api.nvim_set_keymap("v", "<c-d>", 'ygv<esc>p', opts)

-- Clear highlighting
vim.api.nvim_set_keymap("v", "<CR>", '<esc>:noh<CR>', opts)
vim.api.nvim_set_keymap("n", "<CR>", '<esc>:noh<CR>', opts)

-- Close buffer
vim.api.nvim_set_keymap("n", "<c-w>", ':bdelete<cr>', opts)

-- Undo
vim.api.nvim_set_keymap("i", "<c-z>", '<esc>ui', opts)
vim.api.nvim_set_keymap("n", "<c-z>", 'u', opts)