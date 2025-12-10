-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

return {
  -- in lua/config/keymaps.lua or after the lazy setup
  -- Source - https://stackoverflow.com/a/
  -- Posted by GAVD
  -- Retrieved 2025-11-11
  -- License - CC BY-SA 4.0

  -- Normal mode delete to beginning/end of word
  vim.keymap.set("n", "<C-BS>", "db", { silent = true, desc = "delete backward to beginning of word" }),
  vim.keymap.set("n", "<C-Del>", "de", { silent = true, desc = "delete forward to end of word" }),
}
