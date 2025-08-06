-- vim.api.nvim_set_keymap("n", "<c-g>", ':G<CR>', {noremap=true, silent=true})
vim.api.nvim_set_keymap("v", "<c-g>", '<esc>:G<CR>', {noremap=true, silent=true})
vim.api.nvim_set_keymap("i", "<c-g>", '<esc>:G<CR>', {noremap=true, silent=true})
vim.api.nvim_set_keymap("n", "<c-g>", 
  [[:G<CR>:lua require("notify")("Fugitive Hints:\ncc: commit\n-: stage/unstage\nx: discard changes\nU: unstage all\ndd: show diff")<CR>]], 
  {noremap=true, silent=true}
)
