return {
  "edluffy/hologram.nvim",
  enabled = false,
  event = "VimEnter",
  config = function()
    require("hologram").setup({
      auto_display = false, -- don't auto-display images embedded in buffers
    })

    -- Show image only if terminal is wide enough
    local width = vim.o.columns
    if width > 120 then
      -- path to your image
      local img_path = vim.fn.expand("~/Pictures/campfire.png")

      -- Hologram expects the image to be loaded into a buffer first
      local buf = vim.api.nvim_create_buf(false, true)
      vim.api.nvim_buf_set_name(buf, "side-image")

      -- Position near top-right
      local win = vim.api.nvim_open_win(buf, false, {
        relative = "editor",
        width = 1,
        height = 1,
        row = 3,
        col = width - 40,
        focusable = false,
        style = "minimal",
        noautocmd = true,
      })

      -- Display image
      local ok, Image = pcall(require, "hologram.image")
      if ok then
        local image = Image:new(img_path, { x = width - 40, y = 3, width = 36, height = 12 })
        image:display(win)
      end
    end
  end,
}
