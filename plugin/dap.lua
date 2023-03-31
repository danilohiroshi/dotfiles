local dap = require('dap')
dap.adapters.node = {
  type = 'executable',
  command = 'node',
  args = {os.getenv('HOME') .. '/.local/share/nvim/mason/packages/node-debug2-adapter/out/src/nodeDebug.js'},
}
dap.adapters.node2 = {
  type = 'executable',
  command = 'node',
  args = {os.getenv('HOME') .. '/.local/share/nvim/mason/packages/node-debug2-adapter/out/src/nodeDebug.js'},
}

require('dap.ext.vscode').load_launchjs(nil, { node = {'javascript', 'javascriptreact', 'typescriptreact', 'typescript' } })

-- dap.configurations.typescript = {
--   {
--     name = 'Launch',
--     type = 'node2',
--     request = 'launch',
--     program = '${workspaceFolder}/node_modules/serverless/bin/serverless',
--     args = { 'offline', 'start', '--stage', 'dev', '--noTimeout' };
--     options = {
--       env = { AWS_PROFILE = "vision-dxp" };
--     };
--     cwd = vim.fn.getcwd(),
--     cwd = '${workspaceFolder}',
--     sourceMaps = false,
--     protocol = 'inspector',
--     console = 'integratedTerminal',
--   }
-- }
-- dap.configurations.typescript = {
--   {
--     name = 'Launch',
--     type = 'node2',
--     request = 'launch',
--     program = '${workspaceFolder}/node_modules/serverless/bin/serverless',
--     args = { 'offline', 'start', '--stage', 'dev', '--noTimeout' };
--     options = {
--       env = { "AWS_PROFILE=vision-dxp" };
--     };
--     -- cwd = vim.fn.getcwd(),
--     cwd = '${workspaceFolder}',
--     sourceMaps = false,
--     protocol = 'inspector',
--     console = 'integratedTerminal',
--   }
-- }

-- dap.configurations.javascript = {
--   {
--     name = 'Launch',
--     type = 'node2',
--     request = 'launch',
--     program = '${file}',
--     cwd = vim.fn.getcwd(),
--     sourceMaps = true,
--     protocol = 'inspector',
--     console = 'integratedTerminal',
--   },
--   {
--     -- For this to work you need to make sure the node process is started with the `--inspect` flag.
--     name = 'Attach to process',
--     type = 'node2',
--     request = 'attach',
--     processId = require'dap.utils'.pick_process,
--   },
-- }

dap.defaults.fallback.terminal_win_cmd = 'tabnew'

local opts = { noremap=true, silent=true }
vim.api.nvim_set_keymap("n", "<Leader>b", ":lua require'dap'.toggle_breakpoint()<cr>", opts)
vim.api.nvim_set_keymap("n", "<F6>", ":lua require'dap'.terminate()<cr>", opts)
vim.api.nvim_set_keymap("n", "<F5>", ":lua require'dap'.continue()<cr>", opts)
vim.api.nvim_set_keymap("n", "<F7>", ":lua require'dap'.step_into()<cr>", opts)
vim.api.nvim_set_keymap("n", "<F8>", ":lua require'dap'.step_over()<cr>", opts)
vim.api.nvim_set_keymap("n", "<F9>", ":lua require'dap'.step_out()<cr>", opts)
vim.fn.sign_define('DapBreakpoint', {text='🛑', texthl='', linehl='', numhl=''})

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