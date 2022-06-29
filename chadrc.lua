local override = require "custom.plugins.override"
local M = {}

M.ui = {
  theme = "catppuccin",
  statusline = {
    override = {
      cursor_position = function()
        local fn = vim.fn
        local current_line = fn.line "."
        local total_line = fn.line "$"
        local text = math.modf((current_line / total_line) * 100) .. tostring "%%"

        text = (current_line == 1 and "Top") or text
        text = (current_line == total_line and "Bot") or text

        return "%#St_gitIcons#" .. " " .. text .. " "
      end,
      run = function()
        local line = require "ui.statusline"
        return table.concat {
          line.mode(),
          line.fileInfo(),
          line.git(),

          "%=",
          "%=",

          line.LSP_Diagnostics(),
          -- line.LSP_status() or "",
          line.cwd(),
          line.cursor_position(),
        }
      end,
    },
  },
}

M.options = {
   user = function()
     vim.opt.number=false
     vim.opt.cursorline=true
     vim.opt.colorcolumn="120"
     vim.opt.scrolloff=6
     vim.opt.sidescrolloff=5
     vim.opt.list=true
     vim.opt.listchars="nbsp:·,trail:¤,tab:\\ \\"

     vim.opt.backupdir="$HOME/.local/share/nvim/backups,$HOME/.backups/,/tmp/"
     vim.opt.directory="$HOME/.local/share/nvim/swap//,$HOME/.backups//,/tmp//"
     vim.opt.backupskip="/tmp/*,$HOME/backups/*,*.tmp/*,*.cache/*"
     vim.opt.undodir="$HOME/.local/share/nvim/undo//,$HOME/.backups/undo//,/tmp/undo//"

     vim.opt.guifont="FuraMono Nerd Font Mono:h12"
   end,
}

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
     -- "akinsho/bufferline.nvim",
     "lukas-reineke/indent-blankline.nvim",
   },
 }

M.mappings = require "custom.mappings"
-- M.lazy = require "custom.mappings_lazy"

return M
