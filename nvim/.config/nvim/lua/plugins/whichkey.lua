return {
  "folke/which-key.nvim",
  dependencies = {"echasnovski/mini.nvim", version = '*',
  "nvim-tree/nvim-web-devicons", opts = {}},
  event = "VeryLazy",
  opts = {},
  keys = {
    {
      "<leader>?",
      function()
        require("which-key").show({global = false})
      end,
      desc = "Buffer Local Keymaps (which-key)",
    },
  },
}
