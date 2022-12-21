local telescope = require('telescope')
local actions = require('telescope.actions')


vim.cmd([[
  highlight link TelescopePromptTitle PMenuSel
  highlight link TelescopePreviewTitle PMenuSel
  highlight link TelescopePromptNormal NormalFloat
  highlight link TelescopePromptBorder FloatBorder
  highlight link TelescopeNormal CursorLine
  highlight link TelescopeBorder CursorLineBg
]])

telescope.setup({
  defaults = {
    path_display = { truncate = 1 },
    prompt_prefix = '   ',
    selection_caret = '  ',
    layout_config = {
      prompt_position = 'top',
    },
    sorting_strategy = 'ascending',
    mappings = {
      i = {
        ['<esc>'] = actions.close,
        ['<C-Down>'] = actions.cycle_history_next,
        ['<C-Up>'] = actions.cycle_history_prev,
      },
    },
    file_ignore_patterns = { '.git/' },
  },
  pickers = {
    find_files = {
      hidden = true,
    },
    buffers = {
      previewer = false,
      layout_config = {
        width = 80,
      },
    },
    oldfiles = {
      prompt_title = 'History',
    },
    lsp_references = {
      previewer = false,
    },
  },
})

require('telescope').load_extension('fzf')
require('telescope').load_extension('live_grep_args')

-- Open file: Ctrl-p
vim.api.nvim_set_keymap("n", "<c-p>", ':Telescope find_files<CR>', {noremap=true, silent=true})

-- Global Search: Ctrl-Shift-f
vim.api.nvim_set_keymap("n", "<C-f>", ':Telescope live_grep<CR>', {noremap=true, silent=true})

-- Open Old files
vim.api.nvim_set_keymap("n", "<c-e>", ':Telescope oldfiles<CR>', {noremap=true, silent=true})

-- Git status
vim.api.nvim_set_keymap("n", "<c-g>", ':Telescope git_status<CR>', {noremap=true, silent=true})

-- Find symbols
vim.keymap.set('n', '<c-r>', [[<cmd>lua require('telescope.builtin').lsp_document_symbols()<CR>]])