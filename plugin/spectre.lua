vim.api.nvim_set_keymap("n", "<C-f>", '<cmd>lua require("spectre").toggle()<CR>', {noremap=true, silent=true})
vim.api.nvim_set_keymap("v", "<C-f>", 'y<esc><cmd>lua require("spectre").toggle()<CR><esc>pi<esc>', {noremap=true, silent=true})
-- vim.api.nvim_set_keymap("v", "<C-f>", 'y<esc><cmd>lua require("spectre").toggle()<CR><esc>ia<esc>vpv$y', {noremap=true, silent=true})
-- vim.api.nvim_set_keymap("i", "<C-f>", '<esc>:Telescope live_grep<CR>', {noremap=true, silent=true})