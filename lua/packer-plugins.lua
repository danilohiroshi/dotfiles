return require('packer').startup(function()
  -- https://github.com/wbthomason/packer.nvim#quickstart
  -- packer can manage itself
  use 'wbthomason/packer.nvim'

  -- One Dark theme.
  use({
    'navarasu/onedark.nvim',
    config = function()
      vim.cmd('colorscheme onedark')
    end,
  })

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
      -- 'williamboman/nvim-lsp-installer',
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
  use {
    'kosayoda/nvim-lightbulb',
    requires = 'antoinemadec/FixCursorHold.nvim',
  }

  -- Status line
  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  }
  use 'arkav/lualine-lsp-progress'

  -- Buffer line
  use {'akinsho/bufferline.nvim', requires = 'kyazdani42/nvim-web-devicons'}

  -- Multicursor
  use {'mg979/vim-visual-multi'}

  -- Spell check
  use {'lewis6991/spellsitter.nvim'}
  use {'davidmh/cspell.nvim'}

  -- Leap
  use { 'ggandor/leap.nvim', requires = 'tpope/vim-repeat' }

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
  use('tpope/vim-repeat')
  use('tpope/vim-surround')
  use('tpope/vim-eunuch') -- Adds :Rename, :SudoWrite
  use('tpope/vim-unimpaired') -- Adds [b and other handy mappings
  use('tpope/vim-sleuth') -- Indent autodetection with editorconfig support

  -- Git integration
  use({
    'tpope/vim-fugitive',
    requires = 'tpope/vim-rhubarb',
    cmd = 'G',
  })
  use({
    'lewis6991/gitsigns.nvim',
    requires = 'nvim-lua/plenary.nvim',
  })

  -- File tree
    use {
    'A7Lavinraj/fyler.nvim',
    requires = 'echasnovski/mini.icons',
  }

  -- Highlight current word
  use {
    'RRethy/vim-illuminate'
  }

  -- Doc block
  use {
    "danymat/neogen",
    config = function()
        require('neogen').setup {}
    end,
    requires = "nvim-treesitter/nvim-treesitter",
    -- Uncomment next line if you want to follow only stable versions
    -- tag = "*"
  }

  -- Linters
  use {'nvimtools/none-ls.nvim'}
  use {'nvimtools/none-ls-extras.nvim'}
  use {'jayp0521/mason-null-ls.nvim'}

  -- Debugger
  use {
    "rcarriga/nvim-dap-ui",
    requires = {
      "mfussenegger/nvim-dap",
      "mxsdev/nvim-dap-vscode-js",
      "nvim-neotest/nvim-nio"
    }
  }

  -- Mason
  use { "williamboman/mason.nvim" }
  use {'williamboman/mason-lspconfig.nvim'}

  -- Indent guide
  use { 'lukas-reineke/indent-blankline.nvim' }

  -- Show file errors (Linters, LSP)
  use {
    "folke/trouble.nvim",
    requires = "kyazdani42/nvim-web-devicons"
  }

  -- Better quickfix
  use {'kevinhwang91/nvim-bqf'}

  -- Scrollbar
  use("petertriho/nvim-scrollbar")
  
  -- Which key
  use("folke/which-key.nvim")
  
  -- Buffer management
  use("kazhala/close-buffers.nvim")

  -- Automatically create parent dirs when saving.
  use('jessarcher/vim-heritage')

  -- Automatically fix indentation when pasting code.
  use({
    'sickill/vim-pasta',
    config = function()
      vim.g.pasta_disabled_filetypes = { 'fugitive' }
    end,
  })

  -- Terminal
  use({
    'voldikss/vim-floaterm',
  })

  -- Terminal
  use({
    'j-hui/fidget.nvim',
  })

  -- Tester
  use {
    "nvim-neotest/neotest",
    requires = {
      "nvim-lua/plenary.nvim",
      "nvim-treesitter/nvim-treesitter",
      "antoinemadec/FixCursorHold.nvim",
      'haydenmeade/neotest-jest',
    }
  }

  -- Session Manager
  use {
    "rmagatti/auto-session",
  }

  -- END
end)
