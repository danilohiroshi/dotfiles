-- Yank to system Clipboard
vim.o.clipboard = 'unnamedplus'

-- Convert tabs to space
vim.o.expandtab = true

-- tabsize = 2
vim.o.tabstop = 2
vim.o.shiftwidth = 2

-- Enable mouse
vim.g.mouse = a
vim.g.mouse = nicr

-- Disable swapfiles
vim.cmd('set noswapfile')

-- Split right first
vim.opt.splitright = true