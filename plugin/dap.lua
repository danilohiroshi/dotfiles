-- Remaps
local opts = { noremap=true, silent=true }
vim.api.nvim_set_keymap("n", "<Leader>b", ":lua require'dap'.toggle_breakpoint()<cr>", opts)
vim.api.nvim_set_keymap("n", "<F6>", ":lua require'dap'.terminate()<cr>", opts)
vim.api.nvim_set_keymap("n", "<F5>", ":lua require'dap'.continue()<cr>", opts)
vim.api.nvim_set_keymap("n", "<F7>", ":lua require'dap'.step_into()<cr>", opts)
vim.api.nvim_set_keymap("n", "<F8>", ":lua require'dap'.step_over()<cr>", opts)
vim.api.nvim_set_keymap("n", "<F9>", ":lua require'dap'.step_out()<cr>", opts)
-- vim.api.nvim_set_keymap("n", "<S-h>", ":lua require('dap.ui.widgets').hover()<cr>", opts)

require("dapui").setup()
local dap, dapui = require("dap"), require("dapui")
dap.listeners.after.event_initialized["dapui_config"] = function()
  dapui.open()
end
dap.listeners.before.event_terminated["dapui_config"] = function()
  dapui.close()
end
dap.listeners.before.event_exited["dapui_config"] = function()
  dapui.close()
end

-- Node.js and TypeScript configuration for AWS Lambda
dap.configurations.typescript = {
  {
    type = 'pwa-node', -- Use 'pwa-node' for the js-debug-adapter
    request = 'launch',
    name = 'Launch AWS Lambda Function',
    cwd = vim.fn.getcwd(),
    sourceMaps = true,
    protocol = 'inspector',
    outFiles = { "${workspaceFolder}/dist/**/*.js" }, -- Adjust this to match your build output
    runtimeArgs = { "--inspect-brk" }, -- Optional: Start with a breakpoint
    console = 'integratedTerminal',
  },
  {
    type = 'pwa-node', -- Use 'pwa-node' for the js-debug-adapter
    request = 'attach',
    name = 'Attach to AWS Lambda Process',
    processId = require'dap.utils'.pick_process,
    cwd = vim.fn.getcwd(),
    sourceMaps = true,
    protocol = 'inspector',
    console = 'integratedTerminal',
  },
}