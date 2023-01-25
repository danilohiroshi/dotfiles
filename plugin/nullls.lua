local null_ls = require("null-ls")

-- - Supported linters: https://github.com/jose-elias-alvarez/null-ls.nvim/tree/main/lua/null-ls/builtins/diagnostics
null_ls.setup({
    sources = {
      null_ls.builtins.diagnostics.jshint.with({
        extra_args = {
            "--config $HOME/.config/nvim/jshint/.jshintrc",
          }
      }),
      null_ls.builtins.diagnostics.tsc,
      -- null_ls.builtins.diagnostics.eslint,
      null_ls.builtins.formatting.prettier,
      null_ls.builtins.diagnostics.phpcs.with({
        extra_args = {
            "--standard=Drupal,DrupalPractice",
            "--extensions=php,module,inc,install,test,profile,theme,css,info,txt,md,yml",
          }
      }),
    },
})

local opts = { noremap=true, silent=true }
vim.api.nvim_set_keymap("n", "<Leader>f", ':lua vim.lsp.buf.format()<cr>', opts)
vim.api.nvim_set_keymap("i", "<Leader>f", '<esc>:lua vim.lsp.buf.format()<cr>', opts)
vim.api.nvim_set_keymap("v", "<Leader>f", '<esc>:lua vim.lsp.buf.format()<cr>', opts)