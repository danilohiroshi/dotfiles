-- Netrw configuration for sidebar file manager
vim.g.netrw_banner = 0        -- Remove o cabeçalho de ajuda
vim.g.netrw_liststyle = 3     -- Estilo de árvore (hierárquico)
vim.g.netrw_winsize = 25      -- Largura da barra (25%)
vim.g.netrw_browse_split = 4  -- Abrir em janela anterior
vim.g.netrw_altv = 1          -- Abrir splits à direita

-- Function to toggle sidebar with focus on current file
local function toggle_explorer()
  -- Check if netrw is already open
  for _, win in ipairs(vim.api.nvim_list_wins()) do
    local buf = vim.api.nvim_win_get_buf(win)
    if vim.bo[buf].filetype == 'netrw' then
      vim.cmd('Lexplore')
      return
    end
  end

  -- Open in current file's directory if file exists
  local current_file = vim.fn.expand('%:p')
  if current_file ~= '' and vim.fn.filereadable(current_file) == 1 then
    vim.cmd('Lexplore %:p:h')
  else
    vim.cmd('Lexplore')
  end
end

-- Keybinding to toggle sidebar
vim.keymap.set('n', '<c-b>', toggle_explorer, { desc = 'Toggle file explorer sidebar', silent = true })

-- Auto-close netrw when it's the last window
vim.api.nvim_create_autocmd('FileType', {
  pattern = 'netrw',
  callback = function()
    vim.keymap.set('n', 'q', '<cmd>close<CR>', { buffer = true, silent = true })
  end,
})
