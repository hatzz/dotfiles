local telescope = require('telescope')
local builtin = require('telescope.builtin')

telescope.setup({
  defaults = {
    file_ignore_patterns = {
      "^.git/"
    }
  },
  pickers = {
    find_files = {
      hidden = true
    },
    live_grep = {
      hidden = true
    },
    oldfiles = {
      hidden = true
    }
  }
})

vim.keymap.set('n', '<space>f', builtin.find_files, {})
vim.keymap.set('n', '<space>g', builtin.live_grep, {})
vim.keymap.set('n', '<space>b', builtin.buffers, {})
vim.keymap.set('n', '<space>o', builtin.oldfiles, {})
vim.keymap.set('n', '<space>d', builtin.diagnostics, {})

