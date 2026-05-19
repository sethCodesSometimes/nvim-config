return {
  {
    "franbach/miramare",
    priority = 10,
  },
  -- Kanagawa (active)
  {
    "rebelot/kanagawa.nvim",
    opts = {
      theme = "dragon",
      transparent = true,
      overrides = function(colors)
        local palette = colors.palette
        return { --- found these options from a guy on reddit,
          --- they work pretty well and I think aim to make
          --- kanagawa more like neovim and also it uses colors
          --- that make more sense for example red for core functions
          --- because they are important and stuff
          String = { italic = true },
          Operator = { fg = palette.dragonGray2 },

          -- static
          Boolean = { fg = palette.dragonPink },
          Constant = { fg = palette.dragonPink },
          Number = { fg = palette.dragonPink },

          -- hard
          Keyword = { fg = palette.dragonRed },

          -- functions
          Function = { fg = palette.dragonOrange },
          ["@function.builtin"] = { fg = palette.dragonOrange },
          ["@lsp.type.magicFunction"] = { fg = palette.dragonOrange },
          ["@lsp.typemod.function.builtin"] = { fg = palette.dragonOrange },
          ["@lsp.typemod.function.defaultLibrary"] = { fg = palette.dragonOrange },
          ["@lsp.typemod.method.defaultLibrary"] = { fg = palette.dragonOrange },
          ["@lsp.typemod.function.readonly"] = { fg = palette.dragonOrange },

          -- types
          Type = { fg = palette.dragonYellow },
          Special = { fg = palette.dragonYellow },

          -- parameters/members
          Identifier = { fg = palette.dragonBlue },
          Statement = { fg = palette.dragonBlue },
          ["@variable.member"] = { fg = palette.dragonBlue },

          -- variables
          ["@namespace"] = { fg = palette.dragonWhite },
          ["@variable.builtin"] = { fg = palette.dragonRed },
          ["@variable.parameter"] = { fg = palette.dragonWhite },
          ["@variable"] = { fg = palette.dragonWhite },
          ["@attribute"] = { fg = palette.dragonWhite },
        }
      end,
    },
    priority = 1000,
    config = function(_, opts)
      vim.cmd("colorscheme kanagawa-dragon")
    end,
  },

  -- Gruvbox (installed but not active)
  { "ellisonleao/gruvbox.nvim" },
}
