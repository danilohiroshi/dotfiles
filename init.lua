-- Enable relative numbers
vim.o.relativenumber = true

require('globals/general')
require('globals/visuals')
require('globals/remaps')

-- Run :PackerSync
require('packer-plugins')
