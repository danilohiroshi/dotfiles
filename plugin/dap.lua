local js_based_languages = {
  "typescript",
  "javascript",
  "typescriptreact",
  "javascriptreact",
  "vue",
}

local dap = require('dap')
for _, language in ipairs(js_based_languages) do
  dap.configurations[language] = {
    -- Debug single nodejs files
    {
      type = "pwa-node",
      request = "launch",
      name = "Launch file",
      program = "${file}",
      cwd = vim.fn.getcwd(),
      sourceMaps = true,
    },
    -- Debug nodejs processes (make sure to add --inspect when you run the process)
    {
      type = "pwa-node",
      request = "attach",
      name = "Attach",
      processId = require("dap.utils").pick_process,
      cwd = vim.fn.getcwd(),
      sourceMaps = true,
    },
    -- Debug web applications (client side)
    {
      type = "pwa-chrome",
      request = "launch",
      name = "Launch & Debug Chrome",
      url = function()
        local co = coroutine.running()
        return coroutine.create(function()
          vim.ui.input({
            prompt = "Enter URL: ",
            default = "http://localhost:3000",
          }, function(url)
            if url == nil or url == "" then
              return
            else
              coroutine.resume(co, url)
            end
          end)
        end)
      end,
      webRoot = vim.fn.getcwd(),
      protocol = "inspector",
      sourceMaps = true,
      userDataDir = false,
    },
    -- Divider for the launch.json derived configs
    {
      name = "Next.js: debug web app",
      type = "node-terminal",
      request = "launch",
      command= "npm run dev",
      webRoot = vim.fn.getcwd(),
      sourceMaps = true,
    }
  }
end
require("dap-vscode-js").setup({
  -- Path of node executable. Defaults to $NODE_PATH, and then "node"
  -- node_path = "node",

  -- Path to vscode-js-debug installation.
  debugger_path = vim.fn.resolve(os.getenv('HOME') .. "/Code/vscode-js-debug"),

  -- Command to use to launch the debug server. Takes precedence over "node_path" and "debugger_path"
  -- debugger_cmd = { "js-debug-adapter" },

  -- which adapters to register in nvim-dap
  adapters = {
    "chrome",
    "pwa-node",
    "pwa-chrome",
    "pwa-msedge",
    "pwa-extensionHost",
    "node-terminal",
  },
})

-- dap.adapters.node = {
--   type = 'executable',
--   command = 'node',
--   -- args = {os.getenv('HOME') .. '/.local/share/nvim/mason/packages/node-debug2-adapter/out/src/nodeDebug.js'},
--   args = {vim.fn.resolve(os.getenv('HOME') .. "/Code/vscode-js-debug/out/src/vsDebugServer.js")},
-- }
-- require('dap.ext.vscode').load_launchjs(nil, { 
--   node = {
--     'javascript',
--     'javascriptreact',
--     'typescriptreact',
--     'typescript'
--   } 
-- })
-- dap.defaults.fallback.terminal_win_cmd = 'tabnew'

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
-- dap.listeners.before.event_terminated["dapui_config"] = function()
--   dapui.close()
-- end
-- dap.listeners.before.event_exited["dapui_config"] = function()
--   dapui.close()
-- end
