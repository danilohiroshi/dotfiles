local util = require('lspconfig.util')

-- vim.api.nvim_create_user_command('Format', vim.lsp.buf.formatting_seq_sync, {})

vim.keymap.set('n', '<leader>ca', ':CodeActionMenu<CR>')
vim.keymap.set('v', '<leader>ca', ':CodeActionMenu<CR>')
vim.keymap.set('n', '<leader>d', '<cmd>lua vim.diagnostic.open_float()<CR>')
vim.keymap.set('n', '[d', '<cmd>lua vim.diagnostic.goto_prev()<CR>')
vim.keymap.set('n', ']d', '<cmd>lua vim.diagnostic.goto_next()<CR>')

-- vim.lsp.set_log_level("debug")

vim.diagnostic.config({
  virtual_text = false,
  severity_sort = true,
  float = {
    source = true,
    focus = false,
    format = function(diagnostic)
      if diagnostic.user_data ~= nil and diagnostic.user_data.lsp.code ~= nil then
        return string.format('%s: %s', diagnostic.user_data.lsp.code, diagnostic.message)
      end
      return diagnostic.message
    end,
  },
})

local on_attach = function(_, bufnr)
  vim.bo[bufnr].omnifunc = 'v:lua.vim.lsp.omnifunc'

  vim.keymap.set('n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<CR>', { buffer = bufnr })
  vim.keymap.set('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>', { buffer = bufnr })
  vim.keymap.set('n', 'K', '<cmd>lua vim.lsp.buf.hover()<CR>', { buffer = bufnr })
  vim.keymap.set('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>', { buffer = bufnr })
  -- vim.keymap.set(bufnr, 'n', '<C-K>', '<cmd>lua vim.lsp.buf.signature_help()<CR>', { buffer = bufnr })
  vim.keymap.set('n', '<leader>D', '<cmd>lua vim.lsp.buf.type_definition()<CR>', { buffer = bufnr })
  vim.keymap.set('n', '<leader>rn', '<cmd>lua vim.lsp.buf.rename()<CR>', { buffer = bufnr })
  -- vim.keymap.set(bufnr, 'n', 'gr', '<cmd>lua vim.lsp.buf.references()<CR>', { buffer = bufnr })
  vim.keymap.set('n', 'gr', ':Telescope lsp_references<CR>', { buffer = bufnr })
end

-- nvim-cmp supports additional completion capabilities
local capabilities = require('cmp_nvim_lsp').default_capabilities(vim.lsp.protocol.make_client_capabilities())

require('lspconfig').html.setup({
  on_attach = on_attach,
  capabilities = capabilities,
})

require('lspconfig').intelephense.setup({
  on_attach = on_attach,
  capabilities = capabilities,
  settings = {
    intelephense = {
      files = {
        maxSize = "10000000000",
        associations = {
          "*.php",
          "*.phtml",
          "*.inc",
          "*.module",
          "*.install",
          "*.theme"
        },
        exclude = {
          "**/.git/**",
          "**/.svn/**",
          "**/.hg/**",
          "**/CVS/**",
          "**/.DS_Store/**",
          "**/node_modules/**",
          "**/files/**",
          "**/bower_components/**",
          "**/vendor/**/{Tests,tests}/**",
          "**/.history/**",
        }
      },
      phpdoc = {
        useFullyQualifiedNames = true,
        returnVoid = false
      }
    }
  }
})

require('lspconfig').tsserver.setup({})

vim.fn.sign_define('DiagnosticSignError', { text = '', texthl = 'DiagnosticSignError' })
vim.fn.sign_define('DiagnosticSignWarn', { text = '', texthl = 'DiagnosticSignWarn' })
vim.fn.sign_define('DiagnosticSignInfo', { text = '', texthl = 'DiagnosticSignInfo' })
vim.fn.sign_define('DiagnosticSignHint', { text = '', texthl = 'DiagnosticSignHint' })
vim.keymap.set('n', '<c-[>', '<cmd>1po<CR>')
