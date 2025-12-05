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
    "jsonls",
    "eslint"  -- ESLint como LSP
  },
  automatic_installation = true,
})

require("mason-null-ls").setup({
  ensure_installed = {
    "prettier",  -- Formatação JS/TS/HTML/CSS
    "stylua",    -- Formatação Lua
  },
  automatic_installation = true,
})

require("mason-nvim-dap").setup({
  ensure_installed = { "node2", "js-debug-adapter", "php-debug-adapter" },
  automatic_installation = true,
})
