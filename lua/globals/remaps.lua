local opts = { noremap=true, silent=true }

-- Space is my leader.
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- Copy and Paste
vim.api.nvim_set_keymap("v", "<c-c>", '"+ygv', opts)
vim.api.nvim_set_keymap("i", "<c-v>", '<esc>"+p', opts)
vim.api.nvim_set_keymap("n", "<c-v>", '<esc>"+p', opts)

-- Ctrl+S for saving
vim.api.nvim_set_keymap("n", "<c-s>", '<esc>:w<CR>', opts)
vim.api.nvim_set_keymap("i", "<c-s>", '<esc>:w<CR>i', opts)

-- Ctrl+Z for undo
vim.api.nvim_set_keymap("n", "<c-z>", '<esc>u>', opts)

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
vim.api.nvim_set_keymap("v", "<Leader><Leader>", '<esc>:noh<CR>', opts)
vim.api.nvim_set_keymap("n", "<Leader><Leader>", '<esc>:noh<CR>', opts)

-- Close buffer
vim.api.nvim_set_keymap("n", "<c-w>", ':bdelete<cr>', opts)

-- Undo
vim.api.nvim_set_keymap("i", "<c-z>", '<esc>ui', opts)
vim.api.nvim_set_keymap("n", "<c-z>", 'u', opts)

-- Window split
vim.api.nvim_set_keymap("n", "<C-h>", "<C-w>h", opts)
vim.api.nvim_set_keymap("n", "<C-j>", "<C-w>j", opts)
vim.api.nvim_set_keymap("n", "<C-k>", "<C-w>k", opts)
vim.api.nvim_set_keymap("n", "<C-l>", "<C-w>l", opts)

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

-- Easy insertion of a trailing ; or , from insert mode.
vim.keymap.set('i', ',,', '<Esc>A,')
vim.keymap.set('i', ';;', '<Esc>A;')

-- Move lines up and down.
vim.keymap.set('i', '<A-j>', '<Esc>:move .+1<CR>==gi')
vim.keymap.set('i', '<A-k>', '<Esc>:move .-2<CR>==gi')
vim.keymap.set('n', '<A-j>', ':move .+1<CR>==')
vim.keymap.set('n', '<A-k>', ':move .-2<CR>==')
vim.keymap.set('v', '<A-j>', ":move '>+1<CR>gv=gv")
vim.keymap.set('v', '<A-k>', ":move '<-2<CR>gv=gv")

-- Buffers navigation
vim.keymap.set('n', '<c-q>', ":bnext<CR>")
vim.keymap.set('n', '<c-w>', ":bd<CR>")
vim.keymap.set('i', '<c-q>', "<esc>:bnext<CR>")
vim.keymap.set('i', '<c-w>', "<esc>:bd<CR>")
vim.keymap.set('v', '<c-q>', "<esc>:bnext<CR>")
vim.keymap.set('v', '<c-w>', "<esc>:bd<CR>")

-- When text is wrapped, move by terminal rows, not lines, unless a count is provided.
vim.keymap.set('n', 'k', "v:count == 0 ? 'gk' : 'k'", { expr = true })
vim.keymap.set('n', 'j', "v:count == 0 ? 'gj' : 'j'", { expr = true })