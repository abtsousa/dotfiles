return {
  {
    "nvim-lspconfig",
    opts = function()
      local keys = require("lazyvim.plugins.lsp.keymaps").get()
      -- change a keymap
      --keys[#keys + 1] = { "k", "<cmd>echo 'hello'<cr>" }
      keys[#keys + 1] = { "gr", "<cmd>fzflua lsp_references      jump_to_single_result=true ignore_current_line=true<cr>", desc = "references", nowait = true }
      -- disable a keymap
      --keys[#keys + 1] = { "k", false }
      keys[#keys + 1] = { "gr", false}
      -- add a keymap
      --keys[#keys + 1] = { "h", "<cmd>echo 'hello'<cr>" }
    end,
  },
  {
    "https://git.sr.ht/~whynothugo/lsp_lines.nvim",
    name = "lsp-lines",
    config = function()
      require("lsp_lines").setup()
    end,
  },
}

