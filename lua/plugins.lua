vim.opt.rtp:prepend("~/.config/nvim/lazy")

require("lazy").setup({
  "folke/lazy.nvim",
  
  {
    "navarasu/onedark.nvim",
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
          FloatBorder = {
            fg = '$background_light',
            bg = '$background_light'
          },
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

  {
      "nvim-treesitter/nvim-treesitter",
    run = ":TSUpdate",
    dependencies = {
      "nvim-treesitter/playground",
      "nvim-treesitter/nvim-treesitter-textobjects",
    }
  },

  {
    "nvim-telescope/telescope.nvim",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "kyazdani42/nvim-web-devicons",
      { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
      "nvim-telescope/telescope-live-grep-args.nvim",
    },
  },

  "MagicDuck/grug-far.nvim",

  {
    "neovim/nvim-lspconfig",
    dependencies = {
      "b0o/schemastore.nvim",
      "folke/lsp-colors.nvim",
    }
  },

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

  {
    "weilbith/nvim-code-action-menu",
    cmd = "CodeActionMenu",
  },
  {
    "kosayoda/nvim-lightbulb",
    dependencies = "antoinemadec/FixCursorHold.nvim",
  },

  {
    "nvim-lualine/lualine.nvim",
    dependencies = { "kyazdani42/nvim-web-devicons", optional = true }
  },
  "arkav/lualine-lsp-progress",

  { "akinsho/bufferline.nvim", dependencies = "kyazdani42/nvim-web-devicons" },

  { "mg979/vim-visual-multi" },

  { "lewis6991/spellsitter.nvim" },
  { "davidmh/cspell.nvim" },

  {
    "windwp/nvim-autopairs",
    config = function()
      require("nvim-autopairs").setup()
    end,
  },

  "tpope/vim-repeat",
  "tpope/vim-surround",
  "tpope/vim-eunuch",
  "tpope/vim-unimpaired",
  "tpope/vim-sleuth",

  {
    "tpope/vim-fugitive",
    dependencies = "tpope/vim-rhubarb",
    cmd = "G",
  },
  {
    "lewis6991/gitsigns.nvim",
    dependencies = "nvim-lua/plenary.nvim",
  },

  {
    "echasnovski/mini.nvim",
    version = "*",
    config = function()
      require("mini.files").setup({
        content = {
          filter = nil,
          prefix = nil,
          sort = nil,
        },

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

        options = {
          permanent_delete = true,
          use_as_default_explorer = true,
        },

        windows = {
          max_number = math.huge,
          preview = false,
          width_focus = 50,
          width_nofocus = 15,
          width_preview = 25,
        },
      })

      require("mini.icons").setup({
        style = 'glyph',

        default = {},
        directory = {},
        extension = {},
        file = {},
        filetype = {},
        lsp = {},
        os = {},
      })
    end,
  },

  { "RRethy/vim-illuminate" },

  {
    "danymat/neogen",
    config = function()
      require("neogen").setup {}
    end,
    dependencies = "nvim-treesitter/nvim-treesitter",
  },

  { "nvimtools/none-ls.nvim" },
  { "nvimtools/none-ls-extras.nvim" },
  { "jayp0521/mason-null-ls.nvim" },

  {
    "rcarriga/nvim-dap-ui",
    dependencies = {
      "mfussenegger/nvim-dap",
      "mfussenegger/nvim-dap-vscode-js",
      "nvim-neotest/nvim-nio",
    }
  },

  { "williamboman/mason.nvim" },
  { "williamboman/mason-lspconfig.nvim" },
  { "jay-babu/mason-nvim-dap.nvim" },

  { "lukas-reineke/indent-blankline.nvim" },

  {
    "folke/trouble.nvim",
    dependencies = "kyazdani42/nvim-web-devicons",
  },

  { "kevinhwang91/nvim-bqf" },

  "petertriho/nvim-scrollbar",

  "folke/which-key.nvim",

  "kazhala/close-buffers.nvim",

  "jessarcher/vim-heritage",

  {
    "sickill/vim-pasta",
    config = function()
      vim.g.pasta_disabled_filetypes = { "fugitive" }
    end,
  },

  "voldikss/vim-floaterm",

  "j-hui/fidget.nvim",

  {
    "nvim-neotest/neotest",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-treesitter/nvim-treesitter",
      "antoinemadec/FixCursorHold.nvim",
      "haydenmeade/neotest-jest",
    }
  },
  "rmagatti/auto-session",

  "rcarriga/nvim-notify",
})