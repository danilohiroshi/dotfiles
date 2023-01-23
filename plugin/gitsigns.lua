require('gitsigns').setup({
  sign_priority = 20,
  on_attach = function(bufnr)
    vim.keymap.set('n', ']h', "&diff ? ']c' : '<cmd>Gitsigns next_hunk<CR>'", { expr = true, buffer = bufnr })
    vim.keymap.set('n', '[h', "&diff ? '[c' : '<cmd>Gitsigns prev_hunk<CR>'", { expr = true, buffer = bufnr })
  end,
})

vim.opt.signcolumn = 'yes:2'