local null_ls = require("null-ls")

null_ls.setup({
    sources = {
      null_ls.builtins.diagnostics.jshint,
      null_ls.builtins.diagnostics.tsc,
      -- null_ls.builtins.diagnostics.phpcs,
    },
})