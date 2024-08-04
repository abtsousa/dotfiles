-- local is_neovide = vim.g.neovide
return {
  {
    "catppuccin/nvim",
    lazy = true,
    name = "catppuccin",
    opts = {
      transparent_background = false,
      integrations = {
        alpha = true,
        cmp = true,
        flash = true,
        gitsigns = true,
        illuminate = true,
        indent_blankline = { enabled = true },
        lsp_trouble = true,
        mason = true,
        mini = true,
        native_lsp = {
          enabled = true,
          underlines = {
            errors = { "undercurl" },
            hints = { "undercurl" },
            warnings = { "undercurl" },
            information = { "undercurl" },
          },
        },
        navic = { enabled = true, custom_bg = "lualine" },
        neotest = true,
        noice = true,
        notify = true,
        neotree = true,
        semantic_tokens = true,
        telescope = true,
        treesitter = true,
        which_key = true,
        coc_nvim = true,
        markdown = true,
        nvimtree = true,
        rainbow_delimiters = true,
        vim_sneak = true,
      },
    },
  },
  { "Shatur/neovim-ayu" },
  {
    "nvim-notify",
    opts = {
      -- background_colour = "#000000",
    },
  },
  { "hiphish/rainbow-delimiters.nvim" },
  {
    "Mofiqul/adwaita.nvim",
    lazy = false,
    priority = 1000,
  },
}
