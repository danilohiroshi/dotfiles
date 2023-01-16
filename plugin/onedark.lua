require('onedark').setup {
  colors = {
    indentLine = '#31353f',
    contextColor = '#61afef',
    background = '#282c34',
    background_light = '#31353f',
    background_darker = '#2c2f38',
    lightgrey = '#c4c4c4',
  },
  highlights = {
    FloatBorder = { 
      fg = '$background_light',
      bg = '$background_light'
    },
    TelescopePreviewBorder = { 
      fg = '$background_darker',
      bg = '$background_darker'
    },
    TelescopePromptBorder = { 
      fg = '$background_light',
      bg = '$background_light'
    },
    TelescopeResultsBorder = { 
      fg = '$background_darker',
      bg = '$background_darker'
    },

    TelescopePromptNormal = { 
      fg = '$lightgrey',
      bg = '$background_light'
    },
    TelescopePreviewNormal = { 
      fg = '$lightgrey',
      bg = '$background_darker'
    },
    TelescopeResultsNormal = { 
      fg = '$lightgrey',
      bg = '$background_darker'
    },

    TelescopePromptTitle = { 
      fg = '$background',
      bg = '$contextColor'
    },
    TelescopePreviewTitle = { 
      fg = '$background',
      bg = '$contextColor'
    },
    TelescopeResultsTitle = { 
      fg = '$background',
      bg = '$contextColor'
    },

    -- Indentation
    IndentBlanklineChar = { fg =  '$indentLine', fmt = "bold" },
    IndentBlanklineContextChar = { fg =  '$contextColor', fmt = "nocombine" },
  }
}
