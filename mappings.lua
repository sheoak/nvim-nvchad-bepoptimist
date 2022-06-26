-- TODO: migrate bepoptimist

local M = {}

M.disabled = {
  n = {
     ["<C-s>"] = "",
     ["<C-n>"] = "", -- nerdtree toggle
     ["gb"] = "", -- comment toggle
     ["<leader>n"] = "",
     ["<leader>e"] = "", -- focus nvim tree
     ["<leader>x"] = "", -- close buffer
     ["<leader>d"] = "", -- lsp definition
     ["<leader>pt"] = "", -- pick hidden term
     ["<leader>/"] = "", -- toggle comment
     ["<leader>gm"] = "", -- git messenger
     ["<leader>gt"] = "", -- git status
     ["<leader>b"] = "",  -- jump to current context
     ["<leader>cu"] = "", -- find media
     ["<leader>cm"] = "", -- git commit
     ["<leader>ls"] = "", -- lsp help
     ["<leader>ra"] = "", -- lsp help
     ["<leader>rn"] = "", -- lsp rename
     ["<leader>tk"] = "", -- show keys
     ["<leader>th"] = "", -- show themes
     ["<leader>fm"] = "", -- lsp format
     ["<leader>fo"] = "", -- find old
     ["<leader>fw"] = "", -- live grep
     ["<leader>ff"] = "", -- find files
     ["<leader>fa"] = "", -- find all
     ["<leader>fb"] = "", -- find buffers
     ["<leader>fh"] = "", -- find help
     ["<C-h>"] = "",
     ["<C-l>"] = "",
     ["<C-j>"] = "",
     ["<C-k>"] = "",
  },
  x = {
     ["gb"] = "", -- comment toggle
  }
}

-- mapping kept:
-- ["<leader>h"] = "", -- horizontal term
-- ["<leader>v"] = "", -- vertical term

-- BEPO

M.bepo = require "custom.mappings-bepo"

M.camelcase = {
   n = {
      ["ç"]  = {"<Plug>CamelCaseMotion_w", "CamelCase ->" },
      ["Ç"]  = {"<Plug>CamelCaseMotion_e", "CamelCase -> (inclusive)" },
      ["gç"] = {"<Plug>CamelCaseMotion_ge", "CamelCase <-" },
      ["gÇ"] = {"<Plug>CamelCaseMotion_b", "CamelCase <- (inclusive)" },
   },
   v = {
      ["ç"]  = {"<Plug>CamelCaseMotion_w", "CamelCase ->" },
      ["Ç"]  = {"<Plug>CamelCaseMotion_e", "CamelCase -> (inclusive)" },
      ["gç"] = {"<Plug>CamelCaseMotion_ge", "CamelCase <- " },
      ["gÇ"] = {"<Plug>CamelCaseMotion_b", "CamelCase <- (inclusive)" },
   },
   o = {
      -- CamelCase text-objects (ç)
      ["ç"]  = {"<Plug>CamelCaseMotion_w", "CamelCase Text-Object ->" },
      ["Ç"]  = {"<Plug>CamelCaseMotion_e", "CamelCase Text-Object -> (before)" },
      -- usefull?
      ["gç"] = {"<Plug>CamelCaseMotion_ge", "CamelCase Text-Object <-" },
      ["aç"] = {"<Plug>CamelCaseMotion_iw", "CamelCase Ambiant Text-Object" },
      ["iç"] = {"<Plug>CamelCaseMotion_ib", "CamelCase Inner Text-Object" },
      -- usefull?
      ["gÇ"] = {"<Plug>CamelCaseMotion_b", "CamelCase Text-Object Outside" },
   },
   x = {
      ["ç"]  = {"<Plug>CamelCaseMotion_w", ""},
      ["Ç"]  = {"<Plug>CamelCaseMotion_e", ""},
      ["gç"] = {"<Plug>CamelCaseMotion_ge", ""},
      ["gÇ"] = {"<Plug>CamelCaseMotion_b", ""},
      ["aç"] = {"<Plug>CamelCaseMotion_iw", ""},
      ["iç"] = {"<Plug>CamelCaseMotion_ib", ""},
   }
}

