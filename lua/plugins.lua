-- Set the runtime path to include lazy.nvim
vim.opt.rtp:prepend("~/.config/nvim/lazy")

require("lazy").setup({
  -- Lazy can manage itself
  "folke/lazy.nvim",
  
  -- One Dark theme
  {
    "navarasu/onedark.nvim",
    config = function()
      vim.cmd('colorscheme onedark')
    end,
  },

  -- Treesitter
  {
    "nvim-treesitter/nvim-treesitter",
    run = ":TSUpdate",
    dependencies = {
      "nvim-treesitter/playground",
      "nvim-treesitter/nvim-treesitter-textobjects",
    }
  },

  -- Telescope
  {
    "nvim-telescope/telescope.nvim",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "kyazdani42/nvim-web-devicons",
      { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
      "nvim-telescope/telescope-live-grep-args.nvim",
    },
  },

  -- Grug-far.nvim
  "MagicDuck/grug-far.nvim",

  -- LSP Configuration
  {
    "neovim/nvim-lspconfig",
    dependencies = {
      "b0o/schemastore.nvim",
      "folke/lsp-colors.nvim",
    }
  },

  -- Auto-completion
  {
    "hrsh7th/nvim-cmp",
    dependencies = {
      "L3MON4D3/LuaSnip",
      "hrsh7th/cmp-buffer",
      "hrsh7th/cmp-cmdline",
      "hrsh7th/cmp-nvim-lsp",
      "hrsh7th/cmp-nvim-lsp-signature-help",
      "hrsh7th/cmp-nvim-lua",
      "jessarcher/cmp-path",
      "onsails/lspkind-nvim",
      "saadparwaiz1/cmp_luasnip",
    }
  },

  -- Code Actions
  {
    "weilbith/nvim-code-action-menu",
    cmd = "CodeActionMenu",
  },
  {
    "kosayoda/nvim-lightbulb",
    dependencies = "antoinemadec/FixCursorHold.nvim",
  },

  -- Status Line
  {
    "nvim-lualine/lualine.nvim",
    dependencies = { "kyazdani42/nvim-web-devicons", optional = true }
  },
  "arkav/lualine-lsp-progress",

  -- Buffer line
  { "akinsho/bufferline.nvim", dependencies = "kyazdani42/nvim-web-devicons" },

  -- Multicursor
  { "mg979/vim-visual-multi" },

  -- Spell check
  { "lewis6991/spellsitter.nvim" },
  { "davidmh/cspell.nvim" },

  -- Leap
  { "ggandor/leap.nvim", dependencies = "tpope/vim-repeat" },

  -- Autopairs
  {
    "windwp/nvim-autopairs",
    config = function()
      require("nvim-autopairs").setup()
    end,
  },

  -- Snippets
  "L3MON4D3/LuaSnip",

  -- Assorted tpope plugins
  "tpope/vim-repeat",
  "tpope/vim-surround",
  "tpope/vim-eunuch",
  "tpope/vim-unimpaired",
  "tpope/vim-sleuth",

  -- Git integration
  {
    "tpope/vim-fugitive",
    dependencies = "tpope/vim-rhubarb",
    cmd = "G",
  },
  {
    "lewis6991/gitsigns.nvim",
    dependencies = "nvim-lua/plenary.nvim",
  },

  -- File tree
  { "A7Lavinraj/fyler.nvim", dependencies = "echasnovski/mini.icons" },

  -- Highlight current word
  { "RRethy/vim-illuminate" },

  -- Doc block
  {
    "danymat/neogen",
    config = function()
      require("neogen").setup {}
    end,
    dependencies = "nvim-treesitter/nvim-treesitter",
  },

  -- Linters
  { "nvimtools/none-ls.nvim" },
  { "nvimtools/none-ls-extras.nvim" },
  { "jayp0521/mason-null-ls.nvim" },

  -- Debugger
  {
    "rcarriga/nvim-dap-ui",
    dependencies = {
      "mfussenegger/nvim-dap",
      "mfussenegger/nvim-dap-vscode-js",
      "nvim-neotest/nvim-nio",
    }
  },

  -- Mason
  { "williamboman/mason.nvim" },
  { "williamboman/mason-lspconfig.nvim" },
  { "jay-babu/mason-nvim-dap.nvim" },

  -- Indent guide
  { "lukas-reineke/indent-blankline.nvim" },

  -- Trouble
  {
    "folke/trouble.nvim",
    dependencies = "kyazdani42/nvim-web-devicons",
  },

  -- Better quickfix
  { "kevinhwang91/nvim-bqf" },

  -- Scrollbar
  "petertriho/nvim-scrollbar",

  -- Which key
  "folke/which-key.nvim",

  -- Buffer management
  "kazhala/close-buffers.nvim",

  -- Vim Heritage
  "jessarcher/vim-heritage",

  -- Vim Pasta
  {
    "sickill/vim-pasta",
    config = function()
      vim.g.pasta_disabled_filetypes = { "fugitive" }
    end,
  },

  -- Terminal
  "voldikss/vim-floaterm",

  -- Fidget
  "j-hui/fidget.nvim",

  -- Tester
  {
    "nvim-neotest/neotest",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-treesitter/nvim-treesitter",
      "antoinemadec/FixCursorHold.nvim",
      "haydenmeade/neotest-jest",
    }
  },

  -- Session Manager
  "rmagatti/auto-session",

  -- Notifications
  "rcarriga/nvim-notify",

  -- Animate Mini
  "echasnovski/mini.animate",
})