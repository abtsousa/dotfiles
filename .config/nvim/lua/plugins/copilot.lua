return {
  {
    "zbirenbaum/copilot.lua",
    cmd = "Copilot",
    build = ":Copilot auth",
    keys = {
      {
        "<leader>ct",
        function()
          require("copilot.suggestion").toggle_auto_trigger()
        end,
        desc = "Toggle Copilot Suggestions",
      },
    },
    opts = {
      panel = {
        enabled = true,
        auto_refresh = true,
        keymap = {
          jump_prev = "M-,",
          jump_next = "M-.",
          accept = "<CR>",
          refresh = "gr",
          open = false
        },
        layout = {
          position = "bottom", -- | top | left | right
          ratio = 0.4
        },
      },
      suggestion = {
        enabled = true,
        auto_trigger = false,
        debounce = 75,
        keymap = {
          accept = false,
          accept_word = false,
          accept_line = false,
          prev = "<M-,>",
          next = "<M-.>",
          dismiss = "<M-->",
        },
        filetypes = {
          markdown = true,
          help = true,
        },
      },
    }
  },

}
