return {
  {
    "CopilotC-Nvim/CopilotChat.nvim",
    import = "lazyvim.plugins.extras.coding.copilot",
    opts = {
      debug = false, -- Enable or disable debug mode, the log file will be in ~/.local/state/nvim/CopilotChat.nvim.log
      disable_extra_info = 'no', -- Disable extra information (e.g: system prompt) in the response.
      language = "English" -- Copilot answer language settings when using default prompts. Default language is English.
      -- proxy = "socks5://127.0.0.1:3000", -- Proxies requests via https or socks.
      -- temperature = 0.1,
    },
    build = function()
      vim.notify("Please update the remote plugins by running ':UpdateRemotePlugins', then restart Neovim.")
    end,
    config = {
      require("which-key").add(  {
      { "<leader>cc", group = "Copilot Chat", mode = { "n", "v" } },
      })
    },
    event = "VeryLazy",
    keys = {
      -- :CopilotChat <input>? - Open chat window with optional input
      -- :CopilotChatOpen - Open chat window
      -- :CopilotChatClose - Close chat window
      -- :CopilotChatToggle - Toggle chat window
      -- :CopilotChatStop - Stop current copilot output
      -- :CopilotChatReset - Reset chat window
      -- :CopilotChatSave <name>? - Save chat history to file
      -- :CopilotChatLoad <name>? - Load chat history from file
      -- :CopilotChatDebugInfo - Show debug information
      -- Commands coming from default prompts
      -- :CopilotChatExplain - Write an explanation for the active selection as paragraphs of text
      -- :CopilotChatReview - Review the selected code
      -- :CopilotChatFix - There is a problem in this code. Rewrite the code to show it with the bug fixed
      -- :CopilotChatOptimize - Optimize the selected code to improve performance and readablilty
      -- :CopilotChatDocs - Please add documentation comment for the selection
      -- :CopilotChatTests - Please generate tests for my code
      -- :CopilotChatFixDiagnostic - Please assist with the following diagnostic issue in file
      -- :CopilotChatCommit - Write commit message for the change with commitizen convention
      -- :CopilotChatCommitStaged - Write commit message for the change with commitizen convention
      -- Quick chat with Copilot
      {
        "<leader>ccq",
        function()
          local input = vim.fn.input("Quick Chat: ")
          if input ~= "" then
            require("CopilotChat").ask(input, { selection = require("CopilotChat.select").buffer })
          end
        end,
        desc = "Quick chat",
      },
      -- Show help actions with telescope
      {
        "<leader>cch",
        function()
          local actions = require("CopilotChat.actions")
          require("CopilotChat.integrations.telescope").pick(actions.help_actions())
        end,
        desc = "Help actions",
      },
      -- Show prompts actions with telescope
      {
        "<leader>ccp",
        function()
          local actions = require("CopilotChat.actions")
          require("CopilotChat.integrations.telescope").pick(actions.prompt_actions())
        end,
        desc = "Prompt actions",
      },
      { "<leader>ccc", "<cmd>CopilotChatToggle<cr>", mode = {"n", "v"}, desc = "Toggle chat window" },
      { "<leader>cci", ":CopilotChat ", mode = {"n", "v"}, desc = "Open chat window with optional input"},
      { "<leader>cce", "<cmd>CopilotChatExplain<cr>", mode = {"n", "v"}, desc = "Explain code" },
      { "<leader>ccr", "<cmd>CopilotChatReview<cr>", mode = {"n", "v"}, desc = "Review code" },
      { "<leader>ccf", "<cmd>CopilotChatFix<cr>", mode = {"n", "v"}, desc = "Fix code" },
      { "<leader>ccd", "<cmd>CopilotChatFixDiagnostic<cr>", mode = {"n", "v"}, desc = "Fix diagnostic" },
      { "<leader>cco", "<cmd>CopilotChatOptimize<cr>", mode = {"n", "v"}, desc = "Optimize code" },
      { "<leader>ccD", "<cmd>CopilotChatDocs<cr>", mode = {"n", "v"}, desc = "Add documentation" },
      { "<leader>cct", "<cmd>CopilotChatTests<cr>", mode = {"n", "v"}, desc = "Generate tests" },
      { "<leader>ccm", "<cmd>CopilotChatCommit<cr>", desc = "Generate commit message" },
      { "<leader>ccM", "<cmd>CopilotChatCommitStaged<cr>", desc = "Generate commit message for staged changes" },
      { "<leader>ccs", "<cmd>CopilotChatSave<cr>", desc = "Save chat history" },
      { "<leader>ccl", "<cmd>CopilotChatLoad<cr>", desc = "Load chat history" },
      { "<leader>ccI", "<cmd>CopilotChatDebugInfo<cr>", desc = "Debug info" },
      { "<leader>ccS", "<cmd>CopilotChatStop<cr>", desc = "Stop current copilot output" },
      -- { "<leader>ccO", "<cmd>CopilotChatOpen<cr>", desc = "Open chat window" },
      -- { "<leader>ccC", "<cmd>CopilotChatClose<cr>", desc = "Close chat window" },
      { "<leader>ccR", "<cmd>CopilotChatReset<cr>", desc = "Reset chat window"},
    },
  },
}
