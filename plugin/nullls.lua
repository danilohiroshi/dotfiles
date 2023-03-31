local null_ls = require("null-ls")

local on_attach = function(client)
  if client.server_capabilities.document_formatting then
      vim.cmd("autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting_sync()")
 end
end

-- - Supported linters: https://github.com/jose-elias-alvarez/null-ls.nvim/tree/main/lua/null-ls/builtins/diagnostics
null_ls.setup({
    sources = {
      null_ls.builtins.diagnostics.eslint_d.with({
        condition = function(utils)
          return utils.root_has_file({ '.eslintrc.js' })
        end,
      }),
      null_ls.builtins.formatting.eslint_d.with({
        condition = function(utils)
          return utils.root_has_file({ '.eslintrc.js' })
        end,
      }),
      null_ls.builtins.formatting.prettierd,
      null_ls.builtins.diagnostics.trail_space.with({ disabled_filetypes = { 'NvimTree' } }),
      null_ls.builtins.diagnostics.tsc,
      null_ls.builtins.diagnostics.phpcs.with({
        extra_args = {
            "--standard=Drupal,DrupalPractice",
            "--extensions=php,module,inc,install,test,profile,theme,css,info,txt,md,yml",
          }
      }),
    },
    on_attach = on_attach,
})

require('mason-null-ls').setup({ automatic_installation = true })

local opts = { noremap=true, silent=true }
vim.api.nvim_set_keymap("n", "<Leader>f", ':lua vim.lsp.buf.format()<cr>', opts)
vim.api.nvim_set_keymap("i", "<Leader>f", '<esc>:lua vim.lsp.buf.format()<cr>', opts)
vim.api.nvim_set_keymap("v", "<Leader>f", '<esc>:lua vim.lsp.buf.format()<cr>', opts)
-- Format on save
vim.cmd [[autocmd BufWritePre * lua vim.lsp.buf.format()]]