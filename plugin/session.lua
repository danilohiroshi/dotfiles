
require("auto-session").setup {
  suppressed_dirs = { "~/Documentos", "~/Code"},
}

-- Shift Alt P
vim.keymap.set('n', '<S-A-p>', '<CMD>SessionSearch<CR>')