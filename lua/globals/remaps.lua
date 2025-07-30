local opts = { noremap=true, silent=true }

-- Space is my leader.
-- vim.g.mapleader = ' '
-- vim.g.maplocalleader = ' '

-- Copy and Paste
vim.api.nvim_set_keymap("v", "<c-c>", '"+ygv', opts)
vim.api.nvim_set_keymap("i", "<c-v>", '<esc>"+p', opts)
vim.api.nvim_set_keymap("n", "<c-v>", '<esc>"+p', opts)

-- Ctrl+S for saving
vim.api.nvim_set_keymap("n", "<c-s>", '<esc>:w<CR>', opts)
vim.api.nvim_set_keymap("i", "<c-s>", '<esc>:w<CR>i', opts)

-- Ctrl+Z for undo
vim.api.nvim_set_keymap("n", "<c-z>", '<esc>u>', opts)
vim.api.nvim_set_keymap("i", "<c-z>", '<esc>u>', opts)
vim.api.nvim_set_keymap("v", "<c-z>", '<esc>u>', opts)

-- Ctrl+X
vim.api.nvim_set_keymap("n", "<c-x>", '', opts)
vim.api.nvim_set_keymap("i", "<c-x>", '', opts)
vim.api.nvim_set_keymap("v", "<c-x>", 'ygvd<esc>', opts)

-- File Explorer
vim.api.nvim_set_keymap("n", "-", '<esc>:Explore<CR>', opts)

-- Duplicate line
vim.api.nvim_set_keymap("n", "<c-d>", '<S-v>yp', opts)
vim.api.nvim_set_keymap("v", "<c-d>", 'ygv<esc>p', opts)

-- Clear highlighting
-- vim.api.nvim_set_keymap("v", "<Leader><Leader>", '<esc>:noh<CR>', opts)
-- vim.api.nvim_set_keymap("v", "<Leader><Leader>", '<esc>:noh<CR>', opts)
vim.api.nvim_set_keymap("n", "<CR>", '<esc>:noh<CR>', opts)

-- Undo
vim.api.nvim_set_keymap("i", "<c-z>", '<esc>ui', opts)
vim.api.nvim_set_keymap("n", "<c-z>", 'u', opts)

-- Reselect visual selection after indenting.
vim.keymap.set('v', '<', '<gv')
vim.keymap.set('v', '>', '>gv')

-- Maintain the cursor position when yanking a visual selection.
-- http://ddrscott.github.io/blog/2016/yank-without-jank/
vim.keymap.set('v', 'y', 'myy`y')

-- Disable annoying command line typo.
vim.keymap.set('n', 'q:', ':q')

-- Paste replace visual selection without copying it.
vim.keymap.set('v', 'p', '"_dP')

-- Move lines up and down.
vim.keymap.set('i', '<A-j>', '<Esc>:move .+1<CR>==gi')
vim.keymap.set('i', '<A-k>', '<Esc>:move .-2<CR>==gi')
vim.keymap.set('n', '<A-j>', ':move .+1<CR>==')
vim.keymap.set('n', '<A-k>', ':move .-2<CR>==')
vim.keymap.set('v', '<A-j>', ":move '>+1<CR>gv=gv")
vim.keymap.set('v', '<A-k>', ":move '<-2<CR>gv=gv")

-- When text is wrapped, move by terminal rows, not lines, unless a count is provided.
vim.keymap.set('n', 'k', "v:count == 0 ? 'gk' : 'k'", { expr = true })
vim.keymap.set('n', 'j', "v:count == 0 ? 'gj' : 'j'", { expr = true })

-- Select all
vim.api.nvim_set_keymap("n", "<c-a>", 'ggVG', opts)
vim.api.nvim_set_keymap("i", "<c-a>", '<esc>ggVG', opts)
vim.api.nvim_set_keymap("v", "<c-a>", '<esc>ggVG', opts)

-- Switch panel
vim.keymap.set('n', '<c-j>', '<c-w>j')
vim.keymap.set('n', '<c-k>', '<c-w>k')
vim.keymap.set('n', '<c-l>', '<c-w>l')
vim.keymap.set('n', '<c-h>', '<c-w>h')
vim.keymap.set('i', '<c-j>', '<c-w>j')
vim.keymap.set('i', '<c-k>', '<c-w>k')
vim.keymap.set('i', '<c-l>', '<c-w>l')
vim.keymap.set('i', '<c-h>', '<c-w>h')

-- Close buffer
vim.keymap.set('n', '<c-q>', ':bd<CR>')
vim.keymap.set('i', '<c-q>', '<esc>:bd<CR>')
vim.keymap.set('v', '<c-q>', '<esc>:bd<CR>')

-- Tab navigation
vim.keymap.set('n', '<tab>', '<cmd>bnext<CR>')
vim.keymap.set('n', '<S-tab>', '<cmd>bprevious<CR>')
