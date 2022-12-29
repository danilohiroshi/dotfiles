-- vim.g.nvim_tree_indent_markers = 1
-- vim.g.nvim_tree_git_hl = 1

require('nvim-tree').setup({
  git = {
    ignore = false,
  },
  renderer = {
    highlight_opened_files = '1',
    group_empty = true,
    icons = {
      show = {
        folder_arrow = false,
      },
    },
    indent_markers = {
      enable = true,
      -- inline_arrows = false,
    },
  },
  view = {
    float = {
      enable = true,
      quit_on_focus_loss = true,
      open_win_config = {
        relative = "editor",
        border = "rounded",
        width = 100,
        height = 100,
        row = 1,
        col = 1,
      }
    }
  }
})

vim.cmd([[
  highlight NvimTreeIndentMarker guifg=#30323E
  augroup NvimTreeHighlights
    autocmd ColorScheme * highlight NvimTreeIndentMarker guifg=#30323E
  augroup end
]])

vim.keymap.set('n', '<c-b>', ':NvimTreeFindFileToggle<CR>')