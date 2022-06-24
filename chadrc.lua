
local override = require "custom.plugins.override"
local M = {}

M.ui = {
   theme = "gruvchad",
}

print('done')

M.plugins = {
   user = require "custom.plugins",
   override = {
      ["nvim-treesitter/nvim-treesitter"] = override.treesitter,
      ["kyazdani42/nvim-tree.lua"] = override.nvimtree,
   },
   remove = {
      -- "folke/which-key.nvim",
   },
}
print('error?')

return M
