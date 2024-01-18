require('neotest').setup({
  adapters = {
    require('neotest-jest')({
      jestCommand = "npm test --",
      jestConfigFile = "custom.jest.config.ts",
      env = { CI = true },
      cwd = function(path)
        return vim.fn.getcwd()
      end,
    }),
  },
  quickfix = {
    enabled = true,
    open = false
  }
})

vim.keymap.set('n', '<c-t>n', ':lua require("neotest").run.run()<CR>')
vim.keymap.set('n', '<c-t>f', ':lua require("neotest").run.run(vim.fn.expand("%"))<CR>')
vim.keymap.set('n', '<c-t>d', ':lua require("neotest").run.run({strategy = "dap"})<CR>')
vim.keymap.set('n', '<c-t>o', ':lua require("neotest").summary.toggle()<CR>')
