local status_ok, null_ls = pcall(require, "null-ls")
if not status_ok then
  vim.notify("null-ls not found!", vim.log.levels.ERROR)
  return
end

null_ls.setup({
  sources = {
    null_ls.builtins.formatting.prettier.with({
      prefer_local = "node_modules/.bin",
    }),
    null_ls.builtins.formatting.stylua,
  },
  on_attach = function(client, bufnr)
    if client.supports_method("textDocument/formatting") then
      vim.api.nvim_create_autocmd("BufWritePre", {
        group = vim.api.nvim_create_augroup("LspFormatting", {}),
        buffer = bufnr,
        callback = function()
          vim.lsp.buf.format({ async = false })
        end,
      })
    end
  end,
})

vim.keymap.set("n", "<Leader>f", vim.lsp.buf.format, { desc = "Format buffer" })
vim.keymap.set("v", "<Leader>f", vim.lsp.buf.format, { desc = "Format selection" })
