-- Enable relative numbers
vim.opt.number = true
vim.opt.relativenumber = true

-- Yank to system Clipboard
vim.opt.clipboard = 'unnamedplus'

-- Convert tabs to space
vim.opt.expandtab = true

-- tabsize = 2
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.softtabstop = 2

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
vim.opt.incsearch = true

-- Cursor line
vim.opt.cursorline = true

-- Scroll offset
vim.opt.scrolloff = 5

-- Column guide
vim.opt.colorcolumn = '80'

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
