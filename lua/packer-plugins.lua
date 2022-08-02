return require('packer').startup(function()
  -- https://github.com/wbthomason/packer.nvim#quickstart
  -- packer can manage itself
  use 'wbthomason/packer.nvim'

  -- One Dark color scheme
  use 'navarasu/onedark.nvim'

  -- Telescope
  -- Dependency, install https://lindevs.com/install-ripgrep-on-ubuntu/
  use 'nvim-lua/plenary.nvim'
  use 'nvim-telescope/telescope.nvim'
  use 'nvim-treesitter/nvim-treesitter'
  use 'nvim-telescope/telescope-live-grep-args.nvim'
  use 'nvim-telescope/telescope-symbols.nvim'

  -- LSP
	use({ "neovim/nvim-lspconfig"}) -- enable LSP

  -- Auto-completion
  use({ "hrsh7th/nvim-cmp"})

  -- Status line
  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  }

  -- Buffer line
  use {'akinsho/bufferline.nvim', tag = "v2.*", requires = 'kyazdani42/nvim-web-devicons'}
end)
