require("mason").setup()
require("mason-lspconfig").setup {
  ensure_installed = { "intelephense", "ts_ls" },
}
