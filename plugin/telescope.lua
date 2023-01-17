local telescope = require('telescope')
local actions = require('telescope.actions')



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
        -- ['<esc>'] = actions.close,
        ['<C-Down>'] = actions.cycle_history_next,
        ['<C-Up>'] = actions.cycle_history_prev,
        ['<C-v>'] = { '<esc>ia<esc>vpv$y', type = "command" }
      }
    },
    color_devicons = true,
    border = {},
    borderchars = { "─", "│", "─", "│", "╭", "╮", "╯", "╰" },
    winblend = 0,
    layout_config = {
      horizontal = {
        prompt_position = "top",
        preview_width = 0.55,
        results_width = 0.8,
      },
      vertical = {
        mirror = false,
      },
      width = 0.87,
      height = 0.80,
      preview_cutoff = 120,
    },
    file_ignore_patterns = { '.git/', "node_modules", "min.js", "jquery.js" },
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
vim.api.nvim_set_keymap("v", "<c-p>", 'y<esc>:Telescope find_files<CR><esc>ia<esc>vpv$y', {noremap=true, silent=true})
vim.api.nvim_set_keymap("i", "<c-p>", 'y<esc>:Telescope find_files<CR>', {noremap=true, silent=true})

-- Global Search: Ctrl-Shift-f
vim.api.nvim_set_keymap("n", "<C-f>", ':Telescope live_grep<CR>', {noremap=true, silent=true})
vim.api.nvim_set_keymap("v", "<C-f>", 'y<esc>:Telescope live_grep<CR><esc>ia<esc>vpv$y', {noremap=true, silent=true})
vim.api.nvim_set_keymap("i", "<C-f>", '<esc>:Telescope live_grep<CR>', {noremap=true, silent=true})

-- Open Old files
vim.api.nvim_set_keymap("n", "<c-e>", ':Telescope oldfiles<CR>', {noremap=true, silent=true})
vim.api.nvim_set_keymap("v", "<c-e>", '<esc>:Telescope oldfiles<CR>', {noremap=true, silent=true})
vim.api.nvim_set_keymap("i", "<c-e>", '<esc>:Telescope oldfiles<CR>', {noremap=true, silent=true})

-- Git status
vim.api.nvim_set_keymap("n", "<c-g>", ':Telescope git_status<CR>', {noremap=true, silent=true})
vim.api.nvim_set_keymap("v", "<c-g>", '<esc>:Telescope git_status<CR>', {noremap=true, silent=true})
vim.api.nvim_set_keymap("i", "<c-g>", '<esc>:Telescope git_status<CR>', {noremap=true, silent=true})

-- Find symbols
vim.keymap.set('n', '<c-r>', [[<cmd>lua require('telescope.builtin').lsp_document_symbols()<CR>]])
vim.keymap.set('v', '<c-r>', [[<cmd>lua require('telescope.builtin').lsp_document_symbols()<CR>]])
vim.keymap.set('i', '<c-r>', [[<cmd>lua require('telescope.builtin').lsp_document_symbols()<CR>]])

-- Pickers
vim.api.nvim_set_keymap("n", "<c-h>", ':Telescope pickers<CR>', {noremap=true, silent=true})
vim.api.nvim_set_keymap("v", "<c-h>", '<esc>:Telescope pickers<CR>', {noremap=true, silent=true})
vim.api.nvim_set_keymap("i", "<c-h>", '<esc>:Telescope pickers<CR>', {noremap=true, silent=true})

-- Buffers
vim.api.nvim_set_keymap("n", "<Tab><Tab>", ':Telescope buffers<CR>', {noremap=true, silent=true})
