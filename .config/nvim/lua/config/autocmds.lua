-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here
vim.g.autoformat = false
vim.api.nvim_create_user_command('Date', ':r !date -Is', {})
vim.opt.colorcolumn = "80"
