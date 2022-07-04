
local old = {

  -- languages
  ["Ron89/thesaurus_query.vim"] = {},
  ["rhysd/vim-grammarous"] = {},

  -- snippets
  ["aperezdc/vim-template"] = {},
  ["honza/vim-snippets"] = {},

  -- filetype
  ["digitaltoad/vim-pug"] = {
    ft = {'vue', 'pug'}
  },

  ["posva/vim-vue"] = {
    ft={'js', 'vue'},
    setup = function()
      vim.g.vue_pre_processors = 'detect_on_enter'
    end
  },

  ["leafOfTree/vim-vue-plugin"] = {
    config = function()
      vim.g.vim_vue_plugin_config = {
        debus = 1,
        syntax = {
          template = { "html", "pug" },
          script = { "javascript", "typescript" },
          style = { "css", "scss" },
          i18n = { "json", "yaml" },
        },
      }
    end
  },


  ["euclidianAce/BetterLua.vim"] = {
    ft={'lua'}
  },

  ["willelz/teastylua.nvim"] = {
    ft={'lua'}
  },

  ["elzr/vim-json"] = {
    ft={'json'}
  },

  ["kevinoid/vim-jsonc"] = {
    ft='jsonc'
  },

  ["leafgarland/typescript-vim"] = {
    ft={'typescript'},
    setup = function()
      require("core.lazy_load").on_file_open "typescript-vim"
    end,
    configure = function()
    end
  },

  -- themes and styles
  ["junkblocker/git-time-lapse"] = {
    cmd = "GitTimelapse",
    after = "vim-fugitive",
  },

  ["jose-elias-alvarez/null-ls.nvim"] = {
    after = "nvim-lspconfig",
    config = function()
      require("custom.plugins.null-ls").setup()
    end,
  },
}

return old
