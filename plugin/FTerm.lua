require'FTerm'.setup({
  border = 'double',
  dimensions  = {
      height = 0.9,
      width = 0.9,
  },
})

-- Keybindings
vim.keymap.set('n', '<c-t>', '<CMD>lua require("FTerm").toggle()<CR>')
vim.keymap.set('t', '<c-t>', '<C-\\><C-n><CMD>lua require("FTerm").toggle()<CR>')