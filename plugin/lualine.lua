local separator = { '"▏"', color = 'StatusLineNonText' }

require('lualine').setup({
  options = {
    section_separators = '',
    component_separators = '',
    globalstatus = true,
    theme = {
      normal = {
        a = 'StatusLine',
        b = 'StatusLine',
        c = 'StatusLine',
      },
    },
  },
  sections = {
    lualine_a = {
      'mode',
      separator,
    },
    lualine_b = {
      'branch',
      'diff',
      { 'diagnostics', sources = { 'nvim_diagnostic' } },
      separator,
    },
    lualine_c = {
      'filename',
      -- 'lsp_progress',
      separator
    },
    lualine_x = {
      'filetype',
      'encoding',
      'fileformat',
      separator
    },
    lualine_y = {
      '(vim.bo.expandtab and "␠ " or "⇥ ") .. " " .. vim.bo.shiftwidth',
      separator
    },
    lualine_z = {
      'location',
      'progress',
    },
  },
})
