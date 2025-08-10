-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

return {
  {
    -- Only needed if you're not already using which-key in this file
    "folke/which-key.nvim",
    opts = function(_, opts)
      opts.defaults["<leader>h"] = {
        function()
          require("snacks.dashboard").open()
        end,
        "Open Snacks Dashboard",
      }
    end,
  },
}
