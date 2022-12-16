-- Enable relative numbers
vim.o.relativenumber = true

-- Yank to system Clipboard
vim.o.clipboard = 'unnamedplus'

-- Convert tabs to space
vim.o.expandtab = true

-- tabsize = 2
vim.o.tabstop = 2
vim.o.shiftwidth = 2
vim.o.softtabstop = 2

-- Indentation
vim.opt.smartindent = true

-- Line wrap
vim.opt.wrap = false

-- Enable mouse
vim.g.mouse = a
vim.g.mouse = nicr

-- Split right first
vim.opt.splitright = true

-- Search
vim.o.incsearch = true

-- Cursor line
vim.o.cursorline = true

-- Scroll offset
vim.o.scrolloff = 5

-- Column guide
vim.o.colorcolumn = '80'

-- Case sensitive automatically
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- Complete the longest common match, and allow tabbing the results to fully complete them
vim.opt.wildmode = 'longest:full,full'


-- Ask to save when exit
vim.opt.confirm = true

-- Persist undo
vim.opt.undofile = true
vim.opt.backup = true
vim.opt.backupdir:remove('.')

-- Disable swapfiles
vim.cmd('set noswapfile')
