return {
  "jiaoshijie/undotree",
  -- @module 'undotree.collector'
  enabled = false,
  -- @type UndoTreeCollector.Opts
  opts = {
    -- your options
  },
  keys = { -- load the plugin only when using it's keybinding:
    { "<leader>uu", "<cmd>lua require('undotree').toggle()<cr>" },
  },
}
