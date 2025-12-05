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
      "hrsh7th/cmp-buffer",
      "hrsh7th/cmp-cmdline",
      "hrsh7th/cmp-nvim-lsp",
      "hrsh7th/cmp-nvim-lsp-signature-help",
      "hrsh7th/cmp-nvim-lua",
      "jessarcher/cmp-path",
      "onsails/lspkind-nvim",
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

  -- Autopairs
  {
    "windwp/nvim-autopairs",
    config = function()
      require("nvim-autopairs").setup()
    end,
  },

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

  -- Mini.nvim suite (includes files, icons, animate)
  {
    "echasnovski/mini.nvim",
    version = "*", -- use stable release
    config = function()
      -- Setup mini.files
      require("mini.files").setup({
        -- Customization of shown content
        content = {
          -- Predicate for which file system entries to show
          filter = nil,
          -- What prefix to show to the left of file system entry
          prefix = nil,
          -- In which order to show file system entries
          sort = nil,
        },
        
        -- Module mappings created only inside explorer.
        mappings = {
          close       = 'q',
          go_in       = 'l',
          go_in_plus  = 'L',
          go_out      = 'h',
          go_out_plus = 'H',
          reset       = '<BS>',
          reveal_cwd  = '@',
          show_help   = 'g?',
          synchronize = '=',
          trim_left   = '<',
          trim_right  = '>',
        },
        
        -- General options
        options = {
          -- Whether to delete permanently or move into module-specific trash
          permanent_delete = true,
          -- Whether to use for editing directories
          use_as_default_explorer = true,
        },
        
        -- Customization of explorer windows
        windows = {
          -- Maximum number of windows to show side by side
          max_number = math.huge,
          -- Whether to show preview of file/directory under cursor
          preview = false,
          -- Width of focused window
          width_focus = 50,
          -- Width of non-focused window
          width_nofocus = 15,
          -- Width of preview window
          width_preview = 25,
        },
      })
      
      -- Setup mini.icons
      require("mini.icons").setup({
        -- Icon style: 'glyph' or 'ascii'
        style = 'glyph',
        
        -- Customize icons per category
        default = {},
        directory = {},
        extension = {},
        file = {},
        filetype = {},
        lsp = {},
        os = {},
      })
      
      -- Setup mini.animate (optional)
      -- require("mini.animate").setup()
    end,
  },

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
})