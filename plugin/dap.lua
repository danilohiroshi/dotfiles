-- Key mappings for debugging
local opts = { noremap=true, silent=true }
vim.api.nvim_set_keymap("n", "<Leader>b", ":lua require'dap'.toggle_breakpoint()<cr>", opts)
vim.api.nvim_set_keymap("n", "<F6>", ":lua require'dap'.terminate()<cr>", opts)
vim.api.nvim_set_keymap("n", "<F5>", ":lua require'dap'.continue()<cr>", opts)
vim.api.nvim_set_keymap("n", "<F7>", ":lua require'dap'.step_into()<cr>", opts)
vim.api.nvim_set_keymap("n", "<F8>", ":lua require'dap'.step_over()<cr>", opts)
vim.api.nvim_set_keymap("n", "<F9>", ":lua require'dap'.step_out()<cr>", opts)
vim.api.nvim_set_keymap("n", "<Leader>du", ":lua require'dapui'.toggle()<CR>", opts)
vim.api.nvim_set_keymap("n", "<Leader>de", ":lua require'dapui'.eval()<CR>", opts)
vim.api.nvim_set_keymap("v", "<Leader>de", ":lua require'dapui'.eval()<CR>", opts)

-- Add signs for breakpoints
vim.fn.sign_define('DapBreakpoint', {text='🔴', texthl='', linehl='', numhl=''})
vim.fn.sign_define('DapStopped', {text='▶️', texthl='', linehl='', numhl=''})
vim.fn.sign_define('DapBreakpointRejected', {text='⭕', texthl='', linehl='', numhl=''})