local base16 = require('base16-colorscheme')
local tokyo_city_dark = require('colors.tokyo-city-dark')

base16.setup(tokyo_city_dark, {
  telescope = false,
  indentblankline = true,
  notify = true,
  ts_rainbow = true,
  cmp = true,
  illuminate = true,
})

