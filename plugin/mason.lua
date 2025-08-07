require("mason").setup()
require("mason-lspconfig").setup {
  ensure_installed = { "intelephense", "ts_ls" },
}
require("mason-nvim-dap").setup({
  ensure_installed = { "node2", "js-debug-adapter", "php-debug-adapter" }, -- Automatically install the Node.js adapter
})
