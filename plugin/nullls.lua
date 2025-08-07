local null_ls = require("null-ls")

local on_attach = function(client)
  if client.server_capabilities.document_formatting then
      vim.cmd("autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting_sync()")
  end
end

local function is_javascript_or_typescript_project()
  local js_ts_files = vim.fn.glob("*.js,*.jsx,*.ts,*.tsx", false, true)
  local eslint_config = vim.fn.glob(".eslintrc*,eslint.config.js", false, true)
  return #js_ts_files > 0 or #eslint_config > 0
end

local sources = {
  null_ls.builtins.formatting.prettierd,
}

if is_javascript_or_typescript_project() then
  table.insert(sources, require("none-ls.diagnostics.eslint"))
  table.insert(sources, null_ls.builtins.code_actions.eslint)
end

if is_javascript_or_typescript_project() then
  table.insert(sources, null_ls.builtins.diagnostics.tsc)
end

null_ls.setup({
  sources = sources,
  on_attach = on_attach,
})

require('mason-null-ls').setup({ automatic_installation = true })

local opts = { noremap=true, silent=true }
vim.api.nvim_set_keymap("n", "<Leader>f", ':lua vim.lsp.buf.format()<cr>', opts)
vim.api.nvim_set_keymap("i", "<Leader>f", '<esc>:lua vim.lsp.buf.format()<cr>', opts)
vim.api.nvim_set_keymap("v", "<Leader>f", '<esc>:lua vim.lsp.buf.format()<cr>', opts)

-- Format on save
vim.cmd [[autocmd BufWritePre *{ts,tsx} lua vim.lsp.buf.format()]]