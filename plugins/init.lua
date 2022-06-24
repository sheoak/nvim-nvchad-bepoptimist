print('others start')
local others = require "custom.plugin.custom.others"

print('others ok')

return {

   -- personnal
  ["sheoak/vim-sheoak-base-settings"] = {},
  ["sheoak/vim-bepoptimist"] = {},
  ["sheoak/vim-unimpaired-extras"] = {},

   -- Plug 'folke/trouble.nvim'               " enhance location list for diagnostics
   ["AckslD/nvim-neoclip.lua"] = {
      config = function()
         -- return others.neoclip
      end
   },
   ["folke/zen-mode.nvim"] = {
      config = function()
         -- return others.zenmode
      end
   },
   ["junegunn/limelight.vim"] = {},
   -- Plug 'norcalli/nvim-colorizer.lua'      " colorized color codes

  -- git
  ["tpope/vim-fugitive"] = {},
  -- todo: fugitive deps
  ["tpope/vim-rhubarb"] = {},
  ["junkblocker/git-time-lapse"] = {},
  ["rhysd/git-messenger.vim"] = {},

  -- navigation
  ["tpope/vim-surround"] = {},
  ["justinmk/vim-sneak"] = {},
  ["wellle/targets.vim"] = {},
  ["bkad/CamelCaseMotion"] = {},
  ["michaeljsmith/vim-indent-object"] = {},
  ["jeetsukumaran/vim-pythonsense"] = {},
  ["PeterRincker/vim-argumentative"] = {},

   -- file explorers
   ["tpope/vim-vinegar"] = {},
   ["rbgrouleff/bclose.vim"] = {},
   ["francoiscabrol/ranger.vim"] = {},

   -- mappings and settings
   ["tpope/vim-repeat"] = {},
   ["tpope/vim-speeddating"] = {},
   ["tpope/vim-commentary"] = {},
   ["tpope/vim-unimpaired"] = {},
   ["tpope/vim-sleuth"] = {},

   -- formatting
   ["junegunn/vim-easy-align"] = {},
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

   -- ide
   ["mhinz/vim-startify"] = {},
   ["ibhagwan/fzf-lua"] = {
      requires = { 'kyazdani42/nvim-web-devicons' },
      config = function()
         require "custom.plugins.configs.fzf-lua"
      end,
   },
   ["ludovicchabant/vim-gutentags"] = {},
   ["airblade/vim-rooter"] = {},
   -- ["diepm/vim-rest-console"] = {},
   ["editorconfig/editorconfig-vim"] = {},
   ["neoclide/coc.nvim"] = { branch = 'release'},
   ["clojure-vim/async-clj-omni"] = {},
   -- ["fboender/bexec"] = {},
   -- ["osyo-manga/vim-over"] = {},
   ["sjl/gundo.vim"] = {},
   ["MattesGroeger/vim-bookmarks"] = {},

   -- Web
   ["alvan/vim-closetag"] = {ft = {'html','css', 'scss', 'sass'}},
   ["tmhedberg/matchit"] = {ft = {'html', 'xml'}},
   ["digitaltoad/vim-pug"] = {ft = {'vue', 'pug'}},
   ["posva/vim-vue"] = {ft={'js', 'vue'}},
   ["KabbAmine/vCoolor.vim"] = {},
   ["amadeus/vim-convert-color-to"] = {},

   ["csscomb/vim-csscomb"] = {},

   -- filetype
   ["euclidianAce/BetterLua.vim"] = {ft={'lua'}},
   ["jelera/vim-javascript-syntax"] = {ft={'javascript'}},
   ["elzr/vim-json"] = {ft={'json'}},
   ["kevinoid/vim-jsonc"] = {ft='jsonc'},
   ["leafgarland/typescript-vim"] = {ft={'typescript'}},
   ["PotatoesMaster/i3-vim-syntax"] = {ft={'i3'}},
   ["neomutt/neomutt.vim"] = {},
   ["iamcco/markdown-preview.nvim"] = {ft={'markdown'}},

   -- vim plugins
   -- ["tpope/vim-scriptease"] = {},

   -- themes and styles
   ["cormacrelf/vim-colors-github"] = {},
   ["iCyMind/NeoSolarized"] = {},
   -- ["nvim-lualine/lualine.nvim"] = {},
}
