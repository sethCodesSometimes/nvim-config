-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
vim.o.autochdir = true
vim.o.shell = "/bin/fish"
vim.api.nvim_create_autocmd({ "ColorScheme", "VimEnter" }, {
  callback = function()
    -- Get background colour of normal buffers
    local normal = vim.api.nvim_get_hl(0, { name = "Normal", link = false })
    local bg = normal.bg

    if bg then
      -- Apply it to terminal-related groups
      vim.api.nvim_set_hl(0, "NormalFloat", { bg = bg })
      vim.api.nvim_set_hl(0, "TermNormal", { bg = bg })
      vim.api.nvim_set_hl(0, "TermNormalNC", { bg = bg })
      vim.api.nvim_set_hl(0, "FloatBorder", { bg = bg }) -- optional: match border bg too
    end
  end,
})
