vim.keymap.set('n', '<c-t>n', ':TestNearest<CR>')
vim.keymap.set('n', '<c-t>f', ':TestFile<CR>')
vim.keymap.set('n', '<c-t>s', ':TestSuite<CR>')
vim.keymap.set('n', '<c-t>c', ':TestSuite --coverage<CR>')
vim.keymap.set('n', '<c-t>l', ':TestLast<CR>')
vim.keymap.set('n', '<c-t>v', ':TestVisit<CR>')
vim.keymap.set('n', '<c-t>d', ':lua require"jester".run()<CR>')

vim.cmd([[
  let g:test#strategy = 'neovim'
  let test#neovim#term_position = "vert"
]])