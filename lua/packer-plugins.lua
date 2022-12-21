return require('packer').startup(function()
  -- https://github.com/wbthomason/packer.nvim#quickstart
  -- packer can manage itself
  use 'wbthomason/packer.nvim'

  -- One Dark color scheme
  use({
    'navarasu/onedark.nvim',
    config = function()
      vim.cmd('colorscheme onedark')

      -- Hide the characters in FloatBorder
      vim.api.nvim_set_hl(0, 'FloatBorder', {
        fg = vim.api.nvim_get_hl_by_name('NormalFloat', true).background,
        bg = vim.api.nvim_get_hl_by_name('NormalFloat', true).background,
      })

      -- Make the StatusLineNonText background the same as StatusLine
      vim.api.nvim_set_hl(0, 'StatusLineNonText', {
        fg = vim.api.nvim_get_hl_by_name('NonText', true).foreground,
        bg = vim.api.nvim_get_hl_by_name('StatusLine', true).background,
      })

      -- Hide the characters in CursorLineBg
      vim.api.nvim_set_hl(0, 'CursorLineBg', {
        fg = vim.api.nvim_get_hl_by_name('CursorLine', true).background,
        bg = vim.api.nvim_get_hl_by_name('CursorLine', true).background,
      })

      vim.api.nvim_set_hl(0, 'NvimTreeIndentMarker', { fg = '#30323E' })
      vim.api.nvim_set_hl(0, 'IndentBlanklineChar', { fg = '#2F313C' })
    end,
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
	use({ "neovim/nvim-lspconfig"}) -- enable LSP

  -- Auto-completion
  use({ "hrsh7th/nvim-cmp"})
  use({ "hrsh7th/cmp-nvim-lsp"})

  -- Status line
  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  }

  -- Buffer line
  use {'akinsho/bufferline.nvim', tag = "v2.*", requires = 'kyazdani42/nvim-web-devicons'}

  -- Multicursor
  use {'terryma/vim-multiple-cursors'}

  -- Surround
  use{'kylechui/nvim-surround'}

  -- Spell check
  use {'lewis6991/spellsitter.nvim'}

  -- Git diff view
  use { 'sindrets/diffview.nvim', requires = 'nvim-lua/plenary.nvim' }

  -- Terminal
  use "numToStr/FTerm.nvim"
end)
