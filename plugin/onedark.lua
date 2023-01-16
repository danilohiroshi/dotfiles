require('onedark').setup {
  colors = {
    indentLine = '#31353f',
    contextColor = '#61afef',
    background = '#282c34',
    background_light = '#31353f',
    lightgrey = '#c4c4c4',
  },
  highlights = {
    FloatBorder = { 
      fg = '$background_light',
      bg = '$background_light'
    },
    TelescopePreviewBorder = { 
      fg = '$background_light',
      bg = '$background_light'
    },
    TelescopePromptBorder = { 
      fg = '$background_light',
      bg = '$background_light'
    },
    TelescopeResultsBorder = { 
      fg = '$background_light',
      bg = '$background_light'
    },

    -- Indentation
    IndentBlanklineChar = { fg =  '$indentLine', fmt = "bold" },
    IndentBlanklineContextChar = { fg =  '$contextColor', fmt = "nocombine" },
  }
}
