require("nvim-tree").setup()

vim.api.nvim_set_keymap("", "<leader>e", ":NvimTreeToggle<Cr>", { silent = true })
