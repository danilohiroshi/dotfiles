-- Color Pallete: https://github.com/navarasu/onedark.nvim/blob/master/lua/onedark/palette.lua

require('onedark').setup {
  colors = {
    indentLine = '#31353f',
    contextColor = '#61afef',
    background = '#282c34',
    background_light = '#31353f',
    lightgrey = '#c4c4c4',
  },
  highlights = {
    -- Telescope
    -- TelescopeNormal = { fg =  '$lightgrey' },
    -- TelescopePromptNormal = { fg =  '$lightgrey' },
    -- TelescopePreviewNormal = { fg =  '$lightgrey' },
    -- TelescopeResultsNormal = { fg =  '$lightgrey' },

    TelescopeBorder = { fg =  '$background' },
    TelescopePreviewBorder = { fg =  '$background' },
    TelescopePromptBorder = { fg =  '$background' },
    TelescopeResultsBorder = { fg =  '$background' },

    -- Indentation
    IndentBlanklineChar = { fg =  '$indentLine', fmt = "bold" },
    IndentBlanklineContextChar = { fg =  '$contextColor', fmt = "nocombine" },
  }
}

vim.cmd('colorscheme onedark')