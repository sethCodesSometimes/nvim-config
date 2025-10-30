return {
  "snacks.nvim",
  opts = {
    dashboard = {
      preset = {
        pick = function(cmd, opts)
          return LazyVim.pick(cmd, opts)()
        end,
        header = [[
 ▐ ▄ ▄▄▄ .       ▌ ▐·▪  • ▌ ▄ ·. 
•█▌▐█▀▄.▀· ▄█▀▄ ▪█·█▌██ ·██ ▐███▪
▐█▐▐▌▐▀▀▪▄▐█▌.▐▌▐█▐█•▐█·▐█ ▌▐▌▐█·
██▐█▌▐█▄▄▌▐█▌.▐▌ ███ ▐█▌██ ██▌▐█▌
▀▀ █▪ ▀▀▀  ▀█▄▀▪. ▀  ▀▀ ▀▀  █▪▀▀▀]], --- I made this logo text using this website: https://texteditor.com/multiline-text-art/
        -- stylua: ignore
        ---@type snacks.dashboard.Item[]
      },
    },
  },
}
