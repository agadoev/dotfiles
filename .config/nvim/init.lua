
local set = vim.opt

set.tabstop = 2
set.softtabstop = 2
set.shiftwidth = 2
set.expandtab = true
set.smarttab = true
set.ignorecase = true

-- set leader key
-- to show cuurent leader :let mapleader
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

require('plugins/nvim-tree')
require('plugins/toggleterm')

-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]


return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use {"akinsho/toggleterm.nvim", tag = '*', config = function()
    require("toggleterm")
  end}

  use {
    'nvim-tree/nvim-tree.lua',
    requires = {
      'nvim-tree/nvim-web-devicons', -- optional, for file icons
    }
  }
end)


