require('close_buffers').setup({
  filetype_ignore = {},  -- Filetype to ignore when running deletions
  file_glob_ignore = {},  -- File name glob pattern to ignore when running deletions (e.g. '*.md')
  file_regex_ignore = {}, -- File name regex pattern to ignore when running deletions (e.g. '.*[.]md')
  preserve_window_layout = { 'this', 'nameless' },  -- Types of deletion that should preserve the window layout
  next_buffer_cmd = nil,  -- Custom function to retrieve the next buffer when preserving window layout
})

local opts = { noremap=true, silent=true }
vim.api.nvim_set_keymap("n", "<Leader>wo", ':BDelete other<cr>', opts)
vim.api.nvim_set_keymap("i", "<Leader>wo", '<esc>:BDelete other<cr>', opts)
vim.api.nvim_set_keymap("v", "<Leader>wo", '<esc>:BDelete other<cr>', opts)

-- Close buffer
vim.api.nvim_set_keymap("n", "<Leader>ww", ':bdelete<cr>', opts)
vim.keymap.set('v', '<Leader>ww', "<cmd>:bd<CR>")
vim.keymap.set('i', '<Leader>ww', "<cmd>:bd<CR>")
vim.keymap.set('n', '<Leader>ww', "<cmd>bd<CR>")