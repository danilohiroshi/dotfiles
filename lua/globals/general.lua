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
vim.opt.wrap = true

-- Enable mouse
vim.opt.title = true
vim.opt.mouse = 'a' -- enable mouse for all modes

-- Split right first
vim.opt.splitbelow = true
vim.opt.splitright = true

-- Search
vim.opt.incsearch = true

-- Cursor line
vim.opt.cursorline = true

-- Scroll offset
vim.opt.scrolloff = 20
vim.opt.sidescrolloff = 8

-- Column guide
-- vim.opt.colorcolumn = '80'

-- Case sensitive automatically
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- Complete the longest common match, and allow tabbing the results to fully complete them
vim.opt.wildmode = 'longest:full,full'
vim.opt.completeopt = 'menuone,longest,preview'

-- Ask to save when exit
vim.opt.confirm = true

-- Persist undo
vim.opt.undofile = true
vim.opt.backup = true
vim.opt.backupdir:remove('.')

vim.opt.termguicolors = true

vim.opt.list = true -- enable the below listchars
vim.opt.listchars = { tab = '▸ ', trail = '·' }
vim.opt.fillchars:append({ eob = ' ' }) -- remove the ~ from end of buffer

-- Disable swapfiles
vim.cmd('set noswapfile')

-- Indentation
vim.cmd('set autoindent')

-- Fold
vim.cmd('set foldmethod=manual')
