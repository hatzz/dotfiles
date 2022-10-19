require('lualine').setup({
  options = {
    icons_enabled = false
  },
  tabline = {
    lualine_a = {
      {
        'buffers',
        buffers_color = { active = 'lualine_a_normal', inactive = 'lualine_b_normal' },
      },
    },
    lualine_z = {
      {
        'tabs',
        tabs_color = { active = 'lualine_b_normal' },
      },
    },
  },
})
