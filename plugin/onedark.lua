
-- Colors: https://github.com/navarasu/onedark.nvim/blob/master/lua/onedark/palette.lua

require('onedark').setup {
  colors = {
    myBorder = '#31353f',
  },
  highlights = {
    TelescopePromptBorder = { fg =  '$myBorder', fmt = "bold" },
    TelescopeResultsBorder = { fg =  '$myBorder', fmt = "bold" },
    TelescopePreviewBorder = { fg =  '$myBorder', fmt = "bold" },
    TelescopeBorder = { fg =  '$myBorder', fmt = "bold" },
    IndentBlanklineChar = { fg =  '$myBorder', fmt = "bold" },
  }
}

vim.cmd('colorscheme onedark')