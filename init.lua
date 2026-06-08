-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
vim.o.autochdir = true
vim.o.shell = "/bin/fish"

vim.api.nvim_create_user_command("W", function()
  vim.cmd("w !sudo tee % >/dev/null")
end, {})

vim.opt.foldenable = true
if vim.g.neovide then
  -- Put anything you want to happen only in Neovide here
  vim.o.guifont = "Maple Mono NF:h10" -- text below applies for VimScript
  vim.g.neovide_opacity = 0.8
  vim.g.neovide_normal_opacity = 0.8

  vim.g.neovide_window_blurred = true

  vim.g.neovide_floating_blur_amount_x = 2.0
  vim.g.neovide_floating_blur_amount_y = 2.0

  vim.keymap.set({ "n", "v" }, "<C-+>", ":lua vim.g.neovide_scale_factor = vim.g.neovide_scale_factor + 0.1<CR>")
  vim.keymap.set({ "n", "v" }, "<C-->", ":lua vim.g.neovide_scale_factor = vim.g.neovide_scale_factor - 0.1<CR>")
  vim.keymap.set({ "n", "v" }, "<C-0>", ":lua vim.g.neovide_scale_factor = 1<CR>")
end
