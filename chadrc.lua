local override = require "custom.plugins.override"
local M = {}

M.ui = {
  theme = "catppuccin",
}

-- FIXME
-- M.options = {
--    user = function()
--    end,
-- }

M.plugins = {

  -- see ui/ folder
   options = {
   },

   user = require "custom.plugins",

   override = {
     ["nvim-telescope/telescope.nvim"] = override.telescope,
     ["nvim-treesitter/nvim-treesitter"] = override.treesitter,
     ["kyazdani42/nvim-tree.lua"] = override.nvimtree,
     ["akinsho/bufferline.nvim"] = override.bufferline,
     ["lewis6991/gitsigns.nvim"] = override.gitsigns,
   },

   remove = {
     -- "folke/which-key.nvim",
   },
 }

M.mappings = require "custom.mappings"

return M
