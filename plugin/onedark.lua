
require('onedark').setup {
  colors = {
    myBorder = '#31353f',
    contextColor = '#61afef'
  },
  highlights = {
    TelescopePromptBorder = { fg =  '$myBorder', fmt = "bold" },
    TelescopeResultsBorder = { fg =  '$myBorder', fmt = "bold" },
    TelescopePreviewBorder = { fg =  '$myBorder', fmt = "bold" },
    TelescopeBorder = { fg =  '$myBorder', fmt = "bold" },
    IndentBlanklineChar = { fg =  '$myBorder', fmt = "bold" },
    IndentBlanklineContextChar = { fg =  '$contextColor', fmt = "nocombine" },
  }
}

vim.cmd('colorscheme onedark')