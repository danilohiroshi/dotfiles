
require('onedark').setup {
  colors = {
    myBorder = '#31353f'
    -- myBorder = '#282c34'
  },
  highlights = {
    TelescopePromptBorder = { fg =  '$myBorder', fmt = "bold" },
    TelescopeResultsBorder = { fg =  '$myBorder', fmt = "bold" },
    TelescopePreviewBorder = { fg =  '$myBorder', fmt = "bold" },
    TelescopeBorder = { fg =  '$myBorder', fmt = "bold" },
  }
}