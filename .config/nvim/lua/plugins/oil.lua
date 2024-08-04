return {
  'stevearc/oil.nvim',
  opts = {},
  setup = function()
    require("oil").setup()
  end,
  keys = {
    {"-", "<CMD>Oil<CR>", { desc = "Open parent directory" }},
  },
  -- Optional dependencies

  dependencies = { "nvim-tree/nvim-web-devicons" },
}

