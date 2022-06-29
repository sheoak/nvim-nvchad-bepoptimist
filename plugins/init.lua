return {

  -- ["lewis6991/impatient.nvim"] = {},

  -- enable dashboard
  ["goolord/alpha-nvim"] = {
    disable = false,
  },

  -- add lazy load on require for telescope
  ["nvim-telescope/telescope.nvim"] = {
    module = "telescope",
  },

  -- ["nvim-telescope/telescope-fzf-native.nvim"] = {
  --   opt = true,
  --   run = "make",
  --   requires = {
  --     'nvim-telescope/telescope.nvim',
  --   },
  --   after = "telescope",
  -- },

  -- ["nvim-telescope/telescope-media-files.nvim"] = {
  --   opt = true--[[  ]],
  --   after = "telescope",
  --   requires = {
  --     'nvim-telescope/telescope.nvim',
  --   },
  -- },

  -- easier session management
  ["rmagatti/auto-session"] = {
    config = function()
      require('auto-session').setup {
        -- log_level = 'info',
        auto_session_suppress_dirs = {'~/', '~/Projects'}
      }
    end
  },

  -- Respect editorconfig file
  ["editorconfig/editorconfig-vim"] = {
    setup = function()
      require("core.lazy_load").on_file_open "editorconfig-vim"
    end,
  },

  -- bepo keyboard
  ["sheoak/vim-bepoptimist"] = {
    branch = "feat-lua-migration",
  },

  -- add more mappings to vim-unimpaired
  ["sheoak/vim-unimpaired-extras"] = {
    after = "vim-unimpaired",
  },

  -- load session from telescope
  ["rmagatti/session-lens"] = {
    requires = {'rmagatti/auto-session', 'nvim-telescope/telescope.nvim'},
    cmd = "SearchSession",
    config = function()
      require('session-lens').setup {
        path_display = {'shorten'},
      }
    end
  },

  -- remember cursor position
  ["farmergreg/vim-lastplace"] = {
    setup = function()
      require("core.lazy_load").on_file_open "vim-lastplace"
    end,
  },

  -- async calls
  ["tpope/vim-dispatch"] = {
    cmd = 'Dispatch',
  },

  -- increment dates like numbers with C-x and C-a
  ["tpope/vim-speeddating"] = {
    keys = {"<c-a>", "<c-x>"},
  },

  -- github cli
  ["pwntester/octo.nvim"] = {
    requires = {
      'nvim-lua/plenary.nvim',
      'nvim-telescope/telescope.nvim',
      'kyazdani42/nvim-web-devicons',
    },
    cmd = 'Octo',
    config = function ()
      local present, octo = pcall(require, "octo")
      if not present then
        return
      end
      octo.setup({})
    end
  },

  -- telescope clipboard
  ["AckslD/nvim-neoclip.lua"] = {
    keys = {'""', "y"},
    requires = {
      {"tami5/sqlite.lua", module = "sqlite"},
      {"nvim-telescope/telescope.nvim"},
    },
    config = function()
      require('telescope').load_extension('neoclip')
      require("custom.plugins.configs.neoclip")
      local utils = require 'core.utils'
      local maps = require 'custom.mapping_lazy'.neoclip
      utils.load_mappings({ maps })
    end,
  },

  -- minimalist UI mode
  ["folke/zen-mode.nvim"] = {
    opt = true,
    module = "ZenMode",
    cmd = "ZenMode",
    config = function()
      require("custom.plugins.configs.zenmode")
    end,
  },

  -- Git commands
  ["tpope/vim-fugitive"] = {
    module = "vim-fugitive",
    setup = function()
      require("core.lazy_load").on_file_open "vim-fugitive"
    end,
  },

  -- Git issues complete
  ["tpope/vim-rhubarb"] = {
      after = "vim-fugitive",
  },

  -- git info window
  ["rhysd/git-messenger.vim"] = {
    -- keys = {"’o"},
    after = "vim-fugitive",
    config = function()
      vim.g.git_messenger_always_into_popup = 1
      vim.g.git_messenger_no_default_mappings = 1
    end
  },

  -- -------------------------------------------------------------------------
  -- Navigation, text objects and operators
  -- -------------------------------------------------------------------------

  -- Navigation into surrounding element
  ["tpope/vim-surround"] = {
    keys = {"y", "d", "c", "u"},
    config = function()
      local utils = require 'core.utils'
      local maps = require 'custom.mapping_lazy'.surround
      utils.load_mappings({ maps })
    end
  },

  -- Enhance f/t navigation
  ["ggandor/leap.nvim"] = {
    keys = { "k", "K", "gk", "è", "È" },
    config = function()
      local utils = require 'core.utils'
      local maps = require 'custom.mapping_lazy'.leap
      utils.load_mappings({ maps })
    end
  },

  -- Arguments operators: seek with ], move with >, operator with i, and a,
  ["PeterRincker/vim-argumentative"] = {
    keys = {"[", "]", "<", ">", "i", "a" },
  },

  -- Enhance text-objects
  ["wellle/targets.vim"] = {
    keys = {"a", "i"},
  },

  -- Camelcase objects and operators
  ["bkad/CamelCaseMotion"] = {
    keys = { "ç", "Ç", "gç", "gÇ" },
    config = function()
      local utils = require 'core.utils'
      local maps = require 'custom.mapping_lazy'.camelcase
      utils.load_mappings({ maps })
    end
  },

  -- Indentation objects and operators
  ["michaeljsmith/vim-indent-object"] = {
    keys = {"ai", "ii", "aI"},
  },

  -- Repeat more actions with ., works with many plugins
  ["tpope/vim-repeat"] = {
    keys = { "." },
  },

  -- More mappings for options
  -- TODO: import only usefull mappings, slow
  ["tpope/vim-unimpaired"] = {
    keys = {"[", "]"},
  },

  -- Better undo/redo management
  ["mbbill/undotree"] = {
    cmd = "UndotreeToggle",
  },

  -- ---------------------------------------------------------------------------
  -- Filetypes
  -- ---------------------------------------------------------------------------

  ["PotatoesMaster/i3-vim-syntax"] = {
    ft={"i3config"},
  },

  -- ---------------------------------------------------------------------------
  -- Tools
  -- ---------------------------------------------------------------------------

  -- Convert RGB, RGBA, hex colors
  ["amadeus/vim-convert-color-to"] = {
    cmd = "ConvertColorTo",
  },

  -- Color pickers
  ["KabbAmine/vCoolor.vim"] = {
    cmd = {"VCoolIns", "VCoolor"},
    config = function()
      vim.g.vcoolor_disable_mappings = 1
    end,
  },

}
