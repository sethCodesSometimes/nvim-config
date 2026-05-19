return {
  "nvim-orgmode/orgmode",
  event = "VeryLazy",
  ft = { "org" },
  config = function()
    -- Setup orgmode
    require("orgmode").setup({
      org_agenda_files = { "~/org/personal.org", "~/org/school.org" },
      org_default_notes_file = "~/orgfiles/refile.org",
    })

    -- Experimental LSP support
    vim.lsp.enable("org")
  end,
}