M.unimpaired = {
   n = {
      ["«"] = {"[", "", opts = { noremap = false }},
      ["»"] = {"]", "", opts = { noremap = false }},
   },
   o = {
      ["«"] = {"[", "", opts = { noremap = false }},
      ["»"] = {"]", "", opts = { noremap = false }},
   },
   x = {
      ["«"] = {"[", "", opts = { noremap = false }},
      ["»"] = {"]", "", opts = { noremap = false }},
   },
}


M.leap = {
   n = {
      ["k"] = {"<Plug>(leap-forward)", "Leap Forward"},
      ["K"] = {"<Plug>(leap-backward)", "Leap Backward"},
      ["è"] = {"<Plug>(leap-forward-x)", "Leap Forward, inclusive"},
      ["È"] = {"<Plug>(leap-backward-x)", "Leap Backward, inclusive"},
      ["gk"] = {"<Plug>(leap-cross-window)", "Leap Forward"},
   },
   v = {
      ["k"] = {"<Plug>(leap-forward)", "Leap Forward"},
      ["K"] = {"<Plug>(leap-backward)", "Leap Backward"},
      ["è"] = {"<Plug>(leap-forward-x)", "Leap Forward, inclusive"},
      ["È"] = {"<Plug>(leap-backward-x)", "Leap Backward, inclusive"},
   },
   o = {
      ["k"] = {"<Plug>(leap-forward)", "Leap Forward"},
      ["K"] = {"<Plug>(leap-backward)", "Leap Backward"},
      ["è"] = {"<Plug>(leap-forward-x)", "Leap Forward, inclusive"},
      ["È"] = {"<Plug>(leap-backward-x)", "Leap Backward, inclusive"},
   },
}

M.surround = {
   n = {
      ["du"]  = {"<Plug>Dsurround", "Surround Delete"},
      ["cu"]  = {"<Plug>Csurround", "Surround Replace"},
      ["cU"]  = {"<Plug>CSurround", "Surround Replace (inc.)"},
      ["yu"]  = {"<Plug>Ysurround", "Surround Yank"},
      ["yU"]  = {"<Plug>YSurround", "Surround Yank (inc.)"},
      ["yuu"] = {"<Plug>Yssurround", "Surround Yank ?"},
      ["yuU"] = {"<Plug>YSsurround", "Surround Yank ?"},
   },
   x = {
      ["u"] = { "<Plug>VSurround", "Add around"},
      ["U"] = { "<Plug>VgSurround", "Add around, linewise" },
   }
}

-- END BEPO

M.treesitter = {
   n = {
      ["<leader>cu"] = { "<cmd> TSCaptureUnderCursor <CR>", "  find media" },
   },
}

M.neoclip = {
   n = {
      ['""'] = {
         -- FIXME
         "<cmd> lua require('telescope').extensions.neoclip.default()<CR>",
         "Neoclip",
      },
   },
}

-- ---------------------------------------------------------------------------
-- <LEADER>… Misc. plugins commands
-- ---------------------------------------------------------------------------

-- TODO: replace with alpha and auto-session/session-lens
-- Startify <leader>s…
M.alpha = {
   n = {
      ["<leader><leader>"] = { "<cmd> Alpha<CR>", "Alpha" },
   },
}

M.startify = {
   n = {
      ["<leader>s"] = { "", "Session…"},
      ["<leader>sw"] = { "<cmd> SaveSession<CR>", "Save Session" },
      ["<leader>sl"] = { "<cmd> SearchSession<CR>", "Search Session" },
      ["<leader>sr"] = { "<cmd> RestoreSession<CR>", "Search Restore" },
      -- ["<leader>sc"] = { "<cmd> SClose<CR>", "Close Session" },
      ["<leader>sd"] = { "<cmd> DeleteSession<CR>", "Delete Session" },
   },
}

