require("fyler").setup({
  mappings = {
    explorer = {
      ["<c-b>"] = "CloseView",
      ["<CR>"] = "Select",
    },
    confirm = {
      ["y"] = "Confirm",
      ["n"] = "Discard",
    },
  },
})
vim.keymap.set("n", "<c-b>", "<CMD>Fyler kind=split_left<CR>", { desc = "Open parent directory" })