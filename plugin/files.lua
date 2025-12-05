-- Mini.files keymapping with toggle functionality at current file location
-- but keeping the full project tree view
vim.keymap.set("n", "<c-b>", function()
  local MiniFiles = require("mini.files")

  -- Try to close first, if it returns false, then open at current file location
  if not MiniFiles.close() then
    local current_file = vim.api.nvim_buf_get_name(0)
    if current_file ~= "" then
      -- Open at current file but show full tree from project root
      MiniFiles.open(current_file, false)
    else
      -- If no file, open at project root
      MiniFiles.open()
    end
  end
end, { desc = "Toggle mini.files at current file with full tree" })

-- Optional: Keep the leader+e mapping for consistency
vim.keymap.set("n", "<leader>e", function()
  require("mini.files").open(vim.api.nvim_buf_get_name(0))
end, { desc = "Open mini.files at current file" })