-- Packer <leader>p…
M.packer = {
   n = {
      ["<leader>p"] = { "", "Packer…" },
      ["<leader>pi"] = { "<cmd> PackerInstall<CR>", "Packer Install" },
      ["<leader>pu"] = { "<cmd> PackerUpdate<CR>", "Packer Update" },
      ["<leader>ps"] = { "<cmd> PackerSync<CR>", "Packer Sync" },
      ["<leader>pS"] = { "<cmd> PackerStatus<CR>", "Packer Status" },
      ["<leader>pc"] = { "<cmd> PackerClean<CR>", "Packer Clean" },
      ["<leader>pm"] = { "<cmd> PackerCompile<CR>", "Packer Compile" },
      ["<leader>pp"] = { "<cmd> PackerProfile<CR>", "Packer Profile" },
      -- FIXME, use telescope or fzf?
      -- ["<leader>ph"] = { "", "Packer Snapshot…" },
      -- ["<leader>phs"] = { "<cmd> PackerSnapshot ", "Packer Snapshot" },
      -- ["<leader>phd"] = { "<cmd> PackerSnapshotDelete ", "Packer Snapshot Delete" },
      -- ["<leader>phr"] = { "<cmd> PackerSnapshotRollaback ", "Packer Snapshot Rollback" },
   },
}

M.ui = {
   n = {
      ["<leader>z"] = {"<cmd> ZenMode<CR>", "ZenMode Toggle"},
   }
}

M.colors = {
   n = {
      ["<leader>cR"] = { "<cmd> ConvertColorTo rgb<CR>", "Convert to RGB"},
      ["<leader>cA"] = { "<cmd> ConvertColorTo rgba<CR>", "Convert to RGBA"},
      ["<leader>cH"] = { "<cmd> ConvertColorTo hex<CR>", "Convert to #hex"},
      ["<leader>cr"] = { "<cmd> VCoolIns r<CR>", "Color Picker RGB"},
      ["<leader>ca"] = { "<cmd> VCoolIns ra<CR>", "Color Picker RGBA"},
      ["<leader>ch"] = { "<cmd> VCoolor<CR>", "Color Picker #hex"},
   }
}

-- Pytest <leader>t…
-- TODO: migrate to Dap
M.pytest = {
   n = {
      ["<leader>tt"] = { "<cmd> Pytest function<CR>", "Test Function"},
      ["<leader>tf"] = { "<cmd> Pytest file<CR>", "Test File"},
      ["<leader>tp"] = { "<cmd> Pytest project<CR>", "Test Project"},
      ["<leader>ts"] = { "<cmd> Pytest session<CR>", "Test Session"},
      ["<leader>tx"] = { "<cmd> Pytest fails<CR>", "Show Fails Tests"},
      ["<leader>te"] = { "<cmd> Pytest error<CR>", "Show Error"},
      ["<leader>td"] = { "<cmd> Pytest file --pdb<CR>", "Pytest file with pdb"},
      ["<leader>tB"] = { "<cmd> Pytest file -s<CR>", "Pytest file to breakpoint"},
      ["<leader>tb"] = { "<cmd> opytest.set_trace()<ESC>", "Set trace"},
   }
}


-- ---------------------------------------------------------------------------
-- COMMA (files and telescope)
-- ---------------------------------------------------------------------------

