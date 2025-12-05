require("mason").setup({
  ui = {
    icons = {
      package_installed = "✓",
      package_pending = "➜",
      package_uninstalled = "✗"
    }
  }
})

require("mason-lspconfig").setup({
  ensure_installed = {
    "lua_ls",
    "intelephense",
    "ts_ls",
    "html",
    "cssls",
    "jsonls"
  },
  automatic_installation = true,
})

require("mason-nvim-dap").setup({
  ensure_installed = { "node2", "js-debug-adapter", "php-debug-adapter" },
  automatic_installation = true,
})
