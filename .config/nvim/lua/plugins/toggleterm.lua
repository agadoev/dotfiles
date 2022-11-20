require("toggleterm").setup({
  size = 10,
  open_mapping = [[<F7>]],
  shading_factor = 2,
  direction = "float",
  persist_mode = true,
  float_opts = {
    border = "double",
    highlights = {
      border = "Normal",
      background = "Normal",
    },
  },
})

local map = vim.api.nvim_set_keymap


map("", "<leader>tf", ":ToggleTerm direction=float<Cr>", { silent = true })
map("", "<leader>th", ":ToggleTerm size=10 direction=horizontal<Cr>", { silent = true })
map("", "<leader>tv", ":ToggleTerm size=80 direction=vertical<Cr>", { silent = true })
map("", "<F7>", ":ToggleTerm", { silent = true })

