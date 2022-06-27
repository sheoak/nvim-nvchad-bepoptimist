return {

  -- early load
  ["goolord/alpha-nvim"] = {
    disable = true,
  },

  ["rmagatti/auto-session"] = {
    config = function()
      require('auto-session').setup {
        -- log_level = 'info',
        auto_session_suppress_dirs = {'~/', '~/Projects'}
      }
    end
  },

  -- personnal
  ["sheoak/vim-sheoak-base-settings"] = {},
  ["sheoak/vim-bepoptimist"] = {
    branch = "feat-lua-migration",
  },

  ["sheoak/vim-unimpaired-extras"] = {
    after = "vim-unimpaired",
  },

  ["rmagatti/session-lens"] = {
    requires = {'rmagatti/auto-session', 'nvim-telescope/telescope.nvim'},
    cmd = "SearchSession",
    config = function()
      require('session-lens').setup {
        path_display = {'shorten'},
      }
    end
  },

  ["nvim-telescope/telescope.nvim"] = {
    module = "telescope",
  },

  -- ["nvim-telescope/telescope-media-files.nvim"] = {
  --     opt = true,
  --     requires = {
  --         'nvim-telescope/telescope.nvim',
  --     },
  --     setup = function()
  --         require("core.lazy_load").on_file_open "telescope-media-files.nvim"
  --     end,
  -- },

  -- ["nvim-telescope/telescope-fzf-native.nvim"] = {
  --     opt = true,
  --     run = "make",
  --     requires = {
  --         'nvim-telescope/telescope.nvim',
  --     },
  --     setup = function()
  --         require("core.lazy_load").on_file_open "telescope-fzf-native.nvim"
  --     end,
  -- },

  -- TODO: lazy ?
  ["farmergreg/vim-lastplace"] = {
    setup = function()
      require("core.lazy_load").on_file_open "vim-lastplace"
    end,
  },

  ["tpope/vim-dispatch"] = {
      cmd = 'Dispatch',
      setup = function()
          require("core.lazy_load").on_file_open "vim-dispatch"
      end,
  },

  -- ["nvim-telescope/telescope-project.nvim"] = {
  --     cmd = "Telescope",
  -- },

  ["jose-elias-alvarez/null-ls.nvim"] = {
    after = "nvim-lspconfig",
    config = function()
      require("custom.plugins.null-ls").setup()
    end,
  },

  ["pwntester/octo.nvim"] = {
    requires = {
      'nvim-lua/plenary.nvim',
      'nvim-telescope/telescope.nvim',
      'kyazdani42/nvim-web-devicons',
    },
    cmd = 'Octo',
    setup = function()
      require("core.lazy_load").on_file_open "octo.nvim"
    end,
    config = function ()
      local present, octo = pcall(require, "octo")

      if not present then
        return
      end

      octo.setup({})
    end
  },

  ["stevearc/dressing.nvim"] = {
    after = "telescope",
  },

  ["AckslD/nvim-neoclip.lua"] = {
    opt = true,
    requires = {
      {"tami5/sqlite.lua", module = "sqlite"},
      {"ibhagwan/fzf-lua"},
      {"nvim-telescope/telescope.nvim"},
    },
    setup = function()
      require("core.lazy_load").on_file_open "nvim-neoclip.lua"
    end,
    config = function()
      require("custom.plugins.configs.neoclip")
    end,
  },

  ["folke/zen-mode.nvim"] = {
    opt = true,
    cmd = "ZenMode",
    setup = function()
      require("core.lazy_load").on_file_open "zen-mode.nvim"
    end,
    config = function()
      require("custom.plugins.configs.zenmode")
    end,
  },

  ["junegunn/limelight.vim"] = {
    after = "zen-mode.nvim",
    opt = true,
  },

  -- git
  -- FIXME: lazy load break with gitsigns
  ["tpope/vim-fugitive"] = {},

   -- ["tpope/vim-rhubarb"] = {
   --     after = "vim-fugitive",
   -- },

   -- ["junkblocker/git-time-lapse"] = {
   --     cmd = "GitTimelapse",
   --     after = "vim-fugitive",
   -- },

   -- TODO: on command load
   ["rhysd/git-messenger.vim"] = {
     after = "vim-fugitive",
     config = function()
       vim.g.git_messenger_always_into_popup = 1
       vim.g.git_messenger_no_default_mappings = 1
     end
   },

   -- navigation
   ["tpope/vim-surround"] = {
     setup = function()
       require("core.lazy_load").on_file_open "vim-surround"
     end,
     config = function()
       vim.g.surround_no_mappings = 1
     end,
   },

   ["ggandor/leap.nvim"] = {
     setup = function()
       require("core.lazy_load").on_file_open "leap.nvim"
     end,
   },

   -- ["wellle/targets.vim"] = {
   --     setup = function()
   --         require("core.lazy_load").on_file_open "targets.vim"
   --     end,
   -- },

   ["bkad/CamelCaseMotion"] = {
     setup = function()
       require("core.lazy_load").on_file_open "CamelCaseMotion"
     end,
   },

   -- ["michaeljsmith/vim-indent-object"] = {
   --     setup = function()
   --         require("core.lazy_load").on_file_open "vim-indent-object"
   --     end,
   -- },

   ["PeterRincker/vim-argumentative"] = {
       setup = function()
           require("core.lazy_load").on_file_open "vim-argumentative"
       end,
   },

   -- mappings and settings
   ["tpope/vim-repeat"] = {
     -- keys = ".",
     setup = function()
       require("core.lazy_load").on_file_open "vim-repeat"
     end,
   },

   -- ["tpope/vim-speeddating"] = {
   --     setup = function()
   --         require("core.lazy_load").on_file_open "vim-speeddating"
   --     end,
   -- },

   -- slows down
   ["tpope/vim-unimpaired"] = {
     setup = function()
       require("core.lazy_load").on_file_open "vim-unimpaired"
     end,
   },

   -- ["tpope/vim-sleuth"] = {
   --     setup = function()
   --         require("core.lazy_load").on_file_open "vim-sleuth"
   --     end,
   -- },

   -- formatting
   -- ["junegunn/vim-easy-align"] = {
   --     setup = function()
   --         require("core.lazy_load").on_file_open "vim-easy-align"
   --     end,
   -- },

   -- ["dhruvasagar/vim-table-mode"] = {},

   -- languages
   -- ["Ron89/thesaurus_query.vim"] = {},
   -- ["kana/vim-operator-user"] = {},
   -- ["rhysd/vim-grammarous"] = {},

   -- testing
   -- ["sakhnik/nvim-gdb"] = {},
   -- ["alfredodeza/pytest.vim"] = {},

   -- snippets
   -- ["aperezdc/vim-template"] = {},
   -- ["honza/vim-snippets"] = {},

   -- TODO: replace by telescope?
   -- ["ibhagwan/fzf-lua"] = {
   --     requires = { 'kyazdani42/nvim-web-devicons' },
   --     config = function()
   --         require "custom.plugins.configs.fzf-lua"
   --     end,
   -- },
--   ["editorconfig/editorconfig-vim"] = {
--       setup = function()
--           require("core.lazy_load").on_file_open "editorconfig-vim"
--       end,
--   },
--
--   -- ["neoclide/coc.nvim"] = {
--   --     branch = 'release',
--   --     config = function()
--   --         vim.g.coc_node_path = "/usr/bin/node"
--   --     end
--   -- },
--
    ["clojure-vim/async-clj-omni"] = {
        setup = function()
            require("core.lazy_load").on_file_open "async-clj-omni"
        end,
    },

    ["mbbill/undotree"] = {
      cmd = "UndotreeToggle",
      setup = function()
        require("core.lazy_load").on_file_open "undotree"
      end,
    },
--
--   -- ["KabbAmine/vCoolor.vim"] = {
--   --     setup = function()
--   --         require("core.lazy_load").on_file_open "vCoolor.vim"
--   --     end,
--   --     config = function()
--   --         print('conifg vcoolor')
--   --         vim.g.vcoolor_disable_mappings = 1
--   --     end
--   -- },
--

   --  ["amadeus/vim-convert-color-to"] = {
   --      setup = function()
   --          require("core.lazy_load").on_file_open "vim-convert-color-to"
   --      end,
   -- },

--
--   -- filetype
--   -- ["digitaltoad/vim-pug"] = {
--   --     ft = {'vue', 'pug'}
--   -- },
--

    -- ["posva/vim-vue"] = {
    --     ft={'js', 'vue'},
    --     setup = function()
    --         require("core.lazy_load").on_file_open "vim-vue"
    --     end,
    -- },

--
--   ["euclidianAce/BetterLua.vim"] = {
--       ft={'lua'}
--   },

   -- ["jelera/vim-javascript-syntax"] = {
   --     ft={'javascript'}
   -- },

   -- ["elzr/vim-json"] = {
   --     ft={'json'}
   -- },

   -- ["kevinoid/vim-jsonc"] = {
   --     ft='jsonc'
   -- },

   -- ["leafgarland/typescript-vim"] = {
   --     ft={'typescript'},
   --     setup = function()
   --         require("core.lazy_load").on_file_open "typescript-vim"
   --     end,
   --     configure = function()
   --     end
   -- },

   -- ["PotatoesMaster/i3-vim-syntax"] = {
   --     ft={'i3'},
   --     setup = function()
   --         require("core.lazy_load").on_file_open "i3-vim-syntax"
   --     end,
   -- },

   -- ["iamcco/markdown-preview.nvim"] = {
   --     ft={'markdown'},
   -- },

   -- ["jeetsukumaran/vim-pythonsense"] = {
   --     ft = {'python'},
   --     setup = function()
   --         require("core.lazy_load").on_file_open "vim-pythonsense"
   --     end,
   -- },

   -- themes and styles
   -- ["cormacrelf/vim-colors-github"] = {},
   -- ["iCyMind/NeoSolarized"] = {},
}

       -- ["ludovicchabant/vim-gutentags"] = {
           --    setup = function()
               --       require("core.lazy_load").on_file_open "vim-gutentags"
               --    end,
               --    config = function()
                   --       vim.g.gutentags_ctags_tagfile = ".ctags"
                   --       vim.g.gutentags_exclude_project_root={'/etc'}
                   --       vim.g.gutentags_add_default_project_roots = 0
                   --       vim.g.gutentags_project_root = {'.git', '.svn', '.project', 'package.json'}
                   --       vim.g.gutentags_file_list_command = {
                       --          ["markers"] = {
                           --             [".git"] = 'git ls-files'
                           --          }
                           --       }
                           --       vim.g.gutentags_exclude_filetypes = {'gitcommit', 'gitconfig', 'gitrebase', 'gitsendemail', 'git'}

                           --       -- local cache_dir = expand('~/.local/share/gutentags/cache')
                           --       -- if filereadable(cache_dir)
                           --       --    vim.g.gutentags_cache_dir = cache_dir
                           --       -- endif

                           --       vim.g.gutentags_generate_on_new = 1
                           --       vim.g.gutentags_generate_on_missing = 1
                           --       vim.g.gutentags_generate_on_write = 1
                           --       vim.g.gutentags_generate_on_empty_buffer = 0
                           --       vim.g.gutentags_ctags_extra_args = {'--tag-relative=yes', '--fields=+ailmnS'}
                           --       vim.g.gutentags_ctags_exclude = {
                               --          '*.git', '*.svn', '*.hg',
                               --          'cache', 'build', 'dist', 'bin', 'node_modules', 'bower_components',
                               --          '*-lock.json',  '*.lock',
                               --          '*.min.*',
                               --          '*.bak',
                               --          '*.zip',
                               --          '*.pyc',
                               --          '*.class',
                               --          '*.sln',
                               --          '*.csproj', '*.csproj.user',
                               --          '*.tmp',
                               --          '*.cache',
                               --          '*.vscode',
                               --          '*.pdb',
                               --          '*.exe', '*.dll', '*.bin',
                               --          '*.mp3', '*.ogg', '*.flac',
                               --          '*.swp', '*.swo',
                               --          '.DS_Store', '*.plist',
                               --          '*.bmp', '*.gif', '*.ico', '*.jpg', '*.png', '*.svg',
                               --          '*.rar', '*.zip', '*.tar', '*.tar.gz', '*.tar.xz', '*.tar.bz2',
                               --          '*.pdf', '*.doc', '*.docx', '*.ppt', '*.pptx', '*.xls',
                               --       }
                               --    end,
                               -- },
