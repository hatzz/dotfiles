local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({ 'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path })
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'
  use 'kyazdani42/nvim-web-devicons'
  use 'nvim-lualine/lualine.nvim'
  use 'RRethy/nvim-base16'

  -- Lsp server package manager
  use 'williamboman/mason.nvim'
  use 'williamboman/mason-lspconfig.nvim'

  -- Simpler lsp setup
  use 'neovim/nvim-lspconfig'

  -- Completions
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-cmdline'
  use 'hrsh7th/nvim-cmp'
  use 'hrsh7th/cmp-vsnip'
  use 'hrsh7th/vim-vsnip'
  use {
    "zbirenbaum/copilot-cmp",
    after = { "copilot.lua" },
    config = function ()
      require("copilot_cmp").setup()
    end
  }

  -- Linters and stuff
  use 'jose-elias-alvarez/null-ls.nvim'

  -- Treesitter
  use 'nvim-treesitter/nvim-treesitter'

  -- Fuzzy Finder
  use 'nvim-lua/plenary.nvim'
  use { 'nvim-telescope/telescope.nvim', tag = '0.1.0' }

  -- Awesome stuff
  use 'folke/todo-comments.nvim'
  use 'MunifTanjim/nui.nvim'
  use 'rcarriga/nvim-notify'
  use 'folke/noice.nvim'
  use 'kylechui/nvim-surround'
  use {
    "zbirenbaum/copilot.lua",
    event = "VimEnter",
    config = function()
        require("copilot").setup()
    end,
  }

  if packer_bootstrap then
    require('packer').sync()
  end
end)
