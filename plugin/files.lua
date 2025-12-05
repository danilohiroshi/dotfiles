-- Mini.files keymapping with toggle functionality
vim.keymap.set("n", "<c-b>", function()
  if not MiniFiles.close() then
    MiniFiles.open()
  end
end, { desc = "Toggle mini.files" })

-- Optional: Open mini.files at current file's directory
vim.keymap.set("n", "<leader>e", function()
  require("mini.files").open(vim.api.nvim_buf_get_name(0))
end, { desc = "Open mini.files at current file" })