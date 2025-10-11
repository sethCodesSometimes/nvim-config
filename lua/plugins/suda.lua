return {
  {
    "lambdalisue/vim-suda",
    config = function()
      -- optional: make `:w` use suda automatically if no permission
      vim.g.suda_smart_edit = 1
    end,
  },
}
