return {
  "nvim-orgmode/orgmode",
  event = "VeryLazy",
  ft = { "org" },
  enabled = true,
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
  end,
}
