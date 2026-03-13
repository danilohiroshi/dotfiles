vim.keymap.set('n', '<c-f>', '<cmd>lua require("spectre").toggle()<CR>', {
    desc = "Toggle Spectre"
})

require('spectre').setup({
  path="!node_modules/** !bundler/**",
})
