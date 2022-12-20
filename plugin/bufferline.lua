vim.opt.termguicolors = true
require("bufferline").setup {
  options = {
    mode = "buffers",
    truncate_names = false,
    separator_style = "thin"
  }
}