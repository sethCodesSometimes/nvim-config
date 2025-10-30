-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
vim.o.autochdir = true
vim.o.shell = "/bin/fish"
vim.api.nvim_create_autocmd({ "ColorScheme", "VimEnter" }, {
  callback = function()
    -- Get background colour of normal buffers
    local normal = vim.api.nvim_get_hl(0, { name = "Normal", link = false })
    local bg = normal.bg

    vim.api.nvim_create_user_command("W", function()
      vim.cmd("w !sudo tee % >/dev/null")
    end, {})
    vim.opt.foldenable = true

    --- transparency stuff
    local transparency = true
    if transparency then
      -- Apply it to terminal-related groups
      vim.api.nvim_set_hl(0, "NormalFloat", { bg = bg })
      vim.api.nvim_set_hl(0, "TermNormal", { bg = bg })
      vim.api.nvim_set_hl(0, "TermNormalNC", { bg = bg })
      vim.api.nvim_set_hl(0, "FloatBorder", { bg = bg }) -- optional: match border bg too
      -- base text
      vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
      vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })

      -- line/column highlights
      vim.api.nvim_set_hl(0, "CursorLine", { bg = "none" })
      vim.api.nvim_set_hl(0, "CursorColumn", { bg = "none" })

      -- window borders & splits
      vim.api.nvim_set_hl(0, "FloatBorder", { bg = "none" })
      vim.api.nvim_set_hl(0, "WinSeparator", { bg = "none" })

      -- popup menus
      vim.api.nvim_set_hl(0, "Pmenu", { bg = "none" })
      vim.api.nvim_set_hl(0, "PmenuSel", { bg = "none" })

      -- telescope / fzf / other pickers (common)
      vim.api.nvim_set_hl(0, "TelescopeBorder", { bg = "none" })
      vim.api.nvim_set_hl(0, "TelescopeNormal", { bg = "none" })
      vim.api.nvim_set_hl(0, "TelescopePrompt", { bg = "none" })
      vim.api.nvim_set_hl(0, "TelescopeResults", { bg = "none" })
      vim.api.nvim_set_hl(0, "TelescopePreview", { bg = "none" })

      -- diagnostic floating windows
      vim.api.nvim_set_hl(0, "DiagnosticFloatingError", { bg = "none" })
      vim.api.nvim_set_hl(0, "DiagnosticFloatingWarn", { bg = "none" })
      vim.api.nvim_set_hl(0, "DiagnosticFloatingInfo", { bg = "none" })
      vim.api.nvim_set_hl(0, "DiagnosticFloatingHint", { bg = "none" })

      -- bottom bar thing
      vim.api.nvim_set_hl(0, "StatusLine", { bg = "none" })
      vim.api.nvim_set_hl(0, "StatusLineNC", { bg = "none" })

      -- cursor line number
      vim.api.nvim_set_hl(0, "CursorLineNr", { bg = "none" })
    end

    --- line number thing
  end,
})
