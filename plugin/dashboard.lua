local db = require('dashboard')

db.custom_header = {
  'Hello =]',
}

db.custom_center = {
  { icon = '  ', desc = 'New file                       ', action = 'enew' },
  { icon = '  ', shortcut = 'Ctrl+p', desc = 'Find file                 ', action = 'Telescope find_files' },
  { icon = '  ', shortcut = 'Ctrl+e', desc = 'Recent files              ', action = 'Telescope oldfiles' },
  { icon = '  ', shortcut = 'Ctrl+f', desc = 'Find Word                 ', action = 'Telescope live_grep' },
  { icon = 'פּ  ', shortcut = 'Ctrl+b', desc = 'File tree                 ', action = 'NvimTreeFindFileToggle' },
  { icon = ' ', shortcut = 'Ctrl+t', desc = 'Terminal                   ', action = 'FloatermToggle scratch' },
}

db.custom_footer = { '' }

vim.cmd([[
  augroup DashboardHighlights
    autocmd ColorScheme * highlight DashboardHeader guifg=#6272a4
    autocmd ColorScheme * highlight DashboardCenter guifg=#f8f8f2
    autocmd ColorScheme * highlight DashboardShortcut guifg=#bd93f9
    autocmd ColorScheme * highlight DashboardFooter guifg=#6272a4
  augroup end
]])
vim.api.nvim_set_hl(0, 'DashboardHeader', { fg = '#6272a4' })
vim.api.nvim_set_hl(0, 'DashboardCenter', { fg = '#f8f8f2' })
vim.api.nvim_set_hl(0, 'DashboardShortcut', { fg = '#bd93f9' })
vim.api.nvim_set_hl(0, 'DashboardFooter', { fg = '#6272a4' })