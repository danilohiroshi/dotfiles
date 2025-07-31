
require("auto-session").setup {
  suppressed_dirs = { "~/Documentos", "~/Code"},
  auto_save = false
}

-- Shift Alt P
vim.keymap.set('n', '<S-A-p>', '<CMD>SessionSearch<CR>')