M.files = {
   n = {
      [",\""] = {"<cmd> Telescope registers<CR>", "Registers"},
      [",,"] = {"<cmd> Telescope find_files<CR>", "Files"},
      [",/"] = {"<cmd> Telescope search_history<CR>", "Search History"},
      [",:"] = {"<cmd> Telescope command_history<CR>", "Commands History"},
      [",?"] = {"<cmd> Telescope help_tags<CR>", "Help"},
      [",@"] = {"<cmd> Telescope commands<CR>", "Commands"},
      -- [",~"] = {"<cmd> Telescope find_files ~<CR>", "Files"},
      [",a"] = {"<cmd> only <CR>", "Only Window"},
      [",A"] = {"<cmd> tabonly <CR>", "Only Tab"},
      [",b"] = {"<cmd> Telescope buffers<CR>", "Buffers"},
      [",c"] = {"<cmd> Telescope colorscheme<CR>", "Coloschemes"},
      [",d"] = {"<cmd> bdelete<CR>", "Delete Buffer"},
      [",D"] = {"<cmd> bdelete!<CR>", "Delete Buffer (force)"},
      [",e"] = {"<cmd> Telescope diagnostics<CR>", "Diagnostics"},
      [",f"] = {"<cmd> Telescope quickfix<CR>", "Quickfix"},
      [",g"] = {"<cmd> Telescope live_grep<CR>", "Live Grep"},
      [",h"] = {"<cmd> Telescope oldfiles<CR>", "Files History"},
      -- i
      [",j"] = {"<cmd> Telescope jumplist<CR>", "Jumps"},
      -- k
      [",l"] = {"<cmd> Telescope loclist<CR>", "Location List"},
      [",m"] = {"<cmd> Telescope keymaps<CR>", "Keymaps"},
      [",M"] = {"<cmd> Telescope marks<CR>", "Marks"},
      -- n
      [",o"] = {"<cmd> Telescope vim_options<CR>", "Vim Options"},
      [",p"] = {"<cmd> lua require'telescope'.extensions.project.project{}<CR>", "List Projects"},
      [",Q"] = {"<cmd> qa<CR>", "Quit All"},
      [",q"] = {"<cmd> q<CR>", "Quit"},
      [",r"] = {"<cmd> Telescope resume<CR>", "Resume"},
      [",s"] = {"<cmd> w<CR>", "Save"},
      [",S"] = {"<cmd> w!<CR>", "Save (force)"},
      [",t"] = {"<cmd> Telescope terms<CR>", "Hidden Terminals"},
      [",T"] = {"<cmd> Telescope<CR>", "Telescope"},
      [",u"] = {"<cmd> bunload<CR>", "Unload Buffer"},
      [",U"] = {"<cmd> bunload!<CR>", "Unload Buffer (force)"},
      [",v"] = {"<cmd> Telescope treesitter", "Treesitter"},
      [",w"] = {"<cmd> saveas<space>", "Save as"},
      [",W"] = {"<cmd> saveas!<space>", "Save as (force)"},
      [",x"] = {"<cmd> x<CR>", "Save and Quit"},
      [",X"] = {"<cmd> x!<CR>", "Save and Quit (force)"},
      [",z"] = {"<cmd> UndotreeToggle <CR>", "Undo Tree Toggle"},
      [",Z"] = {"<cmd> UndotreeFocus <CR>", "Undo Tree Focus"},
   }
}

-- ---------------------------------------------------------------------------
-- FRENCH APOSTROPHE ’ (git: fugitive, gitsigns…)
-- ---------------------------------------------------------------------------

