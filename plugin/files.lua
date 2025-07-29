require("oil").setup()
vim.keymap.set("n", "<c-b>", "<CMD>Oil<CR>", { desc = "Open parent directory" })