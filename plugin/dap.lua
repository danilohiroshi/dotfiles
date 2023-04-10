local dap = require('dap')
dap.adapters.node = {
  type = 'executable',
  command = 'node',
  args = {os.getenv('HOME') .. '/.local/share/nvim/mason/packages/node-debug2-adapter/out/src/nodeDebug.js'},
}
dap.adapters.node2 = dap.adapters.node
dap.adapters["pwa-node"] = {
  type = "server",
  host = "localhost",
  port = "${port}",
  executable = {
    command = "node",
    -- 💀 Make sure to update this path to point to your installation
    args = {os.getenv('HOME') .. '/.local/share/nvim/js-debug/src/dapDebugServer.js', "${port}"},
  }
}
dap.configurations.typescript = {
  {
    name = 'Launch',
    type = 'pwa-node',
    request = 'launch',
    program = '${workspaceFolder}/node_modules/serverless/bin/serverless',
    args = { 'offline', 'start', '--stage', 'dev', '--noTimeout' };
    options = {
      env = { AWS_PROFILE = "vision-dxp" };
    };
    cwd = vim.fn.getcwd(),
    cwd = '${workspaceFolder}',
    sourceMaps = false,
    protocol = 'inspector',
    console = 'integratedTerminal',
  }
}

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