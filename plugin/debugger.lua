
-- https://github.com/rcarriga/nvim-dap-ui
-- https://github.com/mfussenegger/nvim-dap

local opts = { noremap=true, silent=true }
vim.api.nvim_set_keymap("n", "<F5>", ':DapContinue<cr>', opts)
vim.api.nvim_set_keymap("n", "<F8>", ':DapStepOver<cr>', opts)
vim.api.nvim_set_keymap("n", "<F7>", ':DapStepInto<cr>', opts)
vim.api.nvim_set_keymap("n", "<S-F5>", ':DapTerminate<cr>', opts)
vim.api.nvim_set_keymap("n", "<F10>", ':DapToggleBreakpoint<cr>', opts)