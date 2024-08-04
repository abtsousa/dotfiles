return {
  {
    "nvim-lspconfig",
    init = function()
      local keys = require("lazyvim.plugins.lsp.keymaps").get()
      -- change a keymap
      --keys[#keys + 1] = { "K", "<cmd>echo 'hello'<cr>" }
      keys[#keys + 1] = { "gr", false}
      keys[#keys + 1] = { "gR", "<Cmd>Telescope lsp_references<CR>", desc="References" }
      -- disable a keymap
      --keys[#keys + 1] = { "K", false }
      -- add a keymap
      --keys[#keys + 1] = { "H", "<cmd>echo 'hello'<cr>" }
    end,
    opts = {
      diagnostics = {
        virtual_text = false,
      },
    },
  },
  {
    "https://git.sr.ht/~whynothugo/lsp_lines.nvim",
    name = "lsp-lines",
    config = function()
      require("lsp_lines").setup()
    end,
  },
}
