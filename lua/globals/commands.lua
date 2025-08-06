-- Copy Relative path
vim.api.nvim_create_user_command('CopyRelPath', function()
  vim.fn.setreg('+', vim.fn.expand('%'))
end, {})
