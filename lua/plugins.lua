vim.opt.rtp:prepend("~/.config/nvim/lazy")

require("lazy").setup({
  -- ============================================================================
  -- PLUGIN MANAGER
  -- ============================================================================
  "folke/lazy.nvim", -- Plugin manager itself

  -- ============================================================================
  -- COLORSCHEME & UI THEME
  -- ============================================================================
  {
    "navarasu/onedark.nvim", -- OneDark colorscheme with custom colors
    config = function()
      require('onedark').setup {
        colors = {
          indent_line = '#31353f',
          context_color = '#61afef',
          background = '#282c34',
          background_light = '#31353f',
          background_darker = '#23252c',
          light_grey = '#c4c4c4',
          background_statusline = '#393f4a'
        },
        highlights = {
          -- Custom highlight groups for better UI integration
          FloatBorder = {
            fg = '$background_light',
            bg = '$background_light'
          },
          -- Telescope UI customization
          TelescopeBorder = {
            fg = '$background_darker',
            bg = '$background_darker'
          },
          TelescopePreviewBorder = {
            fg = '$background_darker',
            bg = '$background_darker'
          },
          TelescopePromptBorder = {
            fg = '$background_light',
            bg = '$background_light'
          },
          TelescopeResultsBorder = {
            fg = '$background_darker',
            bg = '$background_darker'
          },
          TelescopePromptNormal = {
            fg = '$light_grey',
            bg = '$background_light'
          },
          TelescopePreviewNormal = {
            fg = '$light_grey',
            bg = '$background_darker'
          },
          TelescopeResultsNormal = {
            fg = '$light_grey',
            bg = '$background_darker'
          },
          TelescopePromptTitle = {
            fg = '$light_grey',
            bg = '$background_light'
          },
          TelescopePreviewTitle = {
            fg = '$light_grey',
            bg = '$background_darker'
          },
          TelescopeResultsTitle = {
            fg = '$light_grey',
            bg = '$background_darker'
          },
        }
      }
      vim.cmd('colorscheme onedark')
    end,
  },

  -- ============================================================================
  -- SYNTAX HIGHLIGHTING & PARSING
  -- ============================================================================
  {
    "nvim-treesitter/nvim-treesitter", -- Advanced syntax highlighting and parsing
    run = ":TSUpdate",
    dependencies = {
      "nvim-treesitter/playground", -- Treesitter playground for debugging
      "nvim-treesitter/nvim-treesitter-textobjects", -- Enhanced text objects
    }
  },

  -- ============================================================================
  -- FUZZY FINDER & SEARCH
  -- ============================================================================
  {
    "nvim-telescope/telescope.nvim", -- Fuzzy finder for files, buffers, etc.
    dependencies = {
      "nvim-lua/plenary.nvim", -- Required dependency
      "kyazdani42/nvim-web-devicons", -- File icons
      { "nvim-telescope/telescope-fzf-native.nvim", build = "make" }, -- Native FZF for better performance
      "nvim-telescope/telescope-live-grep-args.nvim", -- Live grep with arguments
    },
  },

  -- ============================================================================
  -- LSP (Language Server Protocol) & COMPLETION
  -- ============================================================================
  {
    "neovim/nvim-lspconfig", -- LSP configuration
    dependencies = {
      "b0o/schemastore.nvim", -- JSON schemas for better completion
      "folke/lsp-colors.nvim", -- LSP colors for non-colorscheme-integrated themes
    }
  },

  {
    "hrsh7th/nvim-cmp", -- Autocompletion engine
    dependencies = {
      "hrsh7th/cmp-buffer", -- Buffer completions
      "hrsh7th/cmp-cmdline", -- Command line completions
      "hrsh7th/cmp-nvim-lsp", -- LSP completions
      "hrsh7th/cmp-nvim-lsp-signature-help", -- Function signature help
      "hrsh7th/cmp-nvim-lua", -- Lua completions
      "jessarcher/cmp-path", -- Path completions
      "onsails/lspkind-nvim", -- VSCode-like pictograms for completion
    }
  },

  -- LSP UI enhancements
  {
    "weilbith/nvim-code-action-menu", -- Better code action menu
    cmd = "CodeActionMenu",
  },
  {
    "kosayoda/nvim-lightbulb", -- Show lightbulb for available code actions
    dependencies = "antoinemadec/FixCursorHold.nvim",
  },

  -- ============================================================================
  -- STATUS LINE & BUFFER LINE
  -- ============================================================================
  {
    "nvim-lualine/lualine.nvim", -- Status line
    dependencies = { "kyazdani42/nvim-web-devicons", optional = true }
  },
  "arkav/lualine-lsp-progress", -- LSP progress in status line
  {
    "akinsho/bufferline.nvim", -- Buffer tabs at the top
    dependencies = "kyazdani42/nvim-web-devicons"
  },

  -- ============================================================================
  -- EDITING ENHANCEMENTS
  -- ============================================================================
  { "mg979/vim-visual-multi" }, -- Multiple cursors

  -- Spell checking
  { "lewis6991/spellsitter.nvim" }, -- Treesitter-based spell checking
  { "davidmh/cspell.nvim" }, -- CSpell integration

  -- Auto-pairing brackets, quotes, etc.
  {
    "windwp/nvim-autopairs",
    config = function()
      require("nvim-autopairs").setup()
    end,
  },

  -- Tim Pope's essential plugins
  "tpope/vim-repeat", -- Repeat plugin commands with .
  "tpope/vim-surround", -- Surround text with quotes, brackets, etc.
  "tpope/vim-eunuch", -- Unix commands in Vim
  "tpope/vim-unimpaired", -- Bracket mappings for common operations
  "tpope/vim-sleuth", -- Automatic indentation detection

  -- ============================================================================
  -- GIT INTEGRATION
  -- ============================================================================
  {
    "tpope/vim-fugitive", -- Git commands in Vim
    dependencies = "tpope/vim-rhubarb", -- GitHub integration
    cmd = "G",
  },

  -- ============================================================================
  -- FILE MANAGEMENT & NAVIGATION
  -- ============================================================================
  {
    "nvim-mini/mini.nvim", -- Collection of minimal plugins
    version = "*",
  },

  { "RRethy/vim-illuminate" }, -- Highlight word under cursor

  -- ============================================================================
  -- CODE DOCUMENTATION & GENERATION
  -- ============================================================================
  {
    "danymat/neogen", -- Generate documentation comments
    config = function()
      require("neogen").setup {}
    end,
    dependencies = "nvim-treesitter/nvim-treesitter",
  },

  -- ============================================================================
  -- LINTING & FORMATTING
  -- ============================================================================
  { "nvimtools/none-ls.nvim" }, -- Null-ls successor for linting/formatting
  { "nvimtools/none-ls-extras.nvim" }, -- Extra sources for none-ls
  { "jayp0521/mason-null-ls.nvim" }, -- Mason integration for none-ls

  -- ============================================================================
  -- DEBUGGING (DAP - Debug Adapter Protocol)
  -- ============================================================================
  {
    "rcarriga/nvim-dap-ui", -- Debug UI
    dependencies = {
      "mfussenegger/nvim-dap", -- Debug Adapter Protocol client
      "mfussenegger/nvim-dap-vscode-js", -- JavaScript/TypeScript debugging
      "nvim-neotest/nvim-nio", -- Async I/O for DAP UI
    }
  },

  -- ============================================================================
  -- PACKAGE MANAGEMENT
  -- ============================================================================
  { "williamboman/mason.nvim" }, -- Package manager for LSP servers, linters, etc.
  { "williamboman/mason-lspconfig.nvim" }, -- Mason integration for LSP
  { "jay-babu/mason-nvim-dap.nvim" }, -- Mason integration for DAP

  -- ============================================================================
  -- UI ENHANCEMENTS
  -- ============================================================================
  { "lukas-reineke/indent-blankline.nvim" }, -- Indent guides

  {
    "folke/trouble.nvim", -- Pretty list for diagnostics, references, etc.
    dependencies = "kyazdani42/nvim-web-devicons",
  },

  { "kevinhwang91/nvim-bqf" }, -- Better quickfix window

  "petertriho/nvim-scrollbar", -- Scrollbar with diagnostics

  "folke/which-key.nvim", -- Show keybindings popup

  -- ============================================================================
  -- BUFFER & WINDOW MANAGEMENT
  -- ============================================================================
  "kazhala/close-buffers.nvim", -- Close buffers without closing windows

  "jessarcher/vim-heritage", -- Automatically create parent directories

  -- ============================================================================
  -- TEXT MANIPULATION
  -- ============================================================================
  {
    "sickill/vim-pasta", -- Smart pasting with proper indentation
    config = function()
      vim.g.pasta_disabled_filetypes = { "fugitive" }
    end,
  },

  -- ============================================================================
  -- TERMINAL INTEGRATION
  -- ============================================================================
  "voldikss/vim-floaterm", -- Floating terminal

  -- ============================================================================
  -- PROGRESS & NOTIFICATIONS
  -- ============================================================================
  "j-hui/fidget.nvim", -- LSP progress notifications

  "rcarriga/nvim-notify", -- Better notifications

  -- ============================================================================
  -- TESTING
  -- ============================================================================
  {
    "nvim-neotest/neotest", -- Testing framework
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-treesitter/nvim-treesitter",
      "antoinemadec/FixCursorHold.nvim",
      "haydenmeade/neotest-jest", -- Jest adapter for JavaScript/TypeScript
    }
  },

  -- ============================================================================
  -- SESSION MANAGEMENT
  -- ============================================================================
  "rmagatti/auto-session", -- Automatic session management
})
