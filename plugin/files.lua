require("fyler").setup({})
vim.keymap.set("n", "<c-b>", "<CMD>Fyler kind=split_left<CR>", { desc = "Open parent directory" })