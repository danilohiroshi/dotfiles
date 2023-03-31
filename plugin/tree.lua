vim.g.nvim_tree_indent_markers = 1
vim.g.nvim_tree_git_hl = 1

require('nvim-tree').setup({
  git = {
    ignore = false,
  },
  renderer = {
    highlight_opened_files = '1',
    group_empty = false,
    indent_width = 1,
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
      enable = false,
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
  },
  update_focused_file = {
    enable = true,
    update_root = false,
    ignore_list = {},
  },
})

vim.cmd([[
  highlight NvimTreeIndentMarker guifg=#30323E
  augroup NvimTreeHighlights
    autocmd ColorScheme * highlight NvimTreeIndentMarker guifg=#30323E
  augroup end
]])

vim.keymap.set('n', '<c-b>', ':NvimTreeFindFileToggle<CR>')