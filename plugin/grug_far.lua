require('grug-far').setup({});
vim.api.nvim_set_keymap("n", "<C-F>", '<cmd>lua require("grug-far").toggle_instance({ instanceName="far", staticTitle="Find and Replace" })<CR>', {noremap=true, silent=true})
vim.api.nvim_set_keymap("v", "<C-f>", 'y<esc><cmd>lua require("grug-far").open({ prefills = { search = vim.fn.expand("<cword>") } })<CR>', {noremap=true, silent=true})