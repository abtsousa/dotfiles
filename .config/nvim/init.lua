-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

if vim.g.neovide then
  vim.g.neovide_window_blurred = true
  --vim.g.neovide_transparency = 0.5
  vim.g.neovide_fullscreen = false
  vim.keymap.set('n', '<C-s>', ':w<CR>') -- Save
  vim.keymap.set('v', '<C-c>', '"+y') -- Copy
  vim.keymap.set('n', '<C-v>', '"+P') -- Paste normal mode
  vim.keymap.set('v', '<C-v>', '"+P') -- Paste visual mode
  vim.keymap.set('c', '<C-v>', '<C-R>+') -- Paste command mode
  vim.keymap.set('i', '<C-v>', '<ESC>l"+Pli') -- Paste insert mode
end

vim.o.guifont = "FiraCode_Nerd_Font,Courier_Prime_Code,Noto_Color_Emoji:h12"

-- Allow clipboard copy paste in neovim
vim.api.nvim_set_keymap('', '<C-v>', '+p<CR>', { noremap = true, silent = true})
vim.api.nvim_set_keymap('!', '<C-v>', '<C-R>+', { noremap = true, silent = true})
vim.api.nvim_set_keymap('t', '<C-v>', '<C-R>+', { noremap = true, silent = true})
vim.api.nvim_set_keymap('v', '<C-v>', '<C-R>+', { noremap = true, silent = true})
