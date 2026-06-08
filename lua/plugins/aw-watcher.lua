-- lazy.nvim
return {
  "lowitea/aw-watcher.nvim",
  lazy = false,
  enabled = false, -- disabled because it makes neovim sooo slow like menus take a few hundred ms to open
  opts = { -- required, but can be empty table: {}
    -- add any options here
    -- for example:
    -- aw_server = {
    --   host = "127.0.0.1",
    --   port = 5600,
    -- },
  },
}
