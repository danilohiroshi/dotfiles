return require('packer').startup(function()
  -- https://github.com/wbthomason/packer.nvim#quickstart
  -- packer can manage itself
  use 'wbthomason/packer.nvim'

  -- One Dark color scheme
  use'navarasu/onedark.nvim'

  use({
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate',
    requires = {
      'nvim-treesitter/playground',
      'nvim-treesitter/nvim-treesitter-textobjects',
    }
  })

  -- Telescope
  -- Dependency, install https://lindevs.com/install-ripgrep-on-ubuntu/
  use({
    'nvim-telescope/telescope.nvim',
    requires = {
      { 'nvim-lua/plenary.nvim' },
      { 'kyazdani42/nvim-web-devicons' },
      { 'nvim-telescope/telescope-fzf-native.nvim', run = 'make' },
      { 'nvim-telescope/telescope-live-grep-args.nvim' },
    }
  })

  -- LSP
  use({
    'neovim/nvim-lspconfig',
    requires = {
      'b0o/schemastore.nvim',
      'folke/lsp-colors.nvim',
      'williamboman/nvim-lsp-installer',
    }
  })

  -- Auto-completion
  use({
    'hrsh7th/nvim-cmp',
    requires = {
      'L3MON4D3/LuaSnip',
      'hrsh7th/cmp-buffer',
      'hrsh7th/cmp-cmdline',
      'hrsh7th/cmp-nvim-lsp',
      'hrsh7th/cmp-nvim-lsp-signature-help',
      'hrsh7th/cmp-nvim-lua',
      'jessarcher/cmp-path',
      'onsails/lspkind-nvim',
      'saadparwaiz1/cmp_luasnip',
    }
  })

  -- Code Actions
  use({
    'weilbith/nvim-code-action-menu',
    cmd = 'CodeActionMenu',
  })

  -- Status line
  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  }

  -- Buffer line
  use {'akinsho/bufferline.nvim', tag = "v2.*", requires = 'kyazdani42/nvim-web-devicons'}

  -- Multicursor
  use {'terryma/vim-multiple-cursors'}

  -- Spell check
  use {'lewis6991/spellsitter.nvim'}

  -- Git diff view
  use { 'sindrets/diffview.nvim', requires = 'nvim-lua/plenary.nvim' }

  -- Terminal
  use "voldikss/vim-floaterm"

  -- Pair
  use({
    'windwp/nvim-autopairs',
    config = function()
      require('nvim-autopairs').setup()
    end,
  })

  -- Snippets
  use({
    'L3MON4D3/LuaSnip',
  })

  -- Others
  use('tpope/vim-commentary')
  use('tpope/vim-repeat')
  use('tpope/vim-surround')
  use('tpope/vim-eunuch') -- Adds :Rename, :SudoWrite
  use('tpope/vim-unimpaired') -- Adds [b and other handy mappings
  use('tpope/vim-sleuth') -- Indent autodetection with editorconfig support
end)
