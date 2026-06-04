return {
  "snacks.nvim",
  opts = {
    -- -- Merge dashboard settings instead of replacing them
    -- opts.dashboard = opts.dashboard or {}
    -- opts.dashboard.preset = opts.dashboard.preset or {}
    -- opts.dashboard.preset.pick = function(cmd, opts)
    --   return LazyVim.pick(cmd, opts)()
    -- end
    dashboard = {
      preset = {
        header = [[
  ▐ ▄ ▄▄▄ .       ▌ ▐·▪  • ▌ ▄ ·. 
•█▌▐█▀▄.▀· ▄█▀▄ ▪█·█▌██ ·██ ▐███▪
▐█▐▐▌▐▀▀▪▄▐█▌.▐▌▐█▐█•▐█·▐█ ▌▐▌▐█·
██▐█▌▐█▄▄▌▐█▌.▐▌ ███ ▐█▌██ ██▌▐█▌
▀▀ █▪ ▀▀▀  ▀█▄▀▪. ▀  ▀▀ ▀▀  █▪▀▀▀]],
      },
    },
  },
}
