if not vim.g.neovide then
  print('unknown')
  return {}
end

return {
  "AstroNvim/astrocore",
  opts = {
    options = {
      opt = {

      },
      g = {
        -- 窗口模糊
        neovide_window_blurred = true,
        neovide_floating_blur_amount_x = 1.0,
        neovide_floating_blur_amount_y = 1.0,
        -- 浮动阴影
        neovide_floating_shadow = true,
        neovide_floating_z_height = 10,
        neovide_light_angle_degrees = 45,
        neovide_light_radius = 5,
        -- 光标动画
        neovide_cursor_animation_length = 0.02,
        neovide_cursor_trail_size = 0.8,
        -- padding
        neovide_padding_top = 0,
        neovide_padding_bottom = 0,
        neovide_padding_right = 0,
        neovide_padding_left = 0,
      },
    },
  },
}
