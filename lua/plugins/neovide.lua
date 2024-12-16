if not vim.g.neovide then
  return {} -- do nothing if not in a Neovide session
end

return {
  "AstroNvim/astrocore",
  ---@type AstroCoreOpts
  opts = {
    options = {
      opt = {
        linespace = 0,
        guifont = "0xProto Nerd Font",
        -- fontsize = 13,
      },
      g = {
        -- 比例因子
        neovide_scale_factor = 1.0,
        -- padding
        neovide_padding_top = 0,
        neovide_padding_bottom = 0,
        neovide_padding_right = 0,
        neovide_padding_left = 0,
        -- 透明度
        neovide_transparency = 0.6,
        -- 窗口模糊
        neovide_window_blurred = false,
        neovide_floating_blur_amount_x = 1.0,
        neovide_floating_blur_amoutn_y = 1.0,
        -- 浮动阴影
        neovide_floating_shadow = true,
        neovide_floating_z_height = 10,
        neovide_light_angle_degrees = 45,
        neovide_light_raduis = 5,
        -- 光标动画
        neovide_cursor_animation_length = 0.02,
        neovide_cursor_trail_size = 0.8,
      },
    },
    mappings = {
      n = {
        ["<D-s>"] = { ":w<cr>", desc = "Save File" },
        ["<D-u>"] = { "9k", desc = "up 9 line" },
        ["<D-d>"] = { "9j", desc = "down 9 line" },
        ["<D-j>"] = { "4j", desc = "down 4 line" },
        ["<D-k>"] = { "4k", desc = "up 4 line" },
      },
    },
  },
}
