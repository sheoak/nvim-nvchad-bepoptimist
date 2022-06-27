local override = require "custom.plugins.override"
local M = {}

M.ui = {
  -- theme = "catppuccin",
  theme = "gruvchad",
}

-- FIXME
-- M.options = {
--    user = function()
--    end,
-- }

M.plugins = {

  -- see ui/ folder
  options = {
     lspconfig = {
       setup_lspconf = "custom.plugins.lspconfig",
    },
  },

   user = require "custom.plugins",

  override = {
    ["wbthomason/packer.nvim"] = override.packer,
    ["windwp/nvim-autopairs"] = override.autopairs,
    ["nvim-telescope/telescope.nvim"] = override.telescope,
    ["nvim-treesitter/nvim-treesitter"] = override.treesitter,
    ["kyazdani42/nvim-tree.lua"] = override.nvimtree,
    ["akinsho/bufferline.nvim"] = override.bufferline,
    ["lewis6991/gitsigns.nvim"] = override.gitsigns,
  },

   remove = {
     -- "folke/which-key.nvim",
     -- "NvChad/base46",
   },
 }

M.mappings = require "custom.mappings"

return M
