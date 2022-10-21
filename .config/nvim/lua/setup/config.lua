local g = vim.g
local o = vim.o

o.termguicolors = true

-- Better editor UI
o.wrap = false
o.number = true
o.numberwidth = 4
o.signcolumn = 'yes'

-- Better editing experience
o.expandtab = true
o.smartindent = false
o.cindent = false
o.tabstop = 4
o.list = true
o.listchars = 'trail:·,nbsp:◇,tab:→ ,extends:▸,precedes:◂'
o.shiftwidth = 2
o.softtabstop = -1
o.hlsearch = false
vim.cmd("set formatoptions=tqj")
g.loaded_netrw = 1
g.loaded_netrwPlugin = 1

-- Case insensitive searching UNLESS /C or capital in search
o.ignorecase = true
o.smartcase = true

-- Better buffer splitting
o.splitright = true
o.splitbelow = true

-- No inline diagnostic messages
vim.diagnostic.config({
  signs = true,
  underline = true,
  virtual_text = false,
  update_in_insert = true
})

-- Faster update time for hovers
o.updatetime = 150

-- Signs in gutter for diagnostics
vim.cmd("sign define DiagnosticSignError text= linehl= texthl=DiagnosticSignError numhl=")
vim.cmd("sign define DiagnosticSignWarn text= linehl= texthl=DiagnosticSignWarn numhl=")
vim.cmd("sign define DiagnosticSignInfo text= linehl= texthl=DiagnosticSignInfo numhl=")
vim.cmd("sign define DiagnosticSignHint text=💡 linehl= texthl=DiagnosticSignHint numhl=")