M.git = {
   n = {
      ["’’"] =    {"<cmd> Telescope git_files<CR>", "Git Files"},
      ["’<BS>"] = {"<cmd> GitTimeLapse<CR>", "Timelapse"},
      ["’?"] =    {"<cmd> Git blame<CR>", "Git Blame"},
      -- a
      ["’b"] =    {"<cmd> Telescope git_branches<CR>", "Telescope Git Branches"},
      ["’c"] =    {"<cmd> Git commit -v -q<CR>", "Git Commit"},
      ["’d"] =    {"<cmd> Gvdiffsplit!<CR>", "Git Diff Split"},
      ["’E"] =    {"<cmd> Gedit :0<CR>", "Git Edit"},
      ["’e"] =    {"<cmd> Gedit<CR>", "Git Edit"},
      ["’fd"] =   {"<cmd> GDelete<CR>", "Git Delete"},
      ["’fm"] =   {"<cmd> GMove<CR>", "Git Move"},
      ["’H"] =    {"<cmd> Telescope git_bcommits<CR>", "Telescope Git Buffer Commits"},
      ["’h"] =    {"<cmd> Telescope git_commits<CR>", "Telescope Git Commits"},

      ["’g"] =    {"", "Github…"},
      ["’gb"] =    {"<cmd> GBrowse<CR>", "Open File on Github"},
      ["’gc"] =    {"<cmd> Octo pr checkout <CR>", "Github PR Checkout"},
      ["’gd"] =    {"<cmd> Octo pr diff <CR>", "Github PR Diff"},
      ["’gl"] =    {"<cmd> Octo pr list <CR>", "Github PR List"},
      ["’go"] =    {"<cmd> Octo pr browser <CR>", "Github PR Browse"},
      ["’gr"] =    {"<cmd> Octo pr ready <CR>", "Github PR Ready"},
      ["’gR"] =    {"<cmd> Octo pr reload <CR>", "Github PR Reload"},
      ["’gv"] =    {"<cmd> Octo pr checks <CR>", "Github PR Checks"},

      ["’i"] =    {"", "Github issues…"},
      ["’il"] =    {"<cmd> Octo issue list <CR>", "Github Issue List"},
      ["’ic"] =    {"<cmd> Octo issue create <CR>", "Github Issue Create"},
      ["’iq"] =    {"<cmd> Octo issue close <CR>", "Github Issue Close"},
      ["’io"] =    {"<cmd> Octo issue browser <CR>", "Github Issue Open"},
      ["’iR"] =    {"<cmd> Octo issue reload <CR>", "Github Issue Reload"},
      ["’is"] =    {"<cmd> Octo issue search <CR>", "Github Issue Search"},

      -- j
      -- k
      ["’l"] =    {"<cmd> Git pull<CR>", "Git Pull"},
      ["’L"] =    {"<cmd> Git! pull<CR>", "Git Pull Async"},
      ["’m"] =    {"<cmd> Git merge<CR>", "Git Merge"},
      ["’n"] =    {"<cmd> diffget //3<CR>", "Git Get Right"},
      ["’o"] =    {"<Plug>(git-messenger)", "Git Messenger"},
      ["’p"] =    {"<cmd> Git push<CR>", "Git Push"},
      ["’P"] =    {"<cmd> Git! push<CR>", "Git Push Async"},
      -- q
      ["’r"] =    {"<cmd> Git rebase<CR>", "Git Rebase"},
      ["’R"] =    {"<cmd> Git rebase master<CR>", "Git Rebase master"},
      ["’s"] =    {"<cmd> Git<CR>", "Git Status"},
      ["’S"] =    {"<cmd> Telescope git_status<CR>", "Telescope Git Status"},
      ["’t"] =    {"<cmd> diffget //2<CR>", "Git Get Left"},
      -- u
      ["’w"] =    {"<cmd> Gwrite<CR>", "Git Write"},
      -- x
      -- y
      ["’z"] =    {"<cmd> Telescope git_stash<CR>", "Telescope Git Stash"},
   }
}

-- ---------------------------------------------------------------------------
-- Misc.
-- ---------------------------------------------------------------------------
M.nvim = {
   n = {
      ["<BS>"] = {"<PageUp>", "Page Up"},
      -- ["<Space>"] = {"<PageDown>", "Page Down"},
      ["gp"] = { "`[v`]" , "Select last pasted text"},
      ["Y"] = { "y$", "Yank line"},
   },
   x = {
      ["p"] = { "pgvy", "Paste without override register" }
   },
   v = {
      ["Q"] = { "gq", "Wrap Text" },
   },
}

-- TODO: remake insert maps with C-l
-- inoremap <C-j> <C-x><C-]>
-- inoremap <C-o> <C-x><C-o>

-- Repeat on all selected lines
--  vmap . :normal .

-- trouble
-- nmap <silent> ,<space>d <cmd>call coc#rpc#request('fillDiagnostics', [bufnr('%')])<CR><cmd>Trouble loclist<CR>`

return M
