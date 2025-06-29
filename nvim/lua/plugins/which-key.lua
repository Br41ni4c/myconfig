return {
  {
    "folke/which-key.nvim",
    event = "VeryLazy", -- Load which-key very late for fastest startup
    init = function()
      vim.o.timeout = true
      vim.o.timeoutlen = 1000
    end,
    opts = {
      winndow = {
        position = "center",
      },
    },
  },
}
