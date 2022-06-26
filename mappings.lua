-- TODO: migrate bepoptimist

local M = {}

M.disabled = {
  n = {
     ["<C-s>"] = "",
     ["<C-n>"] = "", -- nerdtree toggle
     ["gb"] = "", -- comment toggle
     ["<leader>n"] = "",
     ["<leader>x"] = "", -- close buffer
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
  },
  x = {
     ["gb"] = "", -- comment toggle
  }
}

-- TODO: override instead
M.bepo = require "custom.mappings-bepo"

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

-- BEPO
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

-- Startify <leader>s…
M.startify = {
   n = {
      ["<leader><leader>"] = { "<cmd> Startify<CR>", "Startify" },
      ["<leader>s"] = { "", "Startify…"},
      ["<leader>ss"] = { "<cmd> SSave<CR>", "Save Session" },
      ["<leader>sl"] = { "<cmd> SLoad<CR>", "Load Session" },
      ["<leader>sc"] = { "<cmd> SClose<CR>", "Close Session" },
      ["<leader>sd"] = { "<cmd> SDelete<CR>", "Delete Session" },
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

M.files = {
   n = {
      [",\""] = {"<cmd> Telescope registers<CR>", "Registers"},
      [",,"] = {"<cmd> Telescope find_files<CR>", "Files"},
      [",/"] = {"<cmd> Telescope search_history<CR>", "Search History"},
      [",:"] = {"<cmd> Telescope command_history<CR>", "Commands History"},
      [",?"] = {"<cmd> Telescope help_tags<CR>", "Help"},
      [",@"] = {"<cmd> Telescope commands<CR>", "Commands"},
      -- [",~"] = {"<cmd> Telescope find_files ~<CR>", "Files"},
      [",b"] = {"<cmd> Telescope buffers<CR>", "Buffers"},
      [",c"] = {"<cmd> Telescope colorscheme<CR>", "Coloschemes"},
      [",d"] = {"<cmd> bdelete<CR>", "Delete Buffer"},
      [",D"] = {"<cmd> bdelete!<CR>", "Delete Buffer (force)"},
      [",e"] = {"<cmd> Telescope diagnostics<CR>", "Diagnostics"},
      [",o"] = {"<cmd> Telescope vim_options<CR>", "Vim Options"},
      [",f"] = {"<cmd> Telescope quickfix<CR>", "Quickfix"},
      [",g"] = {"<cmd> Telescope live_grep<CR>", "Live Grep"},
      [",h"] = {"<cmd> Telescope oldfiles<CR>", "Files History"},
      [",j"] = {"<cmd> Telescope jumplist<CR>", "Jumps"},
      [",l"] = {"<cmd> Telescope loclist<CR>", "Location List"},
      [",m"] = {"<cmd> Telescope keymaps<CR>", "Keymaps"},
      [",M"] = {"<cmd> Telescope marks<CR>", "Marks"},
      [",p"] = {"<cmd> lua require'telescope'.extensions.project.project{}<CR>", "List Projects"},
      [",Q"] = {"<cmd> qa<CR>", "Quit All"},
      [",q"] = {"<cmd> q<CR>", "Quit"},
      [",r"] = {"<cmd> Telescope resume<CR>", "Resume"},
      [",s"] = {"<cmd> w<CR>", "Save"},
      [",S"] = {"<cmd> w!<CR>", "Save (force)"},
      [",t"] = {"<cmd> Telescope<CR>", "Telescope"},
      [",u"] = {"<cmd> bunload<CR>", "Unload Buffer"},
      [",U"] = {"<cmd> bunload!<CR>", "Unload Buffer (force)"},
      [",w"] = {"<cmd> saveas<space>", "Save as"},
      [",W"] = {"<cmd> saveas!<space>", "Save as (force)"},
      [",x"] = {"<cmd> x<CR>", "Save and Quit"},
      [",X"] = {"<cmd> x!<CR>", "Save and Quit (force)"},
   }
}

M.ui = {
   n = {
      [",z"] = {"<cmd> ZenMode<CR>", "ZenMode Toggle"},
   }
}

-- FIXME: this option is not compatible with which-key
-- vim.g.fugitive_defer_to_existing_maps = 1
M.git = {
   n = {
      ["’’"] =    {"<cmd> Telescope git_files<CR>", "Git Files"},
      ["’<BS>"] = {"<cmd> GitTimeLapse<CR>", "Timelapse"},
      ["’?"] =    {"<cmd> Git blame<CR>", "Git Blame"},
      ["’b"] =    {"<cmd> Telescope git_branches<CR>", "Telescope Git Branches"},
      ["’c"] =    {"<cmd> Git commit -v -q<CR>", "Git Commit"},
      ["’d"] =    {"<cmd> Gvdiffsplit!<CR>", "Git Diff Split"},
      ["’E"] =    {"<cmd> Gedit :0<CR>", "Git Edit"},
      ["’e"] =    {"<cmd> Gedit<CR>", "Git Edit"},
      ["’fd"] =   {"<cmd> GDelete<CR>", "Git Delete"},
      ["’fm"] =   {"<cmd> GMove<CR>", "Git Move"},
      ["’g"] =    {"<cmd> GBrowse<CR>", "Open on Github"},
      ["’H"] =    {"<cmd> Telescope git_bcommits<CR>", "Telescope Git Buffer Commits"},
      ["’h"] =    {"<cmd> Telescope git_commits<CR>", "Telescope Git Commits"},
      ["’l"] =    {"<cmd> Git pull<CR>", "Git Pull"},
      ["’m"] =    {"<cmd> Git merge<CR>", "Git Merge"},
      ["’n"] =    {"<cmd> diffget //3<CR>", "Git Get Right"},
      ["’o"] =    {"<cmd> <Plug>(git-messenger)", "Git Messenger"},
      ["’p"] =    {"<cmd> Git push<CR>", "Git Push"},
      ["’r"] =    {"<cmd> Git rebase<CR>", "Git Rebase"},
      ["’R"] =    {"<cmd> Git rebase master<CR>", "Git Rebase master"},
      ["’s"] =    {"<cmd> Git<CR>", "Git Status"},
      ["’S"] =    {"<cmd> Telescope git_status<CR>", "Telescope Git Status"},
      ["’t"] =    {"<cmd> diffget //2<CR>", "Git Get Left"},
      ["’w"] =    {"<cmd> Gwrite<CR>", "Git Write"},
      ["’z"] =    {"<cmd> Telescope git_stash<CR>", "Telescope Git Stash"},
   }
}

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

-- TODO: remake insert maps with C-l
-- inoremap <C-j> <C-x><C-]>
-- inoremap <C-o> <C-x><C-o>

-- Repeat on all selected lines
--  vmap . :normal .

-- trouble
-- nmap <silent> ,<space>d <cmd>call coc#rpc#request('fillDiagnostics', [bufnr('%')])<CR><cmd>Trouble loclist<CR>`

return M
