return {
  "nvim-orgmode/orgmode",
  event = "VeryLazy",
  ft = { "org" },
  config = function()
    -- Setup orgmode
    require("orgmode").setup({
      org_agenda_files = { "~/org/personal.org", "~/org/school.org" },
      org_default_notes_file = "~/orgfiles/refile.org",
      org_log_into_drawer = "LOGBOOK",
    })

    -- Experimental LSP support
    vim.lsp.enable("org")
    vim.api.nvim_create_autocmd("BufWritePost", {
      pattern = "*.org",
      callback = function()
        vim.fn.jobstart({ "pkill", "-RTMIN+2", "waybar" })
      end,
    })

    -- Link orgmode highlights to treesitter groups so they fit any colorscheme
    local function fix_org_highlights()
      local links = {
        ["@org.headline.level1"] = "@markup.heading.1",
        ["@org.headline.level2"] = "@markup.heading.2",
        ["@org.headline.level3"] = "@markup.heading.3",
        ["@org.headline.level4"] = "@markup.heading.4",
        ["@org.headline.level5"] = "@markup.heading.5",
        ["@org.headline.level6"] = "@markup.heading.6",
        ["@org.headline.level7"] = "@markup.heading.6",
        ["@org.headline.level8"] = "@markup.heading.6",
        ["@org.plan"] = "@keyword",
        ["@org.table.heading"] = "@markup.heading",
      }
      for src, target in pairs(links) do
        pcall(vim.api.nvim_set_hl, 0, src, { link = target, default = true })
      end
    end

    fix_org_highlights()
    vim.api.nvim_create_autocmd("ColorScheme", {
      pattern = "*",
      callback = fix_org_highlights,
    })
  end,
}
