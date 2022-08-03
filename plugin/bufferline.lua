vim.opt.termguicolors = true
require("bufferline").setup {
  options = {
    buffer_close_icon = 'x',
    close_icon = 'x',
    left_trunc_marker = 'o',
    right_trunc_marker = 'o',
    modified_icon = '*',
    indicator_icon = '>',
  }
}