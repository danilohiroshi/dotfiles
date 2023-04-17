require('onedark').setup {
  colors = {
    indent_line = '#31353f',
    context_color = '#61afef',
    background = '#282c34',
    background_light = '#31353f',
    background_darker = '#23252c',
    light_grey = '#c4c4c4',
    background_statusline = '#393f4a'
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
      fg = '$light_grey',
      bg = '$background_light'
    },
    TelescopePreviewNormal = { 
      fg = '$light_grey',
      bg = '$background_darker'
    },
    TelescopeResultsNormal = { 
      fg = '$light_grey',
      bg = '$background_darker'
    },

    TelescopePromptTitle = { 
      fg = '$light_grey',
      bg = '$background_light'
    },
    TelescopePreviewTitle = { 
      fg = '$light_grey',
      bg = '$background_darker'
    },
    TelescopeResultsTitle = { 
      fg = '$light_grey',
      bg = '$background_darker'
    },

    FloatermBorder = { 
      fg = '$background_darker',
      bg = '$background_darker'
    },
    Floaterm = { 
      fg = '$light_grey',
      bg = '$background_darker'
    },
    StatusLineNonText = {
      fg = '$light_grey',
      bg = '$background_statusline'
    },

    -- Indentation
    IndentBlanklineChar = { fg =  '$indent_line', fmt = "bold" },
    IndentBlanklineContextChar = { fg =  '$context_color', fmt = "nocombine" },
  }
